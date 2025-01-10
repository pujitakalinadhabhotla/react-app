import React from "react";
import "./SearchResultsList.css";
import { SearchResult } from "./SearchResult";


type SearchResultsListProps = {
    results: { id: number; name: string }[]; 
  };
  
  export const SearchResultsList: React.FC<SearchResultsListProps> = ({ results }) => {
    return (
      <div className="results-list">
        {results.map((result) => (
          <SearchResult result={result} key={result.id} />
        ))}
      </div>
    );
  };
