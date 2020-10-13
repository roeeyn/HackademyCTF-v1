interface ISnake {
    id: number,
    name: string,
    img: string,
    description: string
}

import { searchSnakeById } from "./database.ts"

const getSnake = async ({ request, response }: { request: any; response: any }) => {
    const snake: ISnake | undefined = await searchSnakeById(request.url.searchParams.get("id"))
    if (snake) {
        response.status = 200
        response.body = snake
    } else {
        response.status = 404
        response.body = { error: `Snake not found.` }
    }
}

const healthcheck = ({ request, response }: { request: any; response: any }) => {
    response.body = { "message": "todo al 100" }
}

export { getSnake, ISnake, healthcheck };
