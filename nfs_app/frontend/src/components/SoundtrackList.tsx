import React, { useEffect, useState } from 'react';
import axios from 'axios';

interface Soundtrack {
  game_id: number;
  track_name: string;
  author: string;
  youtube_link: string;
}

interface GamePart {
  id: number;
  game_name: string;
}

const SoundtrackList: React.FC = () => {
  const [soundtracks, setSoundtracks] = useState<Soundtrack[]>([]);
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

  const fetchSoundtracks = async () => {
    try {
      const response = await axios.get(`http://localhost:5000/soundtracks/game-part?gamePartId=${selectedGamePart}`);
      setSoundtracks(response.data);
    } catch (error) {
      console.error('Error fetching soundtracks:', error);
    }
  };

  return (
    <div>
      <h2>Саундтреки</h2>
      <select value={selectedGamePart || ''} onChange={(e) => setSelectedGamePart(Number(e.target.value))}>
        <option value="">Выбор части игры</option>
        {gameParts.map(gamePart => (
          <option key={gamePart.id} value={gamePart.id}>{gamePart.game_name}</option>
        ))}
      </select>
      <button onClick={fetchSoundtracks}>найти саундтреки</button>
      <ul>
        {soundtracks.map(soundtrack => (
          <li key={soundtrack.track_name}>{soundtrack.track_name} by {soundtrack.author}</li>
        ))}
      </ul>
    </div>
  );
};

export default SoundtrackList;
