-- =========================
-- Stage 0:sanity check
-- =========================
-- 0.1看数据量
SELECT COUNT(*) AS total_rows FROM events;
-- 0.2事件类型分布（判断数据是否正常）
SELECT
    event_type,
    COUNT(*) AS cnt
FROM events
GROUP BY event_type
ORDER BY cnt DESC;
-- 0.3时间范围
SELECT
    MIN(event_time) AS min_time,
    MAX(event_time) AS max_time
FROM events;
-- =========================
-- Stage 1:用户行为分析
-- =========================
-- 1.1不同行为的用户数
SELECT
    event_type,
    COUNT(DISTINCT user_id) AS user_cnt
FROM events
GROUP BY event_type;
-- 1.2每个用户平均发生多少行为
SELECT
    AVG(cnt) AS avg_events_per_user
FROM (
    SELECT user_id,COUNT(*) AS cnt
    FROM events
    GROUP BY user_id
) t;
-- =========================
-- Stage 2:转化漏斗
-- =========================
-- 2.1漏斗整体
SELECT
    event_type,
    COUNT(DISTINCT user_id) AS users
FROM events
WHERE event_type IN ('view','cart','purchase')
GROUP BY event_type;
-- 2.2view → cart → purchase 转化
SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS view_users,
    COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) AS cart_users,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchase_users
FROM events;
-- =========================
-- Stage 3:销售指标
-- =========================
-- 3.1总GMV
SELECT
    SUM(price) AS total_revenue
FROM events
WHERE event_type = 'purchase';
-- 3.2订单数&客单价
SELECT
    COUNT(*) AS order_cnt,
    SUM(price) / COUNT(*) AS avg_order_value
FROM events
WHERE event_type = 'purchase';
-- 3.3活跃用户购买数
SELECT
    COUNT(DISTINCT user_id) AS purchasing_users
FROM events
WHERE event_type = 'purchase';
-- =========================
-- Stage 4:为pandas/Excel准备
-- =========================
-- 4.1用户级行为汇总表
CREATE TABLE user_behavior_summary AS
SELECT
    user_id,
    COUNT(*) AS total_events,
    SUM(event_type = 'view') AS view_cnt,
    SUM(event_type = 'cart') AS cart_cnt,
    SUM(event_type = 'purchase') AS purchase_cnt,
    SUM(CASE WHEN event_type = 'purchase' THEN price ELSE 0 END) AS total_spent
FROM events
GROUP BY user_id;