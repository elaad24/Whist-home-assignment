const { query } = require("express");
var express = require("express");
var router = express.Router();
var connection = require("../db/mySql");

// get the profit from the last 5 days
router.get("/5days-profit", function (req, res, next) {
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

  const datesDate = [
    todayDate,
    oneDayAgoDate,
    twoDayAgoDate,
    threeDayAgoDate,
    fourDayAgoDate,
  ];

  let query = `SELECT sum(total_Price)
    as dailyProfit FROM order_history
    where CONVERT(time,Date) = "${todayDate}"
    union SELECT sum(total_Price) as dailyProfit 
    FROM order_history where CONVERT(time,Date)
    = "${oneDayAgoDate}" union SELECT sum(total_Price)
    as dailyProfit FROM order_history where CONVERT(time,Date)
    = "${twoDayAgoDate}" union SELECT sum(total_Price) as dailyProfit
    FROM order_history where CONVERT(time,Date) = "${threeDayAgoDate}" 
    union SELECT sum(total_Price) as dailyProfit FROM order_history where
    CONVERT(time,Date) = "${fourDayAgoDate}"; `;
  //console.log(query);
  connection.query(query, (err, data, fields) => {
    if (err) {
      console.log("err", err);
      return res.status(400).json(err);
    }

    res.status(200).json(data);
  });
});
router.get("/5-top-products", function (req, res, next) {
  let query = `SELECT item_id,COUNT(item_id) as amount FROM 
  order_history GROUP BY item_id ORDER BY COUNT(item_id) DESC LIMIT 0,5; `;
  //console.log(query);
  connection.query(query, (err, data, fields) => {
    if (err) {
      console.log("err", err);
      return res.status(400).json(err);
    }

    res.status(200).json(data);
  });
});

router.get("/5-top-unique-products", function (req, res, next) {
  let query = `SELECT item_id,COUNT(item_id) as amount 
               FROM ( SELECT DISTINCT item_id,order_id FROM order_history)
                as a GROUP BY item_id ORDER BY amount DESC limit 0,5 `;
  //console.log(query);
  connection.query(query, (err, data, fields) => {
    if (err) {
      console.log("err", err);
      return res.status(400).json(err);
    }

    res.status(200).json(data);
  });
});

module.exports = router;
