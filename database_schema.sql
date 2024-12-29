
-- Create the Notes Table
CREATE TABLE Notes (
    note_id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Unique ID for each note
    title TEXT NOT NULL,                        -- Title of the note
    content TEXT,                               -- Main content of the note
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- Timestamp when the note is created
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP -- Timestamp for the last update
);

-- Create the Tags Table (optional)
CREATE TABLE Tags (
    tag_id INTEGER PRIMARY KEY AUTOINCREMENT,   -- Unique ID for each tag
    tag_name TEXT UNIQUE NOT NULL               -- Name of the tag
);

-- Create the Note_Tags Table (optional, for many-to-many relationship)
CREATE TABLE Note_Tags (
    note_id INTEGER NOT NULL,                   -- Foreign key to Notes
    tag_id INTEGER NOT NULL,                    -- Foreign key to Tags
    PRIMARY KEY (note_id, tag_id),              -- Composite primary key
    FOREIGN KEY (note_id) REFERENCES Notes (note_id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES Tags (tag_id) ON DELETE CASCADE
);

-- Trigger to update the 'updated_at' column automatically on modification
CREATE TRIGGER update_timestamp
AFTER UPDATE ON Notes
FOR EACH ROW
BEGIN
    UPDATE Notes SET updated_at = CURRENT_TIMESTAMP WHERE note_id = OLD.note_id;
END;
