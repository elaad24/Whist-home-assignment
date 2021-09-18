import { createSlice } from "@reduxjs/toolkit";

const counterSlice = createSlice({
  name: "shoppingCart",
  initialState: {
    products: [],
  },
  reducers: {
    // add item to shopping cart
    addItem(state, action) {
      state.products = [...state.products, action.payload];
    },
    clearCart(state) {
      state.products = [];
    },
  },
});

export const { addItem, clearCart } = counterSlice.actions;
export default counterSlice.reducer;
