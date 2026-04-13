PRAGMA foreign_keys = ON;

-- Справочник 1: Категории приложений
CREATE TABLE IF NOT EXISTS AppCategories (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    name        TEXT    NOT NULL,
    description TEXT    NOT NULL,
    created_date TEXT   NOT NULL,
    min_age     INTEGER NOT NULL DEFAULT 0,
    avg_rating  REAL    NOT NULL DEFAULT 0.0
);

-- Справочник 2: Мобильные приложения
CREATE TABLE IF NOT EXISTS MobileApps (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    name            TEXT    NOT NULL,
    developer       TEXT    NOT NULL,
    description     TEXT    NOT NULL,
    release_date    TEXT    NOT NULL,
    price           REAL    NOT NULL DEFAULT 0.0,
    downloads_count INTEGER NOT NULL DEFAULT 0,
    rating          REAL    NOT NULL DEFAULT 0.0,
    category_id     INTEGER,
    FOREIGN KEY (category_id) REFERENCES AppCategories(id) ON DELETE SET NULL
);