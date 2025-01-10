import React from "react"
import "./SearchResult.css"


type SearchResultProps = {
    result: { id: number; name: string }; // Ensure this matches your data structure
  };
  
  export const SearchResult: React.FC<SearchResultProps> = ({ result }) => {
    return (
      <div
        className="search-result"
        onClick={() => alert(`You clicked on ${result.name}`)} // Properly interpolating name
      >
        {result.name}
      </div>
    );
  };