import React, { useEffect, useState } from "react";
import { Redirect, Route, Switch } from "react-router";
import "./App.css";
import { getProducts } from "./services/productsService";
import { useSelector } from "react-redux";

// componnets
import Admin from "./Admin";
import Home from "./Home";
import Nav from "./componnents/Nav";
import Stats from "./Stats";

export const ProductsContext = React.createContext();

function App() {
  let [products, setProducts] = useState([]);
  const ShoppingCartItems = useSelector((state) => state.shoppingCart.products);

  useEffect(async () => {
    const { data } = await getProducts();
    setProducts(await data);
  }, []);

  return (
    <div className="container">
      <header className="" style={{ width: "100wh" }}>
        <Nav qty={ShoppingCartItems.length} />
      </header>
      <body>
        <div>
          <ProductsContext.Provider value={products}>
            <Switch>
              <Route path="/admin">
                <Admin />
              </Route>
              <Route path="/home">
                <Home />
              </Route>
              <Route path="/stats">
                <Stats />
              </Route>
              <Redirect to="/home" />
            </Switch>
          </ProductsContext.Provider>
        </div>
      </body>
    </div>
  );
}

export default App;
