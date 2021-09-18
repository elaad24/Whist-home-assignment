import React, { useEffect, useState } from "react";
import { useDispatch } from "react-redux";
import StatsCard from "./componnents/StatsCard";
import {
  getFiveDaysProfit,
  getTopFiveProducts,
  getTopFiveUniqueProducts,
} from "./services/statsService";

const Stats = () => {
  const [fiveDayProfit, setFiveDayProfit] = useState([]);
  const [topFiveProducts, setTopFiveProducts] = useState([]);
  const [topFiveUniqueProducts, setTopFiveUniqueProducts] = useState([]);

  let todayDate = new Date().toISOString().split("T")[0];
  let oneDayAgoDate = new Date(Date.now() - 86400000)
    .toISOString()
    .split("T")[0];
  let twoDayAgoDate = new Date(Date.now() - 172800000)
    .toISOString()
    .split("T")[0];
  let threeDayAgoDate = new Date(Date.now() - 259200000)
    .toISOString()
    .split("T")[0];
  let fourDayAgoDate = new Date(Date.now() - 345600000)
    .toISOString()
    .split("T")[0];
  const allDates = [
    todayDate,
    oneDayAgoDate,
    twoDayAgoDate,
    threeDayAgoDate,
    fourDayAgoDate,
  ];
  useEffect(async () => {
    const { data } = await getFiveDaysProfit();

    let temp = [];
    let iterations = 0;
    for (let i of data) {
      temp.push({
        [allDates[iterations]]: i.dailyProfit,
      });
      iterations++;
    }
    setFiveDayProfit(temp);
  }, []);
  useEffect(async () => {
    const { data } = await getTopFiveProducts();
    setTopFiveProducts(data);
  }, []);
  useEffect(async () => {
    const { data } = await getTopFiveUniqueProducts();
    setTopFiveUniqueProducts(data);
  }, []);

  return (
    <div className="d-flex justify-content-around m-5">
      <StatsCard
        header="top 5 sel"
        prefix="product"
        data={topFiveProducts}
        suffix=""
        cardType="products"
      />
      <StatsCard
        header="top 5 uniq sel"
        prefix="product"
        data={topFiveUniqueProducts}
        suffix=""
        cardType="products"
      />
      <StatsCard
        header="past 5 days $"
        prefix=""
        data={fiveDayProfit}
        suffix="$"
        cardType="revenue"
      />
    </div>
  );
};

export default Stats;
