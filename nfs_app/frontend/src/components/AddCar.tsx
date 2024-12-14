// frontend/src/components/AddCar.tsx
import React, { useState } from 'react';
import axios from 'axios';

const AddCar: React.FC = () => {
  const [carName, setCarName] = useState('');
  const [carModel, setCarModel] = useState('');
  const [maxSpeed, setMaxSpeed] = useState(0);
  const [acceleration, setAcceleration] = useState(0);
  const [mass, setMass] = useState(0);
  const [engineVolume, setEngineVolume] = useState(0);
  const [horsepower, setHorsepower] = useState(0);
  const [fuelConsumption, setFuelConsumption] = useState(0);
  const [country, setCountry] = useState('');
  const [price, setPrice] = useState(0);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      const newCar = {
        car_name: carName,
        car_model: carModel,
        max_speed: maxSpeed,
        acceleration: acceleration,
        mass: mass,
        engine_volume: engineVolume,
        horsepower: horsepower,
        fuel_consumption: fuelConsumption,
        country: country,
        price: price,
      };
      await axios.post('http://localhost:5000/cars', newCar);
      alert('Car added successfully!');
    } catch (error) {
      console.error('Error adding car:', error);
    }
  };

  return (
    <div>
      <h2>Добавление новой машины</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label>марка:</label>
          <input type="text" value={carName} onChange={(e) => setCarName(e.target.value)} required />
        </div>
        <div>
          <label>модель:</label>
          <input type="text" value={carModel} onChange={(e) => setCarModel(e.target.value)} required />
        </div>
        <div>
          <label>максимальная скорость:</label>
          <input type="number" value={maxSpeed} onChange={(e) => setMaxSpeed(Number(e.target.value))} required />
        </div>
        <div>
          <label>ускорение до 100:</label>
          <input type="number" step="0.01" value={acceleration} onChange={(e) => setAcceleration(Number(e.target.value))} required />
        </div>
        <div>
          <label>масса:</label>
          <input type="number" step="0.01" value={mass} onChange={(e) => setMass(Number(e.target.value))} required />
        </div>
        <div>
          <label>объем двигателя:</label>
          <input type="number" step="0.01" value={engineVolume} onChange={(e) => setEngineVolume(Number(e.target.value))} required />
        </div>
        <div>
          <label>мощность двигателя:</label>
          <input type="number" value={horsepower} onChange={(e) => setHorsepower(Number(e.target.value))} required />
        </div>
        <div>
          <label>расход топлива:</label>
          <input type="number" step="0.01" value={fuelConsumption} onChange={(e) => setFuelConsumption(Number(e.target.value))} required />
        </div>
        <div>
          <label>страна:</label>
          <input type="text" value={country} onChange={(e) => setCountry(e.target.value)} required />
        </div>
        <div>
          <label>цена в рублях:</label>
          <input type="number" step="0.01" value={price} onChange={(e) => setPrice(Number(e.target.value))} required />
        </div>
        <button type="submit">Добавить</button>
      </form>
    </div>
  );
};

export default AddCar;
