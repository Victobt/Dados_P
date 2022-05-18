CREATE TABLE `Pedidos` (
	`NUMERO_NF` DECIMAL(250) NOT NULL,
	`Cliente_ID` varchar(255) NOT NULL,
	`Data_Pedido_Emisão` DATE(8) NOT NULL,
	`Nome_Destinatario` varchar(255) NOT NULL,
	`CPF/CNPJ` DECIMAL(14) NOT NULL,
	`Endereço` varchar(255) NOT NULL,
	`Bairo` varchar(255) NOT NULL,
	`Municipio` varchar(50) NOT NULL,
	`Cep` DECIMAL(20) NOT NULL,
	`Telefone` DECIMAL(12) NOT NULL,
	`Data_Saida` DATE(8) NOT NULL,
	`UF` TEXT(2) NOT NULL,
	PRIMARY KEY (`NUMERO_NF`)
);

CREATE TABLE `Itens_de_Pedido` (
	`Itens_ID` DECIMAL(250) NOT NULL,
	`Pedido_ID` varchar(250) NOT NULL,
	`Descricão_Produto` DECIMAL(250) NOT NULL,
	`NCM` FLOAT NOT NULL,
	`CFOP` FLOAT NOT NULL,
	`Preço_unitario` FLOAT NOT NULL,
	`UN` FLOAT NOT NULL,
	`Preço_Total` FLOAT NOT NULL,
	`Impostos` FLOAT NOT NULL,
	`Quantidade` DECIMAL(255) NOT NULL,
	PRIMARY KEY (`Itens_ID`)
);

ALTER TABLE `Pedidos` ADD CONSTRAINT `Pedidos_fk0` FOREIGN KEY (`NUMERO_NF`) REFERENCES `Itens_de_Pedido`(`Itens_ID`);



