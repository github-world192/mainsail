-- ============================================================
--  Sample INSERT DATA  (依相依順序插入)
-- ============================================================

-- DEPARTMENT
INSERT INTO DEPARTMENT (DEPARTMENT_NAME, STATUS) VALUES
('客房部', 1),
('餐飲部', 1),
('門市部', 1),
('人資部', 1),
('資訊部', 1);

-- JOB_TITLE
INSERT INTO JOB_TITLE (JOB_TITLE_NAME, STATUS) VALUES
('總經理',  1),
('部門主管', 1),
('資深員工', 1),
('一般員工', 1),
('實習生',  1);

-- EMPLOYEE
INSERT INTO EMPLOYEE
    (DEPARTMENT_ID, EMPLOYEE_NAME, EMPLOYEE_MAIL, EMPLOYEE_PASSWORD,
     PHONE, ADDRESS, JOB_TITLE_ID, GENDER, STATUS, HIRE_DATE)
VALUES
(4, '林人資', 'hr.lin@hotel.com',
 '$2a$12$hashedpassword001', '0912-000-001', '台北市信義區', 2, 'F', 1, '2020-03-01'),
(5, '陳資訊', 'it.chen@hotel.com',
 '$2a$12$hashedpassword002', '0912-000-002', '新北市板橋區', 3, 'M', 1, '2021-07-15'),
(1, '王客房', 'room.wang@hotel.com',
 '$2a$12$hashedpassword003', '0912-000-003', '桃園市中壢區', 4, 'M', 1, '2022-01-10'),
(2, '張餐飲', 'food.zhang@hotel.com',
 '$2a$12$hashedpassword004', '0912-000-004', '台中市西屯區', 4, 'F', 1, '2023-05-20');

-- NEWS
INSERT INTO NEWS (TITLE, CONTENT, STATUS) VALUES
('夏日旅遊季開跑', '今年夏季推出全新住宿方案，歡迎提早預訂。', 1),
('餐廳全新菜單上線', '本月起導入季節限定食材，誠摯邀請貴賓品嚐。', 1),
('系統維護公告',    '系統將於本週日凌晨 02:00–04:00 進行例行維護。', 0);

-- ARTICLE (COVER_IMAGE 使用空白佔位；正式環境替換為實際二進位或路徑欄位)
INSERT INTO ARTICLE
    (EMPLOYEE_ID, CATEGORY, VIEW_COUNT, STATUS, CONTENT, COVER_IMAGE, TITLE)
VALUES
(2, '旅遊攻略', 0, 1,
 '台灣北部海岸線擁有絕美礁岩景觀，適合秋冬造訪…',
 '', '北海岸深度旅遊指南'),
(2, '美食推薦', 0, 1,
 '飯店行政主廚親授五道在地料理，品味台灣山海滋味…',
 '', '主廚私房料理特輯'),
(3, '住宿體驗', 0, 1,
 '全新翻修的海景套房現已開放，每間均附私人陽台…',
 '', '海景套房入住體驗分享');

-- REVIEW
INSERT INTO REVIEW (ARTICLE_ID, CONTENT, LIKE_COUNT, MEMBER_ID) VALUES
(1, '文章介紹得很詳盡，地圖也很清楚，下次一定去！', 5, 1),
(1, '北海岸真的超美，已經預訂了！',                  3, 2),
(2, '主廚料理看起來好吃，期待現場品嚐。',             2, 3),
(3, '海景套房照片很吸引人，想訂情人節方案。',          7, 1);
