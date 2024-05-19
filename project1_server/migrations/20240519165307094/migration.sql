BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" serial PRIMARY KEY,
    "author" text NOT NULL,
    "body" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "post_author_idx" ON "post" USING btree ("author");


--
-- MIGRATION VERSION FOR project1
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('project1', '20240519165307094', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240519165307094', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
