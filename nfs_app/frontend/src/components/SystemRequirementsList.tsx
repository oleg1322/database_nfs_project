import React, { useEffect, useState } from 'react';
import axios from 'axios';

interface SystemRequirements {
  game_id: number;
  min_os: string;
  min_processor: string;
  min_ram: string;
  min_gpu: string;
  min_directx: string;
  min_disk_space: string;
  rec_os: string;
  rec_processor: string;
  rec_ram: string;
  rec_gpu: string;
  rec_directx: string;
  rec_disk_space: string;
}

interface GamePart {
  id: number;
  game_name: string;
}

const SystemRequirementsList: React.FC = () => {
  const [systemRequirements, setSystemRequirements] = useState<SystemRequirements | null>(null);
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

  const fetchSystemRequirements = async () => {
    try {
      const response = await axios.get(`http://localhost:5000/system-requirements/game-part?gamePartId=${selectedGamePart}`);
      setSystemRequirements(response.data);
    } catch (error) {
      console.error('Error fetching system requirements:', error);
    }
  };

  return (
    <div>
      <h2>Системные требования</h2>
      <select value={selectedGamePart || ''} onChange={(e) => setSelectedGamePart(Number(e.target.value))}>
        <option value="">Выбор части игры</option>
        {gameParts.map(gamePart => (
          <option key={gamePart.id} value={gamePart.id}>{gamePart.game_name}</option>
        ))}
      </select>
      <button onClick={fetchSystemRequirements}>Просмотр системных требований</button>
      {systemRequirements && (
        <div>
          <h3>Минимальные</h3>
          <p>OS: {systemRequirements.min_os}</p>
          <p>Processor: {systemRequirements.min_processor}</p>
          <p>RAM: {systemRequirements.min_ram}</p>
          <p>GPU: {systemRequirements.min_gpu}</p>
          <p>DirectX: {systemRequirements.min_directx}</p>
          <p>Disk Space: {systemRequirements.min_disk_space}</p>
          <h3>Рекомендуемые</h3>
          <p>OS: {systemRequirements.rec_os}</p>
          <p>Processor: {systemRequirements.rec_processor}</p>
          <p>RAM: {systemRequirements.rec_ram}</p>
          <p>GPU: {systemRequirements.rec_gpu}</p>
          <p>DirectX: {systemRequirements.rec_directx}</p>
          <p>Disk Space: {systemRequirements.rec_disk_space}</p>
        </div>
      )}
    </div>
  );
};

export default SystemRequirementsList;
