import React from 'react';
import '/Users/pujitakalinadhabhotla/Desktop/react-app/src/Home.css';
import Logo from "/Users/pujitakalinadhabhotla/Desktop/react-app/src/components/Logo";
import { SearchBar } from '../components/SearchBar';

const Home: React.FC = () => {
    return (
      <div className="home-container">
        <div className="home-top-border"></div>
        <h1 className="logo-text">Rate The Label</h1>
        <Logo />
        <div className="search-bar-container">
          <SearchBar/>
          <div>SearchResults</div>
        </div>
      </div>
    );
};

export default Home;
