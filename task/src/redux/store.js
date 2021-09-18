import { configureStore } from "@reduxjs/toolkit";
import shoppingCart from "./slices/shoppingCart";

export default configureStore({
  reducer: {
    shoppingCart: shoppingCart,
  },
});
