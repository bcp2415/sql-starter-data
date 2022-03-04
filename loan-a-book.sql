UPDATE book
SET available = false
WHERE book_id = 10
AND can_travel = true;

INSERT INTO loan
SELECT can_travel FROM book;

INSERT INTO loan (loan.patron_id, loan.date_out, loan.book_id)
VALUES (20, CURDATE(), 10)
 (SELECT can_travel FROM loan INNER JOIN book ON loan.book_id = book.book_id WHERE loan.book_id = 10);

UPDATE patron
SET loan_id = (SELECT MAX(loan.loan_id) FROM loan)
WHERE patron_id = 20;

SELECT 1, "Hello";