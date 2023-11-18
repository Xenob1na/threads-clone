/*
  Warnings:

  - Added the required column `userId` to the `Likes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Posts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Likes" ADD COLUMN     "userId" UUID NOT NULL;

-- AlterTable
ALTER TABLE "Posts" ADD COLUMN     "userId" UUID NOT NULL;
