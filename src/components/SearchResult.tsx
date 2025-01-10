import React from "react"
import "./SearchResult.css"

// Define the type for the result prop
type SearchResultProps = {
  result: { id: number; name: string };
};

export const SearchResult: React.FC<SearchResultProps> = ({ result }) => {
  return (
    <div
      className="search-result"
      onClick={() => alert(`You clicked on ${result.name}`)}
    >
      {result.name}
    </div>
  );
};