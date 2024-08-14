-- Troca do tipo de quarto de uma reserva
UPDATE Reserva SET id_quarto = 202 WHERE id_reserva = 1;

-- Troca do gerente
UPDATE Funcionario SET primeiro_nome = 'Roberto', ultimo_nome = 'Silva', celular = '91111-1111' WHERE id_funcionario = 1;

-- Cancelamento de uma reserva
DELETE FROM Reserva WHERE id_reserva = 6;

-- Alteração do período de uma reserva
UPDATE Reserva SET check_in = '2024-08-10', check_out = '2024-08-14' WHERE id_reserva = 2;
