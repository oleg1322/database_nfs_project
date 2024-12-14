import React, { useEffect, useState } from 'react';
import axios from 'axios';

interface GamePart {
  id: number;
  game_name: string;
}

const Games: React.FC = () => {
  const [gameParts, setGameParts] = useState<GamePart[]>([]);

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

  return (
    <div>
      <h2>Все игры серии Need for Speed</h2>
      <ul>
        {gameParts.map(gamePart => (
          <li key={gamePart.id}>{gamePart.game_name}</li>
        ))}
      </ul>
    </div>
  );
};

export default Games;
