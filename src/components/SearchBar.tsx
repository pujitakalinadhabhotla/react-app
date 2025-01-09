import React, {useState} from "react";

import {FaSearch} from "react-icons/fa"
import "/Users/pujitakalinadhabhotla/Desktop/react-app/src/SearchBar.css";

export const SearchBar = () => {
    const [input,setInput] = useState("");
    return (<div className="input-wrapper">
        <input placeholder="Find a brand"/>
        </div>
    );
};