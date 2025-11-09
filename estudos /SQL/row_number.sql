-- ESTUDANDO DUPLICIDADES 
-- Criando uma tabela de exemplo
SELECT
    id_cliente,
    nome,
    cpf,
    data_cadastro
FROM (
    SELECT
        id_cliente,
        nome,
        cpf,
        data_cadastro,
        ROW_NUMBER() OVER (PARTITION BY cpf ORDER BY data_cadastro DESC) AS rn
    FROM exemplo_duplicidade
) t
WHERE rn = 1;

---

-- 🧠 Explicando passo a passo:

-- ROW_NUMBER() cria uma numeração sequencial para cada grupo de CPF.

-- PARTITION BY cpf → diz que cada CPF é um grupo separado.

-- ORDER BY data_cadastro DESC → coloca o mais recente primeiro.

-- Depois, no WHERE rn = 1, você filtra só o primeiro (ou seja, o mais novo registro de cada CPF).



---
