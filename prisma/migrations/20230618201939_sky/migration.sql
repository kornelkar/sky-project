-- CreateTable
CREATE TABLE "Star" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "id_constellation" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "constellation" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "Star_name_key" ON "Star"("name");

-- CreateIndex
CREATE UNIQUE INDEX "constellation_name_key" ON "constellation"("name");
