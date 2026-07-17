// Task 4: Total Revenue Summary
// At the end of the trading period, the owner wants a single figure that shows how much revenue
// the truck has generated across all recorded orders. This number will be used in their
// financial summary report, so the result should be returned as a single value named total_revenue.
//
// Hint: Write an aggregation query on the orders collection to calculate the total revenue from all orders combined.
// The result should be a single document with a field named total_revenue.
use ("chrome-burger-db-JSD13");
db.orders.aggregate([
  {
    $group: {
      _id: null, // ใส่ null เพราะเราต้องการรวมทุกออเดอร์เข้าด้วยกัน ไม่แยกกลุ่ม
      total_revenue: { $sum: "$total_price" } // รวมค่าจากฟิลด์ total_price
    }
  },
  {
    $project: {
      _id: 0, // ซ่อนฟิลด์ _id เพื่อให้เหลือเฉพาะฟิลด์ total_revenue ตามโจทย์สั่ง
      total_revenue: 1
    }
  }
])
// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task4_bonus.sql
use ("chrome-burger-db-JSD13");
// ประกาศตัวแปร: supplier เพื่อ หา supplier_id จากชื่อซัพพลายเออร์
var supplier = db.suppliers.findOne({ name: "Freshest Farm Produce" });

// ใช้ supplier_id เพื่อค้นหาวัตถุดิบ
db.ingredients.find(
  { supplier_id: supplier.supplier_id },
  { _id: 0, name: 1, stock_level: 1, supplier_id: 1 }
);
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
