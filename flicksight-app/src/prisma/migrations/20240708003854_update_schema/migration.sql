/*
  Warnings:

  - The primary key for the `Award` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `Award` table. All the data in the column will be lost.
  - You are about to drop the column `isWin` on the `Award` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Award` table. All the data in the column will be lost.
  - The primary key for the `Bookmark` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Director` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Film` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Rating` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Reply` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Thread` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `name` on the `User` table. All the data in the column will be lost.
  - The primary key for the `Vote` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `updatedAt` on the `Vote` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[username]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `win` to the `Award` table without a default value. This is not possible if the table is not empty.
  - Made the column `bio` on table `Director` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `description` to the `Film` table without a default value. This is not possible if the table is not empty.
  - Made the column `rating` on table `Film` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `content` to the `Thread` table without a default value. This is not possible if the table is not empty.
  - Added the required column `username` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Award" DROP CONSTRAINT "Award_filmId_fkey";

-- DropForeignKey
ALTER TABLE "Bookmark" DROP CONSTRAINT "Bookmark_filmId_fkey";

-- DropForeignKey
ALTER TABLE "Bookmark" DROP CONSTRAINT "Bookmark_userId_fkey";

-- DropForeignKey
ALTER TABLE "Film" DROP CONSTRAINT "Film_directorId_fkey";

-- DropForeignKey
ALTER TABLE "Rating" DROP CONSTRAINT "Rating_filmId_fkey";

-- DropForeignKey
ALTER TABLE "Rating" DROP CONSTRAINT "Rating_userId_fkey";

-- DropForeignKey
ALTER TABLE "Reply" DROP CONSTRAINT "Reply_parentId_fkey";

-- DropForeignKey
ALTER TABLE "Reply" DROP CONSTRAINT "Reply_threadId_fkey";

-- DropForeignKey
ALTER TABLE "Reply" DROP CONSTRAINT "Reply_userId_fkey";

-- DropForeignKey
ALTER TABLE "Thread" DROP CONSTRAINT "Thread_filmId_fkey";

-- DropForeignKey
ALTER TABLE "Thread" DROP CONSTRAINT "Thread_userId_fkey";

-- DropForeignKey
ALTER TABLE "Vote" DROP CONSTRAINT "Vote_replyId_fkey";

-- DropForeignKey
ALTER TABLE "Vote" DROP CONSTRAINT "Vote_userId_fkey";

-- DropIndex
DROP INDEX "Vote_userId_replyId_key";

-- AlterTable
ALTER TABLE "Award" DROP CONSTRAINT "Award_pkey",
DROP COLUMN "createdAt",
DROP COLUMN "isWin",
DROP COLUMN "updatedAt",
ADD COLUMN     "win" BOOLEAN NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "filmId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Award_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Award_id_seq";

-- AlterTable
ALTER TABLE "Bookmark" DROP CONSTRAINT "Bookmark_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "filmId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Bookmark_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Bookmark_id_seq";

-- AlterTable
ALTER TABLE "Director" DROP CONSTRAINT "Director_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "bio" SET NOT NULL,
ADD CONSTRAINT "Director_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Director_id_seq";

-- AlterTable
ALTER TABLE "Film" DROP CONSTRAINT "Film_pkey",
ADD COLUMN     "description" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "rating" SET NOT NULL,
ALTER COLUMN "directorId" DROP NOT NULL,
ALTER COLUMN "directorId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Film_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Film_id_seq";

-- AlterTable
ALTER TABLE "Rating" DROP CONSTRAINT "Rating_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "filmId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Rating_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Rating_id_seq";

-- AlterTable
ALTER TABLE "Reply" DROP CONSTRAINT "Reply_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "threadId" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "parentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Reply_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Reply_id_seq";

-- AlterTable
ALTER TABLE "Thread" DROP CONSTRAINT "Thread_pkey",
ADD COLUMN     "content" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "filmId" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Thread_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Thread_id_seq";

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "name",
ADD COLUMN     "username" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "User_id_seq";

-- AlterTable
ALTER TABLE "Vote" DROP CONSTRAINT "Vote_pkey",
DROP COLUMN "updatedAt",
ADD COLUMN     "filmId" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ALTER COLUMN "replyId" DROP NOT NULL,
ALTER COLUMN "replyId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Vote_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Vote_id_seq";

-- CreateIndex
CREATE INDEX "Director_name_idx" ON "Director"("name");

-- CreateIndex
CREATE INDEX "Film_title_idx" ON "Film"("title");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE INDEX "User_email_idx" ON "User"("email");

-- AddForeignKey
ALTER TABLE "Film" ADD CONSTRAINT "Film_directorId_fkey" FOREIGN KEY ("directorId") REFERENCES "Director"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Thread" ADD CONSTRAINT "Thread_filmId_fkey" FOREIGN KEY ("filmId") REFERENCES "Film"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Thread" ADD CONSTRAINT "Thread_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reply" ADD CONSTRAINT "Reply_threadId_fkey" FOREIGN KEY ("threadId") REFERENCES "Thread"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reply" ADD CONSTRAINT "Reply_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reply" ADD CONSTRAINT "Reply_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "Reply"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Award" ADD CONSTRAINT "Award_filmId_fkey" FOREIGN KEY ("filmId") REFERENCES "Film"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bookmark" ADD CONSTRAINT "Bookmark_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bookmark" ADD CONSTRAINT "Bookmark_filmId_fkey" FOREIGN KEY ("filmId") REFERENCES "Film"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Rating" ADD CONSTRAINT "Rating_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Rating" ADD CONSTRAINT "Rating_filmId_fkey" FOREIGN KEY ("filmId") REFERENCES "Film"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_replyId_fkey" FOREIGN KEY ("replyId") REFERENCES "Reply"("id") ON DELETE SET NULL ON UPDATE CASCADE;
