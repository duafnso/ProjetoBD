-- Inserir dados na tabela Quarto
INSERT INTO Quarto (numero_quarto, tipo_quarto, qtd_camas, valor_diaria) VALUES
(101, 'executivo', 2, 300),
(102, 'executivo', 1, 300),
(201, 'luxo', 3, 500),
(202, 'luxo', 2, 500),
(301, 'superluxo', 4, 700),
(302, 'superluxo', 2, 700),
(303, 'superluxo', 3, 700),
(304, 'luxo', 1, 500),
(305, 'executivo', 1, 300);

-- Inserir dados na tabela Funcionario
INSERT INTO Funcionario (primeiro_nome, ultimo_nome, celular, email, cargo) VALUES
('Carlos', 'Silva', '99999-9999', 'carlos@hotel.com', 'gerente'),
('Ana', 'Souza', '98888-8888', 'ana@hotel.com', 'recepcionista'),
('João', 'Pereira', '97777-7777', 'joao@hotel.com', 'recepcionista'),
('Maria', 'Oliveira', '96666-6666', 'maria@hotel.com', 'recepcionista'),
('Paulo', 'Santos', '95555-5555', 'paulo@hotel.com', 'recepcionista');

-- Inserir dados na tabela Hospede
INSERT INTO Hospede (primeiro_nome, ultimo_nome, celular, email) VALUES
('João', 'Costa', '94444-4444', 'joao@guest.com'),
('Fernanda', 'Silva', '93333-3333', 'fernanda@guest.com'),
('Roberta', 'Souza', '92222-2222', 'roberta@guest.com'),
('Carlos', 'Almeida', '91111-1111', 'carlos@guest.com'),
('Ana', 'Pereira', '90000-0000', 'ana@guest.com'),
('Maria', 'Fernandes', '98888-9999', 'maria@guest.com');

-- Inserir dados na tabela Reserva
INSERT INTO Reserva (id_hospede, id_funcionario, id_quarto, check_in, check_out, num_adultos, num_criancas) VALUES
(1, 2, 101, '2024-08-01', '2024-08-05', 2, 0),
(2, 3, 201, '2024-08-02', '2024-08-06', 2, 1),
(3, 2, 301, '2024-08-03', '2024-08-08', 3, 2),
(4, 4, 202, '2024-08-04', '2024-08-10', 1, 0),
(5, 3, 302, '2024-08-05', '2024-08-07', 2, 0),
(6, 5, 303, '2024-08-06', '2024-08-11', 4, 2),
(1, 3, 304, '2024-08-07', '2024-08-09', 1, 1),
(2, 2, 102, '2024-08-08', '2024-08-12', 2, 2),
(3, 4, 305, '2024-08-09', '2024-08-15', 2, 0);

-- Inserir dados na tabela Gerencia
INSERT INTO Gerencia (id_gerente, id_recepcionista) VALUES
(1, 2),
(1, 3);
