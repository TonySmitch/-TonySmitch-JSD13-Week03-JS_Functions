// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
//
// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.
use ("chrome-burger-db-JSD13");//เรียกใช้ฐานข้อมูล chrome-burger-db-JSD13
db.menu_items.find ({ price: { $lt: 10.00 } });//ค้นหาราคาจากตาราง menu_items ที่มีราคาต่ำกว่า $10.00

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql
//โบนัส: ชุดข้อมูลในฐานข้อมูล PostgreSQL เป็นข้อมูลเดียวกัน สามารถดึง Business Insight แบบเดียวกันได้
// เขียนคำสั่ง SQL ที่เทียบเท่าสำหรับ PostgreSQL ดูที่ query_task1_bonus.sql

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
