CREATE TABLE books (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  publisher TEXT,
  cover_state TEXT,
  publish_date TEXT,
  archived INTEGER DEFAULT 0
);

CREATE TABLE music_albums (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  artist TEXT,
  release_date TEXT,
  label TEXT,
  archived INTEGER DEFAULT 0
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  genre TEXT,
  type TEXT,
  publisher TEXT,
  cover_state TEXT,
  publish_date TEXT,
  title TEXT,
  artist TEXT,
  release_date TEXT,
  label TEXT
);

CREATE TABLE labels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  color TEXT
);

CREATE TABLE games (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  platform TEXT,
  last_played_at TEXT,
  publish_date TEXT,
  archived INTEGER DEFAULT 0
);

CREATE TABLE authors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);
