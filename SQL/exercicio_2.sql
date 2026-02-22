-- ========================================
-- Exercício 2 – Contagem de registros (SQL)
-- Baseado nas consultas do Exercício 1
-- ========================================

-- 1) Quantidade de registros da lista de filmes e categorias
SELECT
    COUNT(*)
FROM
    (
        -- SELECT filmes + categorias
    ) AS resultado
;


-- 2) Quantidade de atores e número de filmes participados
SELECT
    COUNT(*)
FROM
    (
        -- SELECT atores + contagem de filmes
    ) AS resultado
;


-- 3) Quantidade de atores que atuaram em filmes com mais de 120 minutos
SELECT
    COUNT(*)
FROM
    (
        -- SELECT atores em filmes longos
    ) AS resultado
;