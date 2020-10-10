import React, { useState, useEffect } from "react";
import "./App.css";
import Snake from "./components/Snake";

const host = process.env.REACT_APP_BACKEND_HOST || "http://localhost:5000";

function App() {
  const [snake, setSnake] = useState({ name: "" });

  useEffect(() => {
    const search = window.location.search;
    const params = new URLSearchParams(search);
    const id = params.get("snake_id") || "1";
    if (isNaN(id)) setSnake({ error: "wrong input" });
    else
      fetch(`${host}/snakes?id=${id}`)
        .then((resp) => resp.json())
        .then((resp) => resp.length > 0 && setSnake(resp[0]))
        .catch((error) => console.error(error));
  }, []);

  return (
    <div className="App">
      <h1 className="main-title">Catalogo de QLebras</h1>
      <main>
        <Snake snake={snake} />
        <section className="links">
          <a href="/?snake_id=1">Serpiente 1</a>
          <a href="/?snake_id=2">Serpiente 2</a>
          <a href="/?snake_id=3">Serpiente 3</a>
        </section>
      </main>
    </div>
  );
}

export default App;
