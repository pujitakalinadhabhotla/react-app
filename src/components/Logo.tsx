import React from "react";
import logo from "/Users/pujitakalinadhabhotla/Desktop/react-app/src/assets/Logo.png"; // Adjust the path based on your folder structure
import "/Users/pujitakalinadhabhotla/Desktop/react-app/src/Logo.css";

const Logo: React.FC = () => {
    return (
      <div className="logo-container">
        <img src={logo} alt="Logo" className="logo-image" />
      </div>
    );
  };

export default Logo;
