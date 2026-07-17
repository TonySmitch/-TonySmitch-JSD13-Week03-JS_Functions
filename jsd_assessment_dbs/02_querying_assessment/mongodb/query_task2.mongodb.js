// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql
use ("chrome-burger-db-JSD13");//เรียกใช้ฐานข้อมูล chrome-burger-db-JSD13
db.staff.find(//ใช้คำสั่ง find เพื่อค้นหา ตำแหน่ง "Cook"
  { role: "Cook" },                
  { first_name: 1, last_name: 1 }  //หมายถึงแสดงชื่อ และ นามสกุล หากต้องการซ่อนส่วนใดส่วนหนึ่งให้เปลี่ยนจาก 1 เป็น 0
)
// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//
