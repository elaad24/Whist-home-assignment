var express = require("express");
var router = express.Router();
var connection = require("../db/mySql");
const util = require("util");
const asyncQuerry = util.promisify(connection.query).bind(connection);

/* GET all products page. */
router.get("/", function (req, res, next) {
  let query = "select * from products";
  connection.query(query, (err, data) => {
    if (err) {
      return res.status(400).json(err);
    }
    console.log("had GET req at ", Date.now());
    res.status(200).json(data);
  });
});

router.post("/add", function (req, res, next) {
  let errors = {};

  let title = req.body.title;
  let price = req.body.price;
  let description = req.body.description;
  let category = req.body.category;

  if (title == "") {
    errors.title = "missing title";
  }
  if (price == "") {
    errors.price = "missing price";
  }
  if (description == "") {
    errors.description = "missing description";
  }
  if (category == "") {
    errors.category = "missing category";
  }

  if (
    errors.title != undefined ||
    errors.price != undefined ||
    errors.description != undefined ||
    errors.category != undefined
  ) {
    console.log("had --Failed--  406 POST req at ", Date.now());
    console.log("errors : ", errors);

    return res.status(406).json({ error: errors });
  }

  const newPRoduct = req.body;

  let query = `INSERT INTO products (id,title,price,description,category,image,rate,amount) VALUES (NULL, "${
    newPRoduct.title
  }", ${newPRoduct.price}, "${newPRoduct.description}", "${
    newPRoduct.category
  }", "${newPRoduct.image || ""}", ${newPRoduct.rate || null}, ${
    newPRoduct.amount || null
  });`;

  connection.query(query, (err, data) => {
    if (err) {
      console.log(err);
      console.log("had --Failed-- POST req at ", Date.now(), err);
      return res.status(400).json(err);
    }
    console.log("had POST req at ", Date.now());

    res.json(data);
  });
});

router.put("/update", (req, res, next) => {
  let errors = {};

  let title = req.body.title;
  let price = req.body.price;
  let description = req.body.description;
  let category = req.body.category;

  if (title == "") {
    errors.title = "missing title";
  }
  if (price == "") {
    errors.price = "missing price";
  }
  if (description == "") {
    errors.description = "missing description";
  }
  if (category == "") {
    errors.category = "missing category";
  }

  if (
    errors.title != undefined ||
    errors.price != undefined ||
    errors.description != undefined ||
    errors.category != undefined
  ) {
    console.log("had --Failed--  406 POST req at ", Date.now());
    console.log("errors : ", errors);

    return res.status(406).json({ error: errors });
  }

  const itemId = req.body.id;
  const updatedItem = req.body;

  let query = `update products set id = ${updatedItem.id} ,
    title = "${updatedItem.title}",
    price = ${updatedItem.price},
    description = "${updatedItem.description}",
    category = "${updatedItem.category}",
    image = "${updatedItem.image || ""}",
    rate =  ${updatedItem.rate || null},
    amount =  ${updatedItem.amount || null}
    where id = ${itemId};`;

  connection.query(query, (err, data) => {
    if (err) {
      console.log("had --FAILED-- PUT req at ", Date.now());
      console.log(err);
      return res.status(400).json(err);
    }
    console.log("had PUT req at ", Date.now());

    res.json(data);
  });
});

router.post("/transaction", async function (req, res, next) {
  // get the last order id number

  (async () => {
    try {
      const query = await asyncQuerry(
        "SELECT MAX(order_id) as lastOrderID FROM order_history"
      );
      var newOrderId = query[0].lastOrderID + 1;
    } finally {
      const newOrder = req.body;

      for (let i of newOrder) {
        let sql = `insert into order_history (id,order_id,qty,item_id,total_price) VALUES (null,${newOrderId},${i.qty},${i.item_id},${i.total_price});`;
        connection.query(sql, (err, data) => {
          if (err) {
            console.log(err);
            return err;
          }
        });
      }
      console.log("had POST req transaction at ", Date.now());

      res.status(202).json({ message: "accepted" });
    }
  })();
});

// get the profit from the last 5 days
router.get("/deleteProduct", function (req, res, next) {
  let itemId = req.query.productId;

  let query = `DELETE FROM products WHERE products.id = ${itemId};`;
  connection.query(query, (err, data, fields) => {
    if (err) {
      return res.status(400).json(err);
    }
    console.log(
      "had GET req at item deleted ! ",
      new Date().toISOString().split("T")[0]
    );
    res.status(200).json(data);
  });
});

module.exports = router;
