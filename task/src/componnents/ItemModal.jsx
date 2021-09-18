import React, { useRef, useState } from "react";
import { Button, Form, Modal } from "react-bootstrap";
import { addProduct, updateProduct } from "../services/productsService";
const ItemModal = ({
  id,
  title,
  price,
  description,
  category,
  image,
  rate,
  amount,
  modalState,
  setModalState,
  submitAction,
}) => {
  const idRef = useRef(id);
  const TitleRef = useRef(title);
  const priceRef = useRef(price);
  const descriptionRef = useRef(description);
  const categoryRef = useRef(category);
  const imageRef = useRef(image);
  const rateRef = useRef(rate);
  const amountRef = useRef(amount);

  let [tittleError, setTittleError] = useState("");
  let [priceError, setPriceError] = useState("");
  let [descriptionError, setDescriptionError] = useState("");
  let [categoryError, setCategoryError] = useState("");

  async function handleSubmit(e) {
    // function that send data to database
    const product = {
      id: idRef?.current,
      title: TitleRef.current.value,
      price: priceRef.current.value,
      description: descriptionRef.current.value,
      category: categoryRef.current.value,
      image: imageRef.current.value,
      rate: rateRef.current.value,
      amount: amountRef.current.value,
    };
    setTittleError("");
    setPriceError("");
    setDescriptionError("");
    setCategoryError("");
    e.preventDefault();
    if (submitAction == "add") {
      try {
        await addProduct(product);
        await closeModal();
        await window.location.reload();
      } catch (err) {
        if (err?.response?.data?.error?.title) {
          setTittleError(err.response.data.error.title);
        }
        if (err?.response?.data?.error?.price) {
          setPriceError(err.response.data.error.price);
        }
        if (err?.response?.data?.error?.description) {
          setDescriptionError(err.response.data.error.description);
        }
        if (err?.response?.data?.error?.category) {
          setCategoryError(err.response.data.error.category);
        }
        return err;
      }
    } else if (submitAction == "update") {
      try {
        await updateProduct(product);
        await closeModal();
        await window.location.reload();
      } catch (err) {
        if (err?.response?.data?.error?.title) {
          setTittleError(err.response.data.error.title);
        }
        if (err?.response?.data?.error?.price) {
          setPriceError(err.response.data.error.price);
        }
        if (err?.response?.data?.error?.description) {
          setDescriptionError(err.response.data.error.description);
        }
        if (err?.response?.data?.error?.category) {
          setCategoryError(err.response.data.error.category);
        }
        return err;
      }
    }
  }

  const closeModal = () => {
    setModalState(false);
  };

  return (
    <Modal
      size="lg"
      aria-labelledby="contained-modal-title-vcenter"
      centered
      show={modalState}
      onHide={() => setModalState(false)}
    >
      <Modal.Header closeButton onHide={() => closeModal()}>
        <Modal.Title id="contained-modal-title-vcenter">Edith Item</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        <h4>Item Id : {idRef.current || "automatically assigned"}</h4>
        <Form onSubmit={handleSubmit}>
          <Form.Group>
            <Form.Label>
              {"Title "}
              <span>
                <small className="text-danger">* require</small>
              </span>
            </Form.Label>
            <Form.Control
              className="placeholder-danger"
              type="text"
              defaultValue={
                TitleRef.current?.value == ""
                  ? TitleRef.current?.value
                  : TitleRef.current
              }
              ref={TitleRef}
              minLength="3"
              placeholder={tittleError}
              required
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>
              {"Price "}

              <span>
                <small className="text-danger">* require</small>
              </span>
            </Form.Label>
            <Form.Control
              className="placeholder-danger"
              type="number"
              defaultValue={
                priceRef.current?.value == ""
                  ? priceRef.current?.value
                  : priceRef.current
              }
              ref={priceRef}
              min="0.01"
              placeholder={priceError}
              required
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>
              {"Description "}
              <span>
                <small className="text-danger">* require</small>
              </span>
            </Form.Label>
            <Form.Control
              className="placeholder-danger"
              type="text"
              defaultValue={
                descriptionRef.current?.value == ""
                  ? descriptionRef.current?.value
                  : descriptionRef.current
              }
              ref={descriptionRef}
              minLength="3"
              placeholder={descriptionError}
              required
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>
              {"Category "}
              <span>
                <small className="text-danger">* require</small>
              </span>
            </Form.Label>
            <Form.Control
              className="placeholder-danger"
              type="text"
              defaultValue={
                categoryRef.current?.value == ""
                  ? categoryRef.current?.value
                  : categoryRef.current
              }
              ref={categoryRef}
              minLength="3"
              placeholder={categoryError}
              required
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>Image</Form.Label>
            <Form.Control
              type="text"
              defaultValue={
                imageRef.current?.value == ""
                  ? imageRef.current?.value
                  : imageRef.current
              }
              ref={imageRef}
              placeholder="URL - e.g - www.image.com"
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>Rate</Form.Label>
            <Form.Control
              type="number"
              defaultValue={
                rateRef.current?.value == ""
                  ? rateRef.current?.value
                  : rateRef.current
              }
              ref={rateRef}
            />
          </Form.Group>
          <Form.Group>
            <Form.Label>amount</Form.Label>
            <Form.Control
              type="number"
              defaultValue={
                amountRef.current?.value == ""
                  ? amountRef.current?.value
                  : amountRef.current
              }
              ref={amountRef}
            />
          </Form.Group>
        </Form>
      </Modal.Body>
      <Modal.Footer>
        <Button variant="secondary" onClick={() => closeModal()}>
          discard changes
        </Button>
        <Button
          variant="primary"
          type="submit"
          onClick={(e) => handleSubmit(e)}
        >
          Save changes
        </Button>
      </Modal.Footer>
    </Modal>
  );
};

export default ItemModal;
