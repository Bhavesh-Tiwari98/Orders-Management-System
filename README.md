# Orders-Management-System

<p>This project is an Orders Management System designed to track and process customer orders. Developed using SQL, the system manages order details, links them to products and customers, and generates essential business reports. It serves as a practical demonstration of my skills in database design and data manipulation.</p>

## Core Features

### Database Design:
<p>Created a database schema (OrdersDB) based on a normalized design with the following tables:</p>

<ul>
  <li><b>Customers:</b> Stores customer information with columns like <code>cid</code>, <code>first_name</code>, <code>last_name</code>, <code>email</code>, <code>password</code>, and <code>delivery_address</code>.</li>
  <li><b>Orders:</b> Records order details, including <code>order_id</code>, the associated <code>customer_id</code>, <code>order_date</code>, and <code>order_status</code>.</li>
  <li><b>Payments:</b> Tracks all payment transactions with <code>payment_id</code>, <code>order_id</code>, <code>payment_method</code>, <code>payment_amount</code>, and <code>payment_date</code>.</li>
  <li><b>Products:</b> Contains comprehensive product information, including <code>product_id</code>, <code>product_name</code>, <code>description</code>, <code>price</code>, <code>stock_quantity</code>, and <code>category_id</code>.</li>
  <li><b>Categories:</b> Defines product categories with <code>category_id</code> and <code>category_name</code>.</li>
  <li><b>OrderDetails:</b> A linking table that connects Orders to Products, with columns like <code>order_detail_id</code>, <code>order_id</code>, <code>product_id</code>, <code>quantity</code>, and <code>unit_price</code>.</li>
</ul>

### Data Integrity & Validation: 
<p>Implemented critical constraints to ensure data consistency and reliability:</p>

<ul>
  <li><b>Foreign Keys:</b> Established foreign key constraints to link Orders to Customers, Payments to Orders, Products to Categories, and OrderDetails to both Orders and Products.</li>
  <li><b>Validation:</b> Included checks to guarantee that QuantityOrdered is a positive value.</li>
</ul>

### CRUD Operations: 
<p>Developed and tested SQL queries to perform essential tasks:</p>

<ul>
  <li>Adding new customer records.</li>
  <li>Creating new orders and populating the <code>OrderDetails</code> table.</li>
  <li>Updating order information.</li>
  <li>Deleting orders and their associated details.</li>
</ul>

### Reporting:
<p>Wrote SQL queries to generate key reports for business insights, such as:</p>

<ul>
  <li>Total revenue generated per customer.</li>
  <li>List of products sold in a specific time frame.</li>
  <li>Top-selling products by quantity.</li>
</ul>

### Conclusion:
<p>This project highlights my ability to design, implement, and maintain a relational database system. It showcases practical skills in managing transactional data, ensuring data integrity, and generating reports that are vital for business operations. This experience solidifies my foundational knowledge of SQL and my capacity to build functional, well-structured database systems.</p>



