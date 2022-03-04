SELECT patron.first_name, patron.last_name, genre.genres, book.book_id, book.title FROM patron
INNER JOIN loan ON patron.patron_id = loan.patron_id
INNER JOIN book ON loan.book_id = book.book_id
INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE patron.loan_id IS NOT null;