-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.


-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- เขียนคำสั่งค้นหาเพื่อนับจำนวนคำสั่งซื้อที่พนักงานแต่ละคนดำเนินการ 
-- ผลลัพธ์ควรแสดงชื่อนามสกุลเต็มของพนักงาน (ต่อกัน) และจำนวนคำสั่งซื้อทั้งหมดของพวกเขา, -- เรียงตามจำนวนจากมากไปน้อย

SELECT --เลือก
    s.first_name || ' ' || s.last_name AS full_name, -- ชื่อต่อด้วยช่องว่างและนามสกุล เพื่อแสดงแบบชื่อนามสกุลเต็มรูปแบบ
    COUNT(o.order_id) AS order_count--นับจำนวนคำสั่งซื้อโดยอ้างอิงจาก order_id
FROM Staff s -- ย่อการเรียกชื่อตาราง Staff เป็น s
JOIN Orders o ON s.staff_id = o.staff_id -- เชื่อมตาราง Orders o กับ Staff s โดยมีเงื่อนไข คือ s.staff.id = o.staff_id จะต้องตรงกัน 
GROUP BY s.staff_id, s.first_name, s.last_name -- จัดกลุ่มข้อมูลตามพนักงานแต่ละคน (ใช้ staff_id และชื่อ-นามสกุล) เพื่อให้ COUNT ทำงานถูกต้องตามกลุ่ม
ORDER BY order_count DESC; --นับจำนวนจากมากไปหาน้อย

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js
-- โบนัส: ชุดข้อมูลเหมือนกันในฐานข้อมูล MongoDB ซึ่งหมายความว่าสามารถดึงข้อมูลเชิงธุรกิจเดียวกันได้  
-- เขียนคำสั่งค้นหาที่เทียบเท่าสำหรับ MongoDB ดู query_task3_bonus.mongodb.js

SELECT name, unit, stock_level FROM ingredients WHERE stock_level > 100;

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--
-- ตอนสิ้นเดือน เจ้าของร้านอยากให้รางวัลพนักงานแคชเชียร์ที่ทำงานหนักที่สุด
-- เพื่อให้ตัดสินอย่างยุติธรรม เขาอยากดูว่าพนักงานแต่ละคนทำรายการสั่งซื้อไปกี่ครั้ง
-- โดยพนักงานที่ยุ่งที่สุดจะแสดงอยู่ด้านบนของรายการ



