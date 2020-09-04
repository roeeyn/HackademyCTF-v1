interface ISnake {
    id: number,
    name: string,
    img: string,
    description: string
}

import { searchSnakeById } from "./database.ts"

const getSnake = async ({ params, response }: { params: { id: string }; response: any }) => {
    const snake: ISnake | undefined = await searchSnakeById(+params.id)
    if (snake) {
        response.status = 200
        response.body = snake
    } else {
        response.status = 404
        response.body = { error: `Snake not found.` }
    }
}

export { getSnake, ISnake };
