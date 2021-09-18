import http from "./http";
import { apiUrl } from "../config.json";

export function getProducts() {
  return http.get(`${apiUrl}/products`);
}

export function addProduct(product) {
  return http.post(`${apiUrl}/products/add`, product);
}

export function updateProduct(product) {
  return http.put(`${apiUrl}/products/update`, product);
}

export function transaction(shoppingCartList) {
  return http.post(`${apiUrl}/products/transaction`, shoppingCartList);
}
export function deleteItem(itemID) {
  return http.get(`${apiUrl}/products/deleteProduct?productId=${itemID}`);
}
