
# 🔧 Projeto Lógico de Banco de Dados - Oficina Mecânica (PostgreSQL)

Este repositório contém o desenvolvimento completo do banco de dados para um sistema de **gestão de ordens de serviço em uma oficina mecânica**, elaborado como parte do desafio do bootcamp da DIO: **"Inteligência Artificial Aplicada a Dados com Copilot"**.

---

## 📌 Descrição do Desafio

> Para este cenário você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Neste desafio, você definirá todas as etapas. Desde o esquema até a implementação do banco de dados. 
>
> Após a criação do esquema lógico, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes.
>
> Especifique ainda queries mais complexas do que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:
>
> - Recuperações simples com SELECT
> - Filtros com WHERE
> - Expressões para atributos derivados
> - Ordenações com ORDER BY
> - Agrupamento e filtro com HAVING
> - JOINs entre tabelas

---

## 🧱 Estrutura do Projeto

```
oficina-bd-logico/
├── diagramas/
│   └── modelo_conceitual_oficina.JPG 
├── scripts/
│   ├── script_criacao.sql
│   ├── script_inserts.sql
│   └── queries_testes.sql
├── imagens/
│   ├── criacao_tabelas.JPG 
│   ├── insercao_dados.JPG 
│   └── consultas/
│       ├── select_clientes.JPG
│       ├── servicos_por_os.JPG 
│       └── total_gasto_cliente.JPG 
├── README.md
└── docker-compose.yml

```

---

## 🔍 Etapas Desenvolvidas

### 📌 Modelo Conceitual
Representado em formato E-R com entidades como `cliente`, `veiculo`, `ordem_servico`, `equipe`, `mecanico`, `servico`, `peca`, entre outras.

📎 Imagem: `diagramas/modelo_conceitual_oficina.jpg`

---

### 🧱 Modelo Lógico + Scripts

Scripts localizados em `/scripts` com:

- `script_criacao.sql`: criação das tabelas com constraints e relacionamentos
- `script_inserts.sql`: inserção de dados para testes
- `queries_testes.sql`: conjunto de queries SQL com:
  - SELECT simples
  - WHERE, JOIN, ORDER BY
  - Atributos derivados
  - GROUP BY e HAVING

---

### 📸 Prints

Os prints estão na pasta `/imagens`, evidenciando:
- Criação das tabelas
- Inserção de dados
- Consultas com resultados reais

---

## 🧠 Autor

Desenvolvido por João F. durante o bootcamp da DIO 🚀
