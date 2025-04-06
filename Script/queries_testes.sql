-- 1. Selecionar todos os clientes
SELECT * FROM cliente;

-- 2. Mostrar pedidos com valor acima de 200
SELECT * FROM pedido WHERE valor_total > 200;

-- 3. Atributo derivado: mostrar cliente e 10% de desconto simulado sobre o valor do pedido
SELECT 
  c.nome, 
  p.valor_total, 
  p.valor_total * 0.1 AS desconto_estimado
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente;

-- 4. Contar número de pedidos por cliente
SELECT 
  c.nome, 
  COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 5. Total de valor dos pedidos por cliente (HAVING > 300)
SELECT 
  c.nome, 
  SUM(p.valor_total) AS total_gasto
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
HAVING SUM(p.valor_total) > 300;

-- 6. Lista de entregas com status diferente de 'Entregue'
SELECT * FROM entrega WHERE status_entrega != 'Entregue';

-- 7. Consultar todas as formas de pagamento usadas por cada cliente
SELECT 
  c.nome, 
  pg.tipo_pagamento, 
  pg.detalhes_pagamento
FROM cliente c
JOIN pagamento pg ON c.id_cliente = pg.id_cliente
ORDER BY c.nome;

-- 8. Mostrar pedidos e seus respectivos status de entrega
SELECT 
  p.id_pedido, 
  c.nome, 
  e.status_entrega, 
  e.codigo_rastreamento
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN entrega e ON p.id_pedido = e.id_pedido
ORDER BY p.id_pedido;
