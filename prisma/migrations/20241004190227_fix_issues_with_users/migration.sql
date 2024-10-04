/*
  Warnings:

  - You are about to drop the column `logitude` on the `gyms` table. All the data in the column will be lost.
  - You are about to drop the `ckeck_ins` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `longitude` to the `gyms` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "ckeck_ins" DROP CONSTRAINT "ckeck_ins_gym_id_fkey";

-- DropForeignKey
ALTER TABLE "ckeck_ins" DROP CONSTRAINT "ckeck_ins_user_id_fkey";

-- AlterTable
ALTER TABLE "gyms" DROP COLUMN "logitude",
ADD COLUMN     "longitude" DECIMAL(65,30) NOT NULL;

-- DropTable
DROP TABLE "ckeck_ins";

-- CreateTable
CREATE TABLE "check_ins" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "validated_at" TIMESTAMP(3),
    "user_id" TEXT NOT NULL,
    "gym_id" TEXT NOT NULL,

    CONSTRAINT "check_ins_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "check_ins" ADD CONSTRAINT "check_ins_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "check_ins" ADD CONSTRAINT "check_ins_gym_id_fkey" FOREIGN KEY ("gym_id") REFERENCES "gyms"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
