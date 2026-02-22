-- ========================================
-- Exercício 1 – SQL (Sakila)
-- Consulta 1: Filmes e suas categorias
-- ========================================

SELECT
    f.title AS filme,
    c.name  AS categoria
FROM film f
INNER JOIN film_category fc
    ON f.film_id = fc.film_id
INNER JOIN category c
    ON fc.category_id = c.category_id
ORDER BY f.title;

-- ========================================
-- Consulta 2: Atores e número de filmes
-- ========================================

SELECT
    a.first_name AS nome,
    a.last_name  AS sobrenome,
    COUNT(fa.film_id) AS total_filmes
FROM actor a
INNER JOIN film_actor fa
    ON a.actor_id = fa.actor_id
GROUP BY
    a.actor_id,
    a.first_name,
    a.last_name
ORDER BY
    total_filmes DESC;

-- ========================================
-- Consulta 3: Atores em filmes com mais de 120 minutos
-- ========================================

SELECT
    a.first_name AS nome,
    a.last_name  AS sobrenome,
    COUNT(fa.film_id) AS total_filmes
FROM actor a
INNER JOIN film_actor fa
    ON a.actor_id = fa.actor_id
INNER JOIN film f
    ON fa.film_id = f.film_id
WHERE
    f.length > 120
GROUP BY
    a.actor_id,
    a.first_name,
    a.last_name
ORDER BY
    total_filmes DESC;