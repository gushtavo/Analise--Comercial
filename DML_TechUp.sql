INSERT INTO vendedores VALUES
    (1, 'Ana Souza', 29, 'Feminino'),
    (2, 'Carlos Lima', 35, 'Masculino'),
    (3, 'Mariana Alves', 31, 'Feminino'),
    (4, 'João Pedro', 27, 'Masculino'),
    (5, 'Ricardo Pereira', 24, 'Masculino'),
    (6, 'Gabriel Martins', 21, 'Masculino'),
    (7, 'Julia Silva', 38, 'Feminino');


INSERT INTO estados (idEstado, nomeEstado, regiao) VALUES
    (1, 'Acre', 'Norte'),
    (2, 'Alagoas', 'Nordeste'),
    (3, 'Amapá', 'Norte'),
    (4, 'Amazonas', 'Norte'),
    (5, 'Bahia', 'Nordeste'),
    (6, 'Ceará', 'Nordeste'),
    (7, 'Distrito Federal', 'Centro-Oeste'),
    (8, 'Espírito Santo', 'Sudeste'),
    (9, 'Goiás', 'Centro-Oeste'),
    (10, 'Maranhão', 'Nordeste'),
    (11, 'Mato Grosso', 'Centro-Oeste'),
    (12, 'Mato Grosso do Sul', 'Centro-Oeste'),
    (13, 'Minas Gerais', 'Sudeste'),
    (14, 'Pará', 'Norte'),
    (15, 'Paraíba', 'Nordeste'),
    (16, 'Paraná', 'Sul'),
    (17, 'Pernambuco', 'Nordeste'),
    (18, 'Piauí', 'Nordeste'),
    (19, 'Rio de Janeiro', 'Sudeste'),
    (20, 'Rio Grande do Norte', 'Nordeste'),
    (21, 'Rio Grande do Sul', 'Sul'),
    (22, 'Rondônia', 'Norte'),
    (23, 'Roraima', 'Norte'),
    (24, 'Santa Catarina', 'Sul'),
    (25, 'São Paulo', 'Sudeste'),
    (26, 'Sergipe', 'Nordeste'),
    (27, 'Tocantins', 'Norte');

INSERT INTO produtos (id_produto, produto, categoria, preco) VALUES
    (1, 'Mouse Gamer Óptico RGB', 'Mouse', 149.90),
    (2, 'Teclado Mecânico TKL Switch Azul', 'Teclado', 389.99),
    (3, 'Headset Gamer 7.1 Surround', 'Áudio', 299.00),
    (4, 'Webcam Full HD 1080p c/ Microfone', 'Câmera', 199.50),
    (5, 'Mousepad Grande Speed', 'Acessório', 45.90),
    (6, 'Monitor Curvo 27" 144Hz', 'Monitor', 1899.90),
    (7, 'Caixa de Som USB 2.0', 'Áudio', 85.00),
    (8, 'Microfone Condensador Profissional', 'Áudio', 450.00),
    (9, 'Controle Sem Fio para PC', 'Input Device', 220.00),
    (10, 'Hub USB-C 7-em-1', 'Adaptador', 129.90),
    (11, 'Teclado Sem Fio Ergonômico', 'Teclado', 159.99),
    (12, 'Mouse Vertical Ergonômico', 'Mouse', 99.90),
    (13, 'Pen Drive USB 3.0 128GB', 'Armazenamento', 75.50),
    (14, 'SSD Externo Portátil 500GB', 'Armazenamento', 489.00),
    (15, 'Impressora Multifuncional Tanque de Tinta', 'Impressora', 999.00),
    (16, 'Fone de Ouvido Bluetooth Cancelamento Ruído', 'Áudio', 550.00),
    (17, 'Cadeira Gamer Reclinável', 'Mobiliário', 1199.00),
    (18, 'Cabo HDMI 2.1 3 Metros', 'Cabo', 59.90),
    (19, 'Cooler para Notebook com RGB', 'Refrigeração', 110.00),
    (20, 'Adaptador de Rede Wi-Fi Dual Band', 'Rede', 89.90),
    (21, 'Teclado Mecânico Compacto 60%', 'Teclado', 319.90),
    (22, 'Mouse Gamer Sem Fio Recarregável', 'Mouse', 249.00),
    (23, 'Headset USB com Microfone Flexível', 'Áudio', 175.50),
    (24, 'Monitor Ultrawide 34" IPS', 'Monitor', 2599.99),
    (25, 'Mousepad RGB Extendido', 'Acessório', 89.00),
    (26, 'Placa de Captura Externa 4K', 'Vídeo', 780.00),
    (27, 'Webcam 4K Ultra HD', 'Câmera', 399.00),
    (28, 'Teclado de Membrana Silencioso', 'Teclado', 79.90),
    (29, 'Mouse Óptico Simples USB', 'Mouse', 25.00),
    (30, 'Caixa de Som Bluetooth Portátil', 'Áudio', 150.00),
    (31, 'Hub USB 3.0 de 4 Portas', 'Adaptador', 55.00),
    (32, 'Leitor de Cartão de Memória', 'Acessório', 35.00),
    (33, 'Stylus Pen Ativa para Tablets/PC', 'Input Device', 270.00),
    (34, 'Dock Station para Notebook', 'Adaptador', 420.00),
    (35, 'Teclado Numérico USB', 'Teclado', 49.90),
    (36, 'Mouse sem Fio Silencioso', 'Mouse', 69.90),
    (37, 'Fone de Ouvido Headband Com Fio', 'Áudio', 35.50),
    (38, 'Projetor Portátil Mini LED', 'Vídeo', 1150.00),
    (39, 'No-break 600VA Bivolt', 'Energia', 320.00),
    (40, 'Organizador de Cabos de Silicone (5un)', 'Acessório', 29.90);
    
INSERT INTO metas (id_vendedor, mes, meta_mensal) VALUES
     -- Outubro 2024
    (1, 'Out/2024', 85000.00),
    (2, 'Out/2024', 120000.00),
    (3, 'Out/2024', 60000.00),
    (4, 'Out/2024', 70000.00),
    (5, 'Out/2024', 45000.00),
    (6, 'Out/2024', 150000.00),

    -- Novembro 2024
    (1, 'Nov/2024', 90000.00),
    (2, 'Nov/2024', 130000.00),
    (3, 'Nov/2024', 65000.00),
    (4, 'Nov/2024', 75000.00),
    (5, 'Nov/2024', 50000.00),
    (6, 'Nov/2024', 160000.00),

    -- Dezembro 2024 (Pico)
    (1, 'Dez/2024', 120000.00),
    (2, 'Dez/2024', 160000.00),
    (3, 'Dez/2024', 90000.00),
    (4, 'Dez/2024', 100000.00),
    (5, 'Dez/2024', 75000.00),
    (6, 'Dez/2024', 180000.00),

    -- Janeiro 2025
    (1, 'Jan/2025', 70000.00),
    (2, 'Jan/2025', 110000.00),
    (3, 'Jan/2025', 50000.00),
    (4, 'Jan/2025', 55000.00),
    (5, 'Jan/2025', 35000.00),
    (6, 'Jan/2025', 120000.00),

    -- Fevereiro 2025
    (1, 'Fev/2025', 75000.00),
    (2, 'Fev/2025', 115000.00),
    (3, 'Fev/2025', 52000.00),
    (4, 'Fev/2025', 58000.00),
    (5, 'Fev/2025', 36000.00),
    (6, 'Fev/2025', 130000.00),

    -- Março 2025
    (1, 'Mar/2025', 80000.00),
    (2, 'Mar/2025', 125000.00),
    (3, 'Mar/2025', 55000.00),
    (4, 'Mar/2025', 62000.00),
    (5, 'Mar/2025', 38000.00),
    (6, 'Mar/2025', 140000.00),

    -- Abril 2025
    (1, 'Abr/2025', 82000.00),
    (2, 'Abr/2025', 130000.00),
    (3, 'Abr/2025', 60000.00),
    (4, 'Abr/2025', 65000.00),
    (5, 'Abr/2025', 40000.00),
    (6, 'Abr/2025', 150000.00),

    -- Maio 2025
    (1, 'Mai/2025', 88000.00),
    (2, 'Mai/2025', 140000.00),
    (3, 'Mai/2025', 64000.00),
    (4, 'Mai/2025', 70000.00),
    (5, 'Mai/2025', 45000.00),
    (6, 'Mai/2025', 160000.00),

    -- Junho 2025
    (1, 'Jun/2025', 90000.00),
    (2, 'Jun/2025', 145000.00),
    (3, 'Jun/2025', 68000.00),
    (4, 'Jun/2025', 75000.00),
    (5, 'Jun/2025', 47000.00),
    (6, 'Jun/2025', 165000.00),

    -- Julho 2025
    (1, 'Jul/2025', 93000.00),
    (2, 'Jul/2025', 150000.00),
    (3, 'Jul/2025', 70000.00),
    (4, 'Jul/2025', 78000.00),
    (5, 'Jul/2025', 48000.00),
    (6, 'Jul/2025', 170000.00),

    -- Agosto 2025
    (1, 'Ago/2025', 100000.00),
    (2, 'Ago/2025', 165000.00),
    (3, 'Ago/2025', 76000.00),
    (4, 'Ago/2025', 85000.00),
    (5, 'Ago/2025', 52000.00),
    (6, 'Ago/2025', 180000.00),

    -- Setembro 2025
    (1, 'Set/2025', 110000.00),
    (2, 'Set/2025', 170000.00),
    (3, 'Set/2025', 80000.00),
    (4, 'Set/2025', 90000.00),
    (5, 'Set/2025', 55000.00),
    (6, 'Set/2025', 190000.00),

    -- Outubro 2025
    (1, 'Out/2025', 120000.00),
    (2, 'Out/2025', 180000.00),
    (3, 'Out/2025', 90000.00),
    (4, 'Out/2025', 100000.00),
    (5, 'Out/2025', 60000.00),
    (6, 'Out/2025', 200000.00),

    -- Novembro 2025
    (1, 'Nov/2025', 140000.00),
    (2, 'Nov/2025', 200000.00),
    (3, 'Nov/2025', 100000.00),
    (4, 'Nov/2025', 110000.00),
    (5, 'Nov/2025', 65000.00),
    (6, 'Nov/2025', 220000.00);

DELETE FROM metas;