-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.
SELECT name, stock_level, supplier_id --เลือกชื่อวัตถุดิบ, ระดับสต็อก, และ supplier_id
FROM ingredients --เลือกจากตาราง ingredients
WHERE supplier_id = ( --ใช้เงื่อนไขในการกรองข้อมูลโดยใช้ supplier_id ที่ตรงกับชื่อซัพพลายเออร์ 'Freshest Farm Produce'
    SELECT supplier_id
    FROM suppliers
    WHERE name = 'Freshest Farm Produce'
);
-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js
SELECT SUM(total_price) AS total_revenue--นับผลรวมของราคาสินค้าทั้งหมดและตั้งชื่อคอลัมน์เป็น total_revenue
FROM orders;--เลือกจากตาราง orders

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- ผู้จัดการเพิ่งได้ยินว่า 'Freshest Farm Produce' อาจส่งของล่าช้าในการจัดส่งครั้งหน้า
-- ก่อนที่จะตัดสินใจว่าจะหาซัพพลายเออร์อื่นมาทดแทนหรือไม่ เขาต้องรู้ให้ชัดเจน
-- ว่าส่วนประกอบใดบ้างที่พึ่งพาซัพพลายเออร์รายนั้น เพื่อที่จะประเมินผลกระทบต่อเมนู
-- ในแบบทดสอบนี้ ต้องการชื่อวัตถุดิบทั้งหมดที่ Supplier 'Freshest Farm Produce' จัดหาให้ เพื่อให้ง่ายต่อการดูรายงานจึงชื่อ แสดงชื่อ วัตถุดิบ, ระดับสต็อก, และ supplier_id เพื่อให้ผู้จัดการสามารถประเมินผลกระทบต่อเมนูได้อย่างชัดเจน