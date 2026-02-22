-- ========================================
-- Exercício 2 – SQL (Sakila)
-- Contagem de registros
-- ========================================

-- Contagem 1: Quantidade de filmes com categorias

SELECT
    COUNT(*) AS total_registros
FROM film f
INNER JOIN film_category fc
    ON f.film_id = fc.film_id
INNER JOIN category c
    ON fc.category_id = c.category_id;


-- Contagem 2: Quantidade de atores com participação em filmes

SELECT
    COUNT(DISTINCT a.actor_id) AS total_registros
FROM actor a
INNER JOIN film_actor fa
    ON a.actor_id = fa.actor_id;


-- Contagem 3: Quantidade de atores que atuaram em filmes com mais de 120 minutos

SELECT
    COUNT(DISTINCT a.actor_id) AS total_registros
FROM actor a
INNER JOIN film_actor fa
    ON a.actor_id = fa.actor_id
INNER JOIN film f
    ON fa.film_id = f.film_id
WHERE f.length > 120;    