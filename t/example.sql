CREATE TABLE artist (
    artistid INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL 
  );

CREATE TABLE cd (
    cdid INTEGER PRIMARY KEY AUTOINCREMENT,
    artist INTEGER NOT NULL REFERENCES artist(artistid),
    title TEXT NOT NULL
  );

CREATE TABLE track (
    trackid INTEGER PRIMARY KEY AUTOINCREMENT,
    cd INTEGER NOT NULL REFERENCES cd(cdid),
    title TEXT NOT NULL
  );