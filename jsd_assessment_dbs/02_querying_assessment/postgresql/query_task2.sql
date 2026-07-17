-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
--
-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.
SELECT order_date, total_price -- ทำการใช้่คำสั่ง SELECT เพื่อค้นหา order_date และ total_price
FROM orders --จากตาราง orders
INNER JOIN staff ON orders.staff_id = staff.staff_id --โดยการใช้ INNER JOIN เพื่อเชื่อมตาราง orders และ staff 
--โดยตรวจสอบ Field order.staff_id=staff.staff_id(FK)ที่มีค่าตรงกัน
WHERE staff.first_name= 'Jane' and staff.last_name = 'Doe';--โดยมีเงื่อนไข ชื่อของพนักงานจะต้องเป็น Jane นามสกุล Doe

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js
-- จากโจทย์์ใน query_task2_bonus.mongodb.js จงเขียนคำสั่งค้นหาเพื่อหาคำสั่งซื้อทั้งหมดที่พนักงาน "Jane Doe" ดูแลอยู่
-- คำสั่งค้นหาของคุณควรคืนค่าเฉพาะฟิลด์ order_date และ total_price สำหรับคำสั่งซื้อเหล่านี้เท่านั้น

SELECT first_name, last_name ใช้คำสัง --SELECT เพื่อเลือก Field ที่ต้องการค้นหา คือ first_name และ last_name
FROM staff --จากตารางชื่อ staff
WHERE role = 'Cook'; --กำหนดเงื่อนไขให้เลือกเฉพาะตำแหน่ง 'Cook'

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
-- Your thinking:--
-- ผู้จัดการมีการเปลี่ยนแปลงกำหนดการเตรียมอาหารในครัวในนาทีสุดท้ายและต้องแจ้งให้พ่อครัวทุกคนทราบโดยเร็วที่สุด 
--พวกเขาต้องการ'ชื่อเต็ม'ของ'พนักงานทุกคน'-- ที่มี'ตำแหน่ง'ป็น 'พ่อครัว' เพื่อที่จะติดต่อได้โดยตรง