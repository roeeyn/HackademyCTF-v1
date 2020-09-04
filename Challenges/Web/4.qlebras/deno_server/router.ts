import { Router } from 'https://deno.land/x/oak/mod.ts'
import { getSnake } from './controller.ts'

const router = new Router()
router
    .get('/snakes/:id', getSnake)

export default router
