/*
  Warnings:

  - You are about to drop the column `userId` on the `Likes` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Posts` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Likes" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "Posts" DROP COLUMN "userId";
