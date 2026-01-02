# SQL_Queries
# SQL Interview Practice Questions (PostgreSQL)

These questions are designed for **top-level product companies** (FAANG, startups, senior backend, data roles).
Practice them using large datasets (1M+ rows).

Target table (example):
- ProductCategories
  - Id (int)
  - Uid (uuid)
  - ProductCategoryId (text, e.g. PC-000123)
  - CategoryName (text)
  - Description (text)

---

## 1. Basic Filtering & Ordering

1. Retrieve the latest 50 categories based on insertion order.
2. Fetch the first 100 categories alphabetically by category name.
3. Find all categories whose name starts with the letter 'A' (case-insensitive).
4. Find all categories whose description is NULL or empty.
5. Count how many categories exist in total.

---

## 2. Aggregation & Grouping

6. Find the number of categories for each description.
7. Find descriptions that are used by more than 1000 categories.
8. Count categories grouped by the first character of `CategoryName`.
9. Find the average length of category names.
10. Find the maximum and minimum category name length.

---

## 3. String Manipulation

11. Extract the numeric part from `ProductCategoryId` (e.g. PC-000123 → 123).
12. Find categories where the numeric part of `ProductCategoryId` is greater than 500000.
13. Find categories whose name length is greater than the average name length.
14. Find categories where `CategoryName` contains digits.
15. Convert all category names to uppercase and return the first 20 rows.

---

## 4. Window Functions (Very Important)

16. Assign a row number to each category ordered by `Id`.
17. Rank categories by the numeric value of `ProductCategoryId`.
18. Find the 10th, 100th, and 1000th inserted category.
19. Find the difference between the current and previous category numeric IDs.
20. Find duplicate category names using window functions.

---

## 5. Gaps & Sequences (Senior-Level)

21. Detect gaps in the numeric sequence of `ProductCategoryId`.
22. Find the first missing category number.
23. Check whether the sequence and table data are in sync.
24. Find the maximum jump between two consecutive category IDs.
25. Identify categories inserted out of numeric order.

---

## 6. Performance & Indexing

26. Write a query to search categories containing the word "car".
27. Analyze the execution plan for a category name search.
28. Identify which queries would benefit from indexing.
29. Compare performance of `LIKE` vs `ILIKE`.
30. Find categories using offset-based pagination.

---

## 7. Pagination & Large Data Handling

31. Implement pagination using LIMIT and OFFSET.
32. Implement pagination using keyset pagination (Id-based).
33. Fetch every 100000th row from the table.
34. Randomly sample 1000 categories efficiently.
35. Fetch the middle 100 rows from the table.

---

## 8. Data Quality & Validation

36. Find categories with duplicate `ProductCategoryId`.
37. Find categories with duplicate `Uid`.
38. Validate that all `ProductCategoryId` values follow the correct format.
39. Find categories where category name length exceeds a given threshold.
40. Find invalid or unexpected values in the description column.

---

## 9. Advanced Analytical Queries

41. Calculate the percentage distribution of categories by description.
42. Find the top 5 most frequent category names.
43. Find the least frequent category names.
44. Compare average name length per description.
45. Identify skewed data patterns in category names.

---

## 10. Real Interview Scenarios

46. You are asked to delete duplicate categories while keeping the earliest record. How would you do it?
47. How would you efficiently archive old categories?
48. How would you detect and prevent duplicate inserts at the database level?
49. How would you redesign the table for faster search at scale?
50. How would you validate data correctness after a bulk insert of 1M rows?

---

## Bonus (Think, Don’t Code)

51. Why are sequences not gapless in PostgreSQL?
52. Why should business IDs and primary keys be separate?
53. What problems arise when using OFFSET with millions of rows?
54. When would you choose a UUID vs BIGINT?
55. How would you scale this table to 100M rows?

---

Happy practicing 🚀
