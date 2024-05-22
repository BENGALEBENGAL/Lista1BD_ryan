use avaliacao_22a;

# 1

Insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
Values ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasias", '978-0064471190',"HarperCollins", 768, 'Inglês');

# 2

Insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
Values ("Cem Anos de Solidão", 'Gabriel Garcia Marquez' , 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", 'J.K. Rowling', 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", 'J.R.R. Tolkien', 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

# 3

Insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
Values("Filho de Vidraceiro", 'Japa', 1954, FALSE, "História", '978-0618640159', "HarperCollins", 445, "Português");

# 4

Update Livros 
Set disponivel = FALSE
Where ano_publicacao < 2000;

# 5

Update Livros
Set editora = 'PlumeBooks'
Where titulo = '1984';

# 6

Update Livros
Set idioma = 'Inglês'
Where editora = "Penguuin Books";

# 7

Update Livros
Set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
Where isbn = '978-0439708180';

# 8

Delete from Livros
Where categoria = 'Terror';

# 9

Delete from Livros
Where ano_publicacao < 1970 and idioma = 'Francês';

# 10

Delete from Livros
Where titulo = "As Crônicas de Nárnia";

# 11

Delete from Livros
Where editora =  "Penguin Books";

# 12

Select * from Livros
Where quantidade_paginas > 500;

# 13


Select categoria,
count(*) as total
From Livros
Group by categoria;

# 14

Select * from Livros
Limit 5;

# 15

Select Sum(quantidade_paginas) as total_pages,
AVG(quantidade_paginas) as avg_pages
From Livros
Where categoria = 'Drama';

# 16

Select avg(ano_publicacao) as avg_year
from Livros
Where disponivel = TRUE;

# 17

Select max(ano_publicacao), min(ano_publicacao)
from Livros;

# 18

Select * from Livros
Order by ano_publicacao DESC;

# 19

Select idioma = 'Ingles' from Livros
Union
Select idioma = 'Português' from Livros;

# 20

Select * from Livros
Where autor = "George Orwell";








