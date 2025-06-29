CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM users WHERE username = 'admin'
    ) THEN
        INSERT INTO users (username, email)
        VALUES ('admin', 'admin@example.com');
    END IF;
END
$$;
