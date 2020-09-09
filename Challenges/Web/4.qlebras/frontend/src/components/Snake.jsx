import React from "react";
import "./Snake.css";

function Snake({ snake }) {
  const { error, name, img, description } = snake;

  if (error)
    return (
      <div className="card">
        <h1>Buen intento, ahora intenta otra cosa.</h1>
      </div>
    );
  if (name === "")
    return (
      <div className="card">
        <h1>No hay tantas culebras registradas</h1>
      </div>
    );
  return (
    <div className="card">
      <section className="title">
        <h1>{name}</h1>
        <p>{description}</p>
      </section>

      <section className="snake">
        <img src={img} alt="Imagen de la vibora" />
      </section>
    </div>
  );
}

export default Snake;
