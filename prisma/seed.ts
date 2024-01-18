import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function seed() {
  const newUser = await prisma.user.create({
    data: {
      user_id: 'hoge',
      password: 'pass',
    },
  });

  console.log('Created new User', newUser);
}

seed()
  .catch((e) => {
    throw e;
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
