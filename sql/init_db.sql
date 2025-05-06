-- init_db.sql
CREATE TABLE IF NOT EXISTS stock_data (
    id SERIAL PRIMARY KEY,
    stock_symbol VARCHAR(10),
    date DATE,
    open_price FLOAT,
    close_price FLOAT,
    volume BIGINT
);

INSERT INTO stock_data (stock_symbol, date, open_price, close_price, volume)
VALUES 
('AAPL', '2024-05-01', 190.5, 192.3, 1200000),
('GOOGL', '2024-05-01', 2800.7, 2825.9, 850000);
