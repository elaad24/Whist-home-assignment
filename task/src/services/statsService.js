import http from "./http";
import { apiUrl } from "../config.json";

export function getFiveDaysProfit() {
  return http.get(`${apiUrl}/stats/5days-profit`);
}
export function getTopFiveProducts() {
  return http.get(`${apiUrl}/stats/5-top-products`);
}
export function getTopFiveUniqueProducts() {
  return http.get(`${apiUrl}/stats/5-top-unique-products`);
}
