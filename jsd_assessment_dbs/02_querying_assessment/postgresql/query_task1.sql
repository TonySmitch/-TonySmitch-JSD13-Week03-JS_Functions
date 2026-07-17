-- Task 1: Sides Menu Board
-- The owner wants to update the printed menu board that displays only the side dishes.
-- They need a list of every item in the 'Side' category along with its current price,
-- so the designer can produce an accurate board without having to check each item manually.
--
-- Hint: Write a query to find the name and price of all menu items that are in the 'Side' category.

SELECT name, price, category--ใช้คำสัง SELECT เพื่อเลือก Field ที่ต้องการค้นหา
FROM MenuItems --จากตารางชื่อ MenuItems
WHERE category = 'Side'; --กำหนดเงื่อนไขให้เลือกเฉพาะแถวที่อยู่ในหมวดหมู่ 'Side'

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task1_bonus.mongodb.js
--โบนัส: ชุดข้อมูลในฐานข้อมูล MongoDB เป็นข้อมูลเดียวกัน สามารถดึง Business Insight แบบเดียวกันได้
-- เขียนคำสั่ง Query ที่เทียบเท่าสำหรับ MongoDB ดูที่ query_task1_bonus.sql

SELECT * -- เลือกรายการทั้งหมด
FROM menuitems --จาก menuitems
WHERE price < 10.00; --โดยมีเงื่อนไข price น้อยกว่า 10.00

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- เจ้าของร้านต้องการพิมพ์รายการอาหารโดยต้องการให้แสดงเฉพาะ Side Dishes 
-- สิ่งที่ต้องการให้แสดงคือ ชื่ออาหาร (name) และ ราคา (price)ที่อยู่ในหมวดหมู่ 'Side'พร้อมราคาปัจจุบัน

