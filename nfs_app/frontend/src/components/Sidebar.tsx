import React from 'react';
import { Link } from 'react-router-dom';

const Sidebar: React.FC = () => {
  return (
    <div className="sidebar">
      <ul>
        <li><Link to="/games">Игры</Link></li>
        <li><Link to="/cars">Машины</Link></li>
        <li><Link to="/soundtracks">Саундтреки</Link></li>
        <li><Link to="/system-requirements">Системные требования</Link></li>
      </ul>
    </div>
  );
};

export default Sidebar;
