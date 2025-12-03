# -*- coding: utf-8 -*-
import pandas as pd
import datetime
import random

# vendedores
vendedores = list(range(1, 7))

# Produtos + categorias
produtos = {
    1: ('Mouse Gamer Optico RGB', 'Mouse', 149.90),
    2: ('Teclado Mecanico TKL Switch Azul', 'Teclado', 389.99),
    3: ('Headset Gamer 7.1 Surround', 'Audio', 299.00),
    4: ('Webcam Full HD 1080p c/ Microfone', 'Camera', 199.50),
    5: ('Mousepad Grande Speed', 'Acessorio', 45.90),
    6: ('Monitor Curvo 27" 144Hz', 'Monitor', 1899.90),
    7: ('Caixa de Som USB 2.0', 'Audio', 85.00),
    8: ('Microfone Condensador Profissional', 'Audio', 450.00),
    9: ('Controle Sem Fio para PC', 'Input Device', 220.00),
    10: ('Hub USB-C 7-em-1', 'Adaptador', 129.90),
    11: ('Teclado Sem Fio Ergonomico', 'Teclado', 159.99),
    12: ('Mouse Vertical Ergonomico', 'Mouse', 99.90),
    13: ('Pen Drive USB 3.0 128GB', 'Armazenamento', 75.50),
    14: ('SSD Externo Portatil 500GB', 'Armazenamento', 489.00),
    15: ('Impressora Multifuncional Tanque de Tinta', 'Impressora', 999.00),
    16: ('Fone de Ouvido Bluetooth Cancelamento Ruido', 'Audio', 550.00),
    17: ('Cadeira Gamer Reclinavel', 'Mobiliario', 1199.00),
    18: ('Cabo HDMI 2.1 3 Metros', 'Cabo', 59.90),
    19: ('Cooler para Notebook com RGB', 'Refrigeracao', 110.00),
    20: ('Adaptador de Rede Wi-Fi Dual Band', 'Rede', 89.90),
    21: ('Teclado Mecanico Compacto 60%', 'Teclado', 319.90),
    22: ('Mouse Gamer Sem Fio Recarregavel', 'Mouse', 249.00),
    23: ('Headset USB com Microfone Flexivel', 'Audio', 175.50),
    24: ('Monitor Ultrawide 34" IPS', 'Monitor', 2599.99),
    25: ('Mousepad RGB Extendido', 'Acessorio', 89.00),
    26: ('Placa de Captura Externa 4K', 'Video', 780.00),
    27: ('Webcam 4K Ultra HD', 'Camera', 399.00),
    28: ('Teclado de Membrana Silencioso', 'Teclado', 79.90),
    29: ('Mouse Optico Simples USB', 'Mouse', 25.00),
    30: ('Caixa de Som Bluetooth Portatil', 'Audio', 150.00),
    31: ('Hub USB 3.0 de 4 Portas', 'Adaptador', 55.00),
    32: ('Leitor de Cartao de Memoria', 'Acessorio', 35.00),
    33: ('Stylus Pen Ativa para Tablets/PC', 'Input Device', 270.00),
    34: ('Dock Station para Notebook', 'Adaptador', 420.00),
    35: ('Teclado Numerico USB', 'Teclado', 49.90),
    36: ('Mouse sem Fio Silencioso', 'Mouse', 69.90),
    37: ('Fone de Ouvido Headband Com Fio', 'Audio', 35.50),
    38: ('Projetor Portatil Mini LED', 'Video', 1150.00),
    39: ('No-break 600VA Bivolt', 'Energia', 320.00),
    40: ('Organizador de Cabos de Silicone (5un)', 'Acessorio', 29.90)
}

estados = {
    1: 'Rio Branco', 2: 'Maceio', 3: 'Macapa', 4: 'Manaus', 5: 'Salvador', 6: 'Fortaleza',
    7: 'Brasilia', 8: 'Vitoria', 9: 'Goiania', 10: 'Sao Luis', 11: 'Cuiaba', 12: 'Campo Grande',
    13: 'Belo Horizonte', 14: 'Belem', 15: 'Joao Pessoa', 16: 'Curitiba', 17: 'Recife', 18: 'Teresina',
    19: 'Rio de Janeiro', 20: 'Natal', 21: 'Porto Alegre', 22: 'Porto Velho', 23: 'Boa Vista',
    24: 'Florianopolis', 25: 'Sao Paulo', 26: 'Aracaju', 27: 'Palmas'
}


# Gerando data de inicio e fim
start = datetime.date(2024, 10, 1)
fim = datetime.date(2025, 11, 30)
delta = (fim - start).days

linhas = []
id_counter = 2000

# Gerendo os dados
for _ in range(1670):
    id_venda = id_counter
    id_counter += 1

    id_vendedor = random.choice(vendedores)
    id_produto = random.choice(list(produtos.keys()))
    nome_produto, categoria, preco = produtos[id_produto]

    quantidade = random.randint(1, 40)
    valor_total = round(preco * quantidade, 2)

    data_venda = start + datetime.timedelta(days=random.randint(0, delta))

    id_estado = random.choice(list(estados.keys()))
    cidade = estados[id_estado]

    linhas.append([id_venda, id_vendedor, id_produto, nome_produto, categoria,
                   data_venda, quantidade, valor_total, cidade, id_estado])

df = pd.DataFrame(linhas, columns=['id_venda', 'id_vendedor', 'id_produto', 'produto', 'categoria',
                                   'data_venda', 'quantidade', 'valor_total', 'cidade', 'idEstado'])

path = "C:/temp/DataBases/vendastechup.csv"
df.to_csv(path, index=False)
