import { v4 } from 'uuid'
import { prisma } from '@/backend/database'
import { checkPrismaError } from '@/backend/utils'

async function createUser(){
    try {
        await prisma.user.create({
            data: {
                id: v4(),
                name: 'name',
                email: 'email',
                password: 'pass',
            },
        })
    } catch (err) {
        console.error(err)
        checkPrismaError(err, {
            uniqueConstraintFailed: 'Email must be unique.',
        })
    }
}