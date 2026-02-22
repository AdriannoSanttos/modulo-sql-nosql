-- ========================================
-- Exercício 1 – Consultas SQL
-- (Fonte de dados a confirmar: Sakila ou adaptação)
-- ========================================

-- 1) Lista de filmes e suas categorias correspondentes
-- Objetivo: relacionar filmes com categorias
-- Esperado: título do filme + nome da categoria

SELECT
    -- film.title,
    -- category.name
FROM
    -- film
    -- JOIN film_category
    -- JOIN category
;


-- 2) Lista de todos os atores com o número de filmes que cada ator participou
-- Objetivo: contar quantos filmes cada ator fez
-- Ordenar do ator com MAIS filmes para o com MENOS

SELECT
    -- actor.first_name,
    -- actor.last_name,
    -- COUNT(film_actor.film_id) AS total_filmes
FROM
    -- actor
    -- JOIN film_actor
GROUP BY
    -- actor.actor_id
ORDER BY
    -- total_filmes DESC
;


-- 3) Lista de atores que atuaram em filmes com mais de 120 minutos
-- Objetivo: filtrar filmes longos e contar participação dos atores

SELECT
    -- actor.first_name,
    -- actor.last_name,
    -- COUNT(film_actor.film_id) AS total_filmes
FROM
    -- actor
    -- JOIN film_actor
    -- JOIN film
WHERE
    -- film.length > 120
GROUP BY
    -- actor.actor_id
ORDER BY
    -- total_filmes DESC
;