import React, { useState } from 'react';
import '/Users/pujitakalinadhabhotla/Desktop/react-app/src/Home.css';
import Logo from "/Users/pujitakalinadhabhotla/Desktop/react-app/src/components/Logo";
import { SearchBar } from '../components/SearchBar';
import { SearchResultsList } from '../components/SearchResultsList';


// Define the type for the results array
type Result = {
  id: number;
  name: string;
};

const Home: React.FC = () => {
  // Typed results as an array of objects with id and name
  const [results, setResults] = useState<Result[]>([]);

  return (
    <div className="home-container">
      <div className="home-top-border"></div>
      <h1 className="logo-text">Rate The Label</h1>
      <Logo />
      <div className="search-bar-container">
        <SearchBar setResults={setResults} />
        <SearchResultsList results={results} />
      </div>
    </div>
  );
};

export default Home;