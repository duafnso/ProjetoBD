CREATE TABLE Quarto (
  id_quarto INT AUTO_INCREMENT,
  numero_quarto INT NOT NULL,
  tipo_quarto VARCHAR(20) NOT NULL,
  qtd_camas INT NOT NULL,
  valor_diaria DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id_quarto)
);

CREATE TABLE Funcionario (
  id_funcionario INT AUTO_INCREMENT,
  primeiro_nome VARCHAR(50) NOT NULL,
  ultimo_nome VARCHAR(50) NOT NULL,
  celular VARCHAR(15) NOT NULL,
  email VARCHAR(50),
  cargo VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_funcionario)
);

CREATE TABLE Hospede (
  id_hospede INT AUTO_INCREMENT,
  primeiro_nome VARCHAR(50) NOT NULL,
  ultimo_nome VARCHAR(50) NOT NULL,
  celular VARCHAR(15) NOT NULL,
  email VARCHAR(50),
  PRIMARY KEY (id_hospede)
);

CREATE TABLE Reserva (
  id_reserva INT AUTO_INCREMENT,
  id_hospede INT,
  id_funcionario INT,
  id_quarto INT,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  num_adultos INT NOT NULL,
  num_criancas INT NOT NULL,
  PRIMARY KEY (id_reserva),
  FOREIGN KEY (id_hospede) REFERENCES Hospede (id_hospede),
  FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario),
  FOREIGN KEY (id_quarto) REFERENCES Quarto (id_quarto)
);

CREATE TABLE Gerencia (
  id_gerente INT,
  id_recepcionista INT,
  PRIMARY KEY(id_gerente, id_recepcionista),
  FOREIGN KEY (id_gerente) REFERENCES Funcionario (id_funcionario),
  FOREIGN KEY (id_recepcionista) REFERENCES Funcionario (id_funcionario)
);