INSERT INTO "ProductCategories"
(
  "Uid",
  "ProductCategoryId",
  "CategoryName",
  "Description"
)
SELECT
  gen_random_uuid(),
  'PC-' || LPAD(nextval('"ProductCategorySeq"')::text, 6, '0'),
  'Category ' || g,
  'Auto generated'
FROM generate_series(1, 2) AS g;
