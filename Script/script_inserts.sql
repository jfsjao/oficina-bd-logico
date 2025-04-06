-- Inserção de dados para testes no projeto E-commerce

-- Clientes
INSERT INTO cliente (nome, email) VALUES
('João Silva', 'joao@email.com'),
('Maria Oliveira', 'maria@email.com'),
('Loja das Flores', 'contato@flores.com');

-- Pessoa Física
INSERT INTO pessoa_fisica (id_cliente, cpf, data_nascimento) VALUES
(1, '123.456.789-00', '1990-05-15'),
(2, '987.654.321-00', '1985-10-20');

-- Pessoa Jurídica
INSERT INTO pessoa_juridica (id_cliente, cnpj, razao_social) VALUES
(3, '12.345.678/0001-99', 'Loja das Flores LTDA');

-- Pagamentos
INSERT INTO pagamento (id_cliente, tipo_pagamento, detalhes_pagamento) VALUES
(1, 'Cartão de Crédito', 'Visa - Final 1234'),
(1, 'Pix', 'Chave: joao@email.com'),
(2, 'Boleto', 'Vencimento em 5 dias'),
(3, 'Cartão de Débito', 'MasterCard - Final 5678');

-- Pedidos
INSERT INTO pedido (id_cliente, data_pedido, valor_total) VALUES
(1, '2025-04-01', 150.00),
(1, '2025-04-03', 220.00),
(2, '2025-04-02', 250.00),
(3, '2025-04-05', 310.00);

-- Entregas
INSERT INTO entrega (id_pedido, status_entrega, codigo_rastreamento) VALUES
(1, 'Enviado', 'ABC123XYZ'),
(2, 'Entregue', 'XYZ789DEF'),
(3, 'Processando', 'ENT567LMN'),
(4, 'Aguardando Envio', 'FLORES321AAA');
