/*
  Warnings:

  - Added the required column `gym_id` to the `ckeck_ins` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `ckeck_ins` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ckeck_ins" ADD COLUMN     "gym_id" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "ckeck_ins" ADD CONSTRAINT "ckeck_ins_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ckeck_ins" ADD CONSTRAINT "ckeck_ins_gym_id_fkey" FOREIGN KEY ("gym_id") REFERENCES "gyms"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
