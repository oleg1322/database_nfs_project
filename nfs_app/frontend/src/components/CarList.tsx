import React, { useEffect, useState } from 'react';
import axios from 'axios';
//import AddCar from './AddCar.tsx';

interface Car {
  id: number;
  car_name: string;
  car_model: string;
  max_speed: number;
  acceleration: number;
  mass: number;
  engine_volume: number;
  horsepower: number;
  fuel_consumption: number;
  country: string;
  price: number;
}

interface GamePart {
  id: number;
  game_name: string;
}

const CarList: React.FC = () => {
  const [cars, setCars] = useState<Car[]>([]);
  const [gameParts, setGameParts] = useState<GamePart[]>([]);
  const [selectedGamePart, setSelectedGamePart] = useState<number | null>(null);

  useEffect(() => {
    const fetchGameParts = async () => {
      try {
        const response = await axios.get('http://localhost:5000/game-parts');
        setGameParts(response.data);
      } catch (error) {
        console.error('Error fetching game parts:', error);
      }
    };

    fetchGameParts();
  }, []);

  const fetchCars = async () => {
    try {
      const response = await axios.get(`http://localhost:5000/cars`);
      setCars(response.data);
    } catch (error) {
      console.error('Error fetching cars:', error);
    }
  };

  const fetchCarsForPart = async () => {
    try {
      const response = await axios.get(`http://localhost:5000/cars/game-part?gamePartId=${selectedGamePart}`);
      setCars(response.data);
    } catch (error) {
      console.error('Error fetching cars:', error);
    }
  };

  return (
    <div>
      <div>
        <h2>Список машин</h2>
        <select value={selectedGamePart || ''} onChange={(e) => setSelectedGamePart(Number(e.target.value))}>
          <option value="">Выбрать часть</option>
          {gameParts.map(gamePart => (
            <option key={gamePart.id} value={gamePart.id}>{gamePart.game_name}</option>
          ))}
        </select>
        <button onClick={fetchCarsForPart}>Показать для этой части</button>
        <button onClick={fetchCars}>Показать все</button>
        <ul>
          {cars.map(car => (
            <li key={car.id}>{car.car_name} {car.car_model}</li>
          ))}
        </ul>
      </div>
      {/* <div>
        <AddCar></AddCar>
      </div> */}
    </div>
  );
};

export default CarList;
