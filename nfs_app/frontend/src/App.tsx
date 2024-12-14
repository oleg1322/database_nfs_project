// frontend/src/App.tsx
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Sidebar from './components/Sidebar.tsx';
import Games from './components/Games.tsx';
import CarList from './components/CarList.tsx';
import SoundtrackList from './components/SoundtrackList.tsx';
import SystemRequirementsList from './components/SystemRequirementsList.tsx';
import './App.css';

const App: React.FC = () => {
  return (
    <Router>
      <div className="App">
        <Sidebar />
        <div className="content">
          <Routes>
            <Route path="/games" element={<Games />} />
            <Route path="/cars" element={<CarList />} />
            <Route path="/soundtracks" element={<SoundtrackList />} />
            <Route path="/system-requirements" element={<SystemRequirementsList />} />
          </Routes>
        </div>
      </div>
    </Router>
  );
};

export default App;
