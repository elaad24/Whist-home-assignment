import React from "react";
import { Link } from "react-router-dom";
import ShoppingCart from "./ShoppingCart";

const Nav = ({ qty }) => {
  return (
    <nav className=" navbar-nav  navbar-light bg-light my-3 ">
      <div className="navbar-nav  d-flex flex-row  justify-content-around">
        <div className="nav-item">
          <Link to="./Home" className="nav-link">
            <b>Home</b>
          </Link>
        </div>
        <div className="nav-item">
          <Link to="./admin" className="nav-link">
            <b>Admin</b>
          </Link>
        </div>
        <div className="nav-item">
          <Link to="./stats" className="nav-link">
            <b>Stats</b>
          </Link>
        </div>

        <div className="nav-item">
          <div className="btn-group">
            <button
              className="btn btn-success dropdown-toggle"
              data-bs-toggle="dropdown"
              aria-expanded="false "
            >
              {` shopping Cart ${qty} `}
            </button>
            <div className="dropdown-menu">
              <ShoppingCart />
            </div>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Nav;
