# E-Commerce Data Warehouse: Medallion Architecture & Star Schema

## Project Overview
This project demonstrates the end-to-end creation of an analytical data warehouse for an online store using **MySQL** and **phpMyAdmin**. It showcases the transformation of raw transactional data (OLTP) into a query-optimized analytical model (OLAP) using industry-standard data engineering practices.

## Key Architectures Implemented
*   **Medallion Architecture:** 
    *   **Bronze Layer:** Ingested raw, unvalidated operational data.
    *   **Silver Layer:** Cleansed and standardized the data (handled missing dates, normalized capitalization, corrected null/zero quantities).
    *   **Gold Layer:** Business-level data structured for reporting.
*   **Dimensional Modeling (Star Schema):**
    *   Structured the Gold layer using a Star Schema, separating descriptive attributes into **Dimension Tables** (`golddimcustomer`, `golddimproduct`, `golddimdate`) and quantitative metrics into a central **Fact Table** (`goldfactsales`).

<img width="1862" height="1016" alt="image" src="https://github.com/user-attachments/assets/a0f61bbc-e33e-4401-9846-8c03f965b832" />

## Tech Stack
*   **Database:** MySQL (10.4.32-MariaDB)
*   **Administration:** phpMyAdmin
