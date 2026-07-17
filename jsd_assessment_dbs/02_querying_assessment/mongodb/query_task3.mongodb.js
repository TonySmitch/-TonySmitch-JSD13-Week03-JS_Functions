// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
// งานที่ 3: ตรวจสอบการเติมสต็อก 
// ก่อนที่จะสั่งวัตถุดิบประจำสัปดาห์ ผู้จัดการอยากหลีกเลี่ยงการสั่งวัตถุดิบที่มีอยู่แล้วในสต็อกเพียงพอ 
// พวกเขาต้องการรายชื่อวัตถุดิบทั้งหมดที่มีจำนวนสต็อก 100 ขึ้นไป เพื่อให้สามารถลดลำดับความสำคัญในการสั่งซื้อสัปดาห์นี้ได้ 
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.
// เคล็ดลับ: เขียนคำสั่งค้นหาเพื่อหาวัตถุดิบทั้งหมดในคอลเลกชัน ingredients ที่มี stock_level 100.00 ขึ้นไป 

// โบนัส: ชุดข้อมูลเหมือนกันในฐานข้อมูล PostgreSQL ดังนั้นสามารถดึงข้อมูลเชิงธุรกิจเดียวกันได้ 
// เขียนคำสั่งที่เทียบเท่าสำหรับ PostgreSQL ดูไฟล์ query_task3_bonus.sql 


//db.ingredients.find({ stock_level: { $gt: 100 } },   // เงื่อนไข: stock_level มากกว่า 100
//{ name: 1, units: 1, stock_level: 1, _id: 1 } // เลือกเฉพาะฟิลด์ name, unit, stock_level และ _id
//);
use ("chrome-burger-db-JSD13");
db.ingredients.find({ stock_level: { $gte: 100 } }, { name: 1, unit: 1, stock_level: 1, _id: 1 });

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql

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
