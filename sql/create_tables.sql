-- 1.创建数据库
CREATE DATABASE IF NOT EXISTS ecommerce_analysis;
USE ecommerce_analysis;

-- 2.创建事件表（核心表）
CREATE TABLE events (
    event_time VARCHAR(30),
    event_type VARCHAR(20),
    product_id BIGINT,
    category_id BIGINT,
    category_code VARCHAR(255),
    brand VARCHAR(100),
    price DECIMAL(10,2),
    user_id BIGINT,
    user_session VARCHAR(100)
);
INSERT INTO events
SELECT *
FROM events_2019_10_11;