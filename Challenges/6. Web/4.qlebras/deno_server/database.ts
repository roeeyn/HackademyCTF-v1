import { Client } from "https://deno.land/x/mysql/mod.ts";
import { ISnake } from "./controller.ts"

const env = Deno.env.toObject()

const client = await new Client().connect({
    hostname: env.DB_HOST || "127.0.0.1",
    username: env.DB_USER || "frontend_user",
    db: env.DB_SCHEMA || "snakes",
    poolSize: 10, // connection limit
    password: env.DB_PSWD || "root",
});

const searchSnakeById = async (id: string): Promise<ISnake | undefined> => {
    const query = `SELECT id, snake_name AS name, img, snake_description AS description FROM snakes WHERE id='${id}'`
    console.log(query)
    const snake = await client.query(query);
    console.log(snake)
    return snake;
}

export { searchSnakeById }
