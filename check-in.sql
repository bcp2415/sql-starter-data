UPDATE book
SET available = true
WHERE book_id = 12;

UPDATE loan
SET date_in = (SELECT CURDATE() today)
WHERE book_id = 12;

UPDATE patron
SET loan_id = null
WHERE patron_id = 12;

