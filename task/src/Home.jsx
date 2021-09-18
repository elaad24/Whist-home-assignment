import React, { useContext, useState } from "react";
import { ProductsContext } from "./App";
import { useSelector } from "react-redux";

import ProductCard from "./componnents/ProductCard";
import ShoppingCart from "./componnents/ShoppingCart";
const Home = () => {
  const products = useContext(ProductsContext);
  const shoppingCartItems = useSelector((state) => state.shoppingCart.products);

  return (
    <div className="d-flex  flex-row-reverse flex-wrap justify-content-around">
      {shoppingCartItems.length !== 0 ? <ShoppingCart showTitle={true} /> : ""}

      {products.map((product) => {
        return <ProductCard product={product} key={product.id} />;
      })}
    </div>
  );
};

export default Home;
