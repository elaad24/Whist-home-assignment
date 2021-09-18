import React, { useContext, useState } from "react";
import { ProductsContext } from "./App";
import AdminTable from "./componnents/AdminTable";
import ItemModal from "./componnents/ItemModal";

const Admin = () => {
  const products = useContext(ProductsContext);
  const [tempItem, setTempItem] = useState({});
  const [modalOpen, setModalOpen] = useState(false);

  const showModal = (item) => {
    setTempItem(item);
    setModalOpen(true);
  };

  return (
    <div>
      {tempItem !== {} && modalOpen === true ? (
        <ItemModal
          id={tempItem?.id || ""}
          title={tempItem?.title}
          price={tempItem?.price}
          description={tempItem?.description}
          category={tempItem?.category}
          image={tempItem?.image}
          rate={tempItem?.rating?.rate}
          amount={tempItem?.rating?.amount}
          modalState={modalOpen}
          setModalState={setModalOpen}
          submitAction={"add"}
        />
      ) : (
        ""
      )}
      <button className="btn btn-primary" onClick={() => showModal({})}>
        add new item{" "}
      </button>
      <AdminTable tableData={products} />
    </div>
  );
};

export default Admin;
