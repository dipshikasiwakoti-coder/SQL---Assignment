-- AI Model Registry
-- Table: ai_models Columns: model_id PK, model_name, student_name, algorithm, accuracy, trained_on
-- Insert 5 models trained by different students, using at least 3 different algorithms (e.g., 'CNN', 'RNN', 'SVM').
-- Two students worked on the same algorithm — insert those records. Then select all and spot them.
-- Select only model_name, student_name, and accuracy.
-- What is the format for inserting a DATE? Try inserting today's date as trained_on.

CREATE TABLE ai_models
(
    model_id INT PRIMARY KEY,
    model_name VARCHAR(50),
    student_name VARCHAR(100),
    algorithm VARCHAR,
    accuracy FLOAT,
    trained_on DATE
);
INSERT INTO ai_models (model_id, model_name, student_name, algorithm, accuracy, trained_on)
VALUES
(1, 'ImageNet Classifier', 'Aarav Sharma', 'CNN', 96.45, '2022-05-17'),
(2, 'Handwriting Reader', 'Priya Singh', 'CNN', 94.80, '2023-04-07'),
(3, 'ChatBot Predictor', 'Rohan Gupta', 'RNN', 91.35, '2020-12-22'),
(4, 'Spam Email Detector', 'Sneha Verma', 'SVM', 89.75, '2025-08-15'),
(5, 'Disease Predictor', 'Kabir Joshi', 'Decision Tree', 93.20, '2026-07-27');

SELECT *
FROM ai_models
WHERE algorithm = 'CNN';

SELECT model_name, student_name, accuracy
FROM ai_models;

INSERT INTO ai_models
(model_id, model_name, student_name, algorithm, accuracy, trained_on)
VALUES
(6, 'Face Recognition', 'Anjali Rai', 'CNN', 95.60, '2026-07-27');