import React, {useState} from "react";

import {FaSearch} from "react-icons/fa"
import "/Users/pujitakalinadhabhotla/Desktop/react-app/src/SearchBar.css";
// Define the type for the setResults prop
type SearchBarProps = {
  setResults: React.Dispatch<
    React.SetStateAction<{ id: number; name: string }[]>
  >;
};

export const SearchBar: React.FC<SearchBarProps> = ({ setResults }) => {
  const [input, setInput] = useState<string>("");

  // Fetch data from the API
  const fetchData = (value: string) => {
    fetch("https://jsonplaceholder.typicode.com/users") // Fixed the typo in the URL
      .then((response) => response.json())
      .then((json) => {
        const results = json.filter((user: { name: string }) => {
          return (
            value &&
            user &&
            user.name &&
            user.name.toLowerCase().includes(value.toLowerCase())
          );
        });
        setResults(results);
      })
      .catch((error) => console.error("Error fetching data:", error));
  };

  // Handle input change
  const handleChange = (value: string) => {
    setInput(value);
    fetchData(value);
  };

  return (
    <div className="input-wrapper">
      <input
        placeholder="Find a brand"
        value={input}
        onChange={(e) => handleChange(e.target.value)}
      />
      <FaSearch className="search-icon" />
    </div>
  );
};