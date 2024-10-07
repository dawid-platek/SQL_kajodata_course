ALTER TABLE cost_forecast RENAME COLUMN "year" TO cost_year;
ALTER TABLE cost_forecast RENAME COLUMN sales_forecast TO cost_forecast;

SELECT * FROM cost_forecast