-- CreateTable
CREATE TABLE "Champion" (
    "champion_id" SERIAL NOT NULL,
    "champion_name" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "summary" TEXT,

    CONSTRAINT "Champion_pkey" PRIMARY KEY ("champion_id")
);

-- CreateTable
CREATE TABLE "Champion_Patch" (
    "champion_patch_id" SERIAL NOT NULL,
    "champion_set_id" INTEGER NOT NULL,

    CONSTRAINT "Champion_Patch_pkey" PRIMARY KEY ("champion_patch_id")
);

-- CreateTable
CREATE TABLE "Champion_Patch_Stat" (
    "champion_patch_stat_id" SERIAL NOT NULL,
    "champion_patch_id" INTEGER NOT NULL,
    "ad" INTEGER NOT NULL,
    "AS" INTEGER NOT NULL,
    "starting_mana" INTEGER NOT NULL,
    "total_mana" INTEGER NOT NULL,
    "armor" INTEGER NOT NULL,
    "magic_resist" INTEGER NOT NULL,
    "hp" INTEGER NOT NULL,
    "crit_chance" INTEGER NOT NULL,

    CONSTRAINT "Champion_Patch_Stat_pkey" PRIMARY KEY ("champion_patch_stat_id")
);

-- CreateTable
CREATE TABLE "Champion_Set" (
    "champion_set_id" SERIAL NOT NULL,
    "champion_id" INTEGER NOT NULL,

    CONSTRAINT "Champion_Set_pkey" PRIMARY KEY ("champion_set_id")
);

-- CreateTable
CREATE TABLE "Patch" (
    "patch_id" SERIAL NOT NULL,
    "deployment_date" TIMESTAMP(3) NOT NULL,
    "major_version" INTEGER NOT NULL,
    "minor_version" INTEGER NOT NULL,
    "patch_version" INTEGER NOT NULL,

    CONSTRAINT "Patch_pkey" PRIMARY KEY ("patch_id")
);

-- CreateTable
CREATE TABLE "Set" (
    "set_id" SERIAL NOT NULL,
    "set_name" INTEGER NOT NULL,
    "major_version" INTEGER NOT NULL,
    "minor_version" INTEGER NOT NULL,
    "release_date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Set_pkey" PRIMARY KEY ("set_id")
);

-- CreateTable
CREATE TABLE "Trait" (
    "trait_id" SERIAL NOT NULL,
    "trait_name" INTEGER NOT NULL,
    "trait_image_url" TEXT NOT NULL,

    CONSTRAINT "Trait_pkey" PRIMARY KEY ("trait_id")
);

-- CreateTable
CREATE TABLE "Trait_Breakpoint" (
    "trait_variable_id" SERIAL NOT NULL,
    "minimum_amount" INTEGER NOT NULL,
    "maximum_amount" INTEGER NOT NULL,
    "tier_color_type" INTEGER NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Trait_Breakpoint_pkey" PRIMARY KEY ("trait_variable_id")
);

-- CreateTable
CREATE TABLE "Trait_Patch" (
    "trait_patch_id" SERIAL NOT NULL,
    "trait_id" INTEGER NOT NULL,
    "patch_id" INTEGER NOT NULL,

    CONSTRAINT "Trait_Patch_pkey" PRIMARY KEY ("trait_patch_id")
);

-- CreateTable
CREATE TABLE "Trait_Patch_Breakpoint_Matrix" (
    "trait_patch_breakpoint_matrix_id" SERIAL NOT NULL,
    "trait_patch_id" INTEGER NOT NULL,
    "trait_breakpoint_id" INTEGER NOT NULL,

    CONSTRAINT "Trait_Patch_Breakpoint_Matrix_pkey" PRIMARY KEY ("trait_patch_breakpoint_matrix_id")
);

-- CreateTable
CREATE TABLE "Trait_Patch_Breakpoint_Variable_Matrix" (
    "trait_patch_breakpoint_variable_matrix_id" SERIAL NOT NULL,
    "trait_breakpoint_id" INTEGER NOT NULL,
    "trait_variable_breakpoint_id" INTEGER NOT NULL,

    CONSTRAINT "Trait_Patch_Breakpoint_Variable_Matrix_pkey" PRIMARY KEY ("trait_patch_breakpoint_variable_matrix_id")
);

-- CreateTable
CREATE TABLE "Trait_Set" (
    "trait_set_id" INTEGER NOT NULL,
    "set_id" INTEGER NOT NULL,
    "is_fixed" BOOLEAN NOT NULL,
    "description" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Champion_Patch_Stat_champion_patch_id_key" ON "Champion_Patch_Stat"("champion_patch_id");

-- CreateIndex
CREATE UNIQUE INDEX "Trait_Set_set_id_key" ON "Trait_Set"("set_id");

-- AddForeignKey
ALTER TABLE "Champion_Patch" ADD CONSTRAINT "Champion_Patch_champion_set_id_fkey" FOREIGN KEY ("champion_set_id") REFERENCES "Champion_Set"("champion_set_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Champion_Patch_Stat" ADD CONSTRAINT "Champion_Patch_Stat_champion_patch_id_fkey" FOREIGN KEY ("champion_patch_id") REFERENCES "Champion_Patch"("champion_patch_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Trait_Set" ADD CONSTRAINT "Trait_Set_set_id_fkey" FOREIGN KEY ("set_id") REFERENCES "Set"("set_id") ON DELETE RESTRICT ON UPDATE CASCADE;
