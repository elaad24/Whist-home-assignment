import React, { useState } from "react";
import { deleteItem } from "../services/productsService";
import ItemModal from "./ItemModal";

const AdminTable = ({ tableData }) => {
  const [modalOpen, setModalOpen] = useState(false);
  const [tempItem, setTempItem] = useState({});
  const closeModal = () => {
    setModalOpen(false);
  };

  const showModal = (item) => {
    setTempItem(item);
    setModalOpen(true);
  };

  const removeItem = (itemId) => {
    deleteItem(itemId);
    window.location.reload();
  };

  return (
    <div>
      {tempItem !== {} && modalOpen === true ? (
        <ItemModal
          id={tempItem?.id}
          title={tempItem?.title}
          price={tempItem?.price}
          description={tempItem?.description}
          category={tempItem?.category}
          image={tempItem?.image}
          rate={tempItem?.rate}
          amount={tempItem?.amount}
          modalState={modalOpen}
          setModalState={setModalOpen}
          submitAction={"update"}
        />
      ) : (
        ""
      )}
      <table className="table table-striped ">
        <thead>
          <tr>
            <th className="text-center" scope="col">
              #
            </th>
            <th className="text-center" scope="col">
              Title
            </th>
            <th className="text-center" scope="col">
              Price $
            </th>
            <th className="text-center" scope="col">
              Description
            </th>
            <th className="text-center" scope="col">
              image
            </th>
            <th className="text-center" scope="col">
              Function
            </th>
          </tr>
        </thead>
        <tbody>
          {tableData.map((item) => {
            return (
              <tr key={item.id}>
                <th scope="row"></th>
                <td className="text-center">{item.title}</td>
                <td className="text-center ">{item.price}</td>
                <td className="text-center">{item.description}</td>
                <td className="text-center">
                  <img
                    src={item.image}
                    alt={item.title}
                    height="100px"
                    width="100px"
                  />
                </td>
                <td className="d-flex justify-content-around gap-3 ">
                  <button
                    className="btn btn-warning"
                    data-toggle="modal"
                    data-target="#exampleModalCenter"
                    onClick={() => showModal(item)}
                  >
                    Edit
                  </button>
                  <button
                    className="btn btn-danger"
                    onClick={() => removeItem(item.id)}
                  >
                    Delete
                  </button>
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
};

export default AdminTable;
