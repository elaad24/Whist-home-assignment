import React from "react";
import { useDispatch } from "react-redux";
import { addItem } from "../redux/slices/shoppingCart";

const ProductCard = ({ product }) => {
  const dispatch = useDispatch();
  const addToShoppingCart = (product) => {
    dispatch(addItem(product));
  };

  return (
    <div className="card " style={{ width: "12rem", margin: "20px 10px" }}>
      <img
        className="card-img-top"
        src={product.image}
        alt={product.title}
        height="150px"
        width="200px"
      />
      <div className="card-body text-center">
        <h5 className="card-title" style={{ fontSize: "1em", height: "6em" }}>
          {product.title}
        </h5>
        <p className="card-text">
          <b>price : </b> {product.price}
        </p>
        <p className="card-text">
          <b> rating : </b> {product.rate}
        </p>
        <button
          className="btn btn-danger"
          onClick={() => addToShoppingCart(product)}
        >
          add to cart{" "}
        </button>
      </div>
    </div>
  );
};

export default ProductCard;
