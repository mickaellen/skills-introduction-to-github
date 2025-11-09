-- PARTIÇÕES EM SQL SERVER
-- Criar uma função de partição
CREATE TABLE vendas (
    id_venda INT,
    cliente VARCHAR(50),
    produto VARCHAR(50),
    valor DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas VALUES
(1, 'Ana', 'Celular', 1200.00, '2024-01-10'),
(2, 'Ana', 'Notebook', 3500.00, '2024-02-05'),
(3, 'Ana', 'Fone', 300.00, '2024-02-10'),
(4, 'Beto', 'Celular', 1100.00, '2024-01-15'),
(5, 'Beto', 'Notebook', 3400.00, '2024-03-01'),
(6, 'Beto', 'Celular', 1300.00, '2024-03-20'),
(7, 'Carla', 'Celular', 900.00, '2024-01-25');