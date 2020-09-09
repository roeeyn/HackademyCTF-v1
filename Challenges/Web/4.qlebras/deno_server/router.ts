import { Router } from 'https://deno.land/x/oak/mod.ts'
import { getSnake, healthcheck } from './controller.ts'

const router = new Router()
router
    // .get('/snakes/:id', getSnake)
    .get('/snakes', getSnake)
    .get('/', healthcheck)

export default router
