import React from "react";
import "./SearchResultsList.css";

// Define the type for the results prop
type SearchResultsListProps = {
  results: { id: number; name: string }[];
};

export const SearchResultsList: React.FC<SearchResultsListProps> = ({ results }) => {
  return (
    <div className="results-list">
      {results.map((result) => (
        <div key={result.id}>{result.name}</div>
      ))}
    </div>
  );
};