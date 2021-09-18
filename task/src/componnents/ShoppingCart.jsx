import React, { useEffect, useState } from "react";
import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import { clearCart } from "../redux/slices/shoppingCart";
import { transaction } from "../services/productsService";

const ShoppingCart = ({ showTitle }) => {
  const shoppingCartItems = useSelector((state) => state.shoppingCart.products);

  const [totalPrice, setTotalPrice] = useState(0);
  const dispatch = useDispatch();
  let price = 0;

  let dataToServer = shoppingCartItems.map((item) => {
    return {
      item_id: item.id,
      qty: 1,
      total_price: item.price,
    };
  });

  useEffect(() => {
    setTotalPrice(0);
    price = 0;
    for (let i of shoppingCartItems) {
      price = price + i.price;
    }
    setTotalPrice(price);
  }, [shoppingCartItems]);

  const pay = async () => {
    try {
      await transaction(dataToServer);
      await dispatch(clearCart());
    } catch (err) {
      return err;
    }
  };
  return (
    <div
      className="d-flex flex-column align-items-center"
      style={{ maxHeight: "400px", overflowY: "auto" }}
    >
      {showTitle ? <h2>shopping Cart</h2> : ""}
      <ul style={{ listStyleType: "none", padding: "5px", width: "100%" }}>
        {shoppingCartItems.length != 0
          ? shoppingCartItems.map((item) => {
              return (
                <li
                  key={item.id}
                  className="d-flex justify-content-between my-1"
                >
                  <div>
                    <img
                      src={item.image}
                      alt={item.title}
                      height="40px"
                      width="40px"
                    />
                  </div>
                  <div>{item.price}$</div>
                </li>
              );
            })
          : ""}
      </ul>
      <div>Total: {totalPrice} $</div>
      <button
        className="btn btn-success"
        onClick={() => pay(shoppingCartItems)}
      >
        pay
      </button>
    </div>
  );
};

export default ShoppingCart;
