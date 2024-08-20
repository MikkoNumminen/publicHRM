-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Person" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "position" TEXT NOT NULL DEFAULT '-',
    "email" TEXT NOT NULL DEFAULT '-',
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_Person" ("createdAt", "email", "id", "name", "position", "updatedAt") SELECT "createdAt", "email", "id", "name", "position", "updatedAt" FROM "Person";
DROP TABLE "Person";
ALTER TABLE "new_Person" RENAME TO "Person";
PRAGMA foreign_key_check("Person");
PRAGMA foreign_keys=ON;
