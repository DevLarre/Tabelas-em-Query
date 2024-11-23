
# 📘 Automação do Banco de Dados Escolar com Script SQL

Este projeto automatiza a criação e configuração do banco de dados escolar. Agora, o banco pode ser recriado automaticamente com um único comando, facilitando o processo de implantação e testes.

---

## 📂 Estrutura do Banco de Dados

### 🔑 Tabelas Criadas

1. **`aluno`**
   - `id` (INT, PK): Identificador único do aluno.
   - `nome` (VARCHAR): Nome do aluno.
   - `data_nascimento` (DATE): Data de nascimento do aluno.

2. **`professor`**
   - `id` (INT, PK): Identificador único do professor.
   - `nome` (VARCHAR): Nome do professor.
   - `data_nascimento` (DATE): Data de nascimento do professor.

3. **`materia`**
   - `id` (INT, PK): Identificador único da matéria.
   - `nome` (VARCHAR): Nome da matéria.
   - `id_professor` (INT, FK): Relaciona a matéria ao professor responsável.

4. **`provas`**
   - `id` (INT, PK): Identificador único da prova.
   - `id_aluno` (INT, FK): Relaciona a prova ao aluno.
   - `id_materia` (INT, FK): Relaciona a prova à matéria.
   - `nota` (FLOAT): Nota do aluno na prova.
   - `data_da_prova` (DATE): Data em que a prova foi realizada.

---

## 🛠️ Como Automatizar o Banco de Dados

### **1. Gerar o Arquivo SQL**
Caso ainda não tenha feito isso, exporte seu banco de dados com o seguinte comando no terminal:
```bash
mysqldump -u usuario -p escola > escola.sql
```
Isso cria o arquivo `escola.sql` contendo toda a estrutura e os dados do banco.

### **2. Executar o Script SQL**
Para recriar o banco de dados automaticamente, execute:
```bash
mysql -u usuario -p < escola.sql
```

### **3. Adicionar Controle para Não Duplicar Dados**
Edite o arquivo `escola.sql` e adicione no início:
```sql
DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;
```
E antes de cada tabela:
```sql
DROP TABLE IF EXISTS nome_da_tabela;
```

---

## 📜 Exemplos de Consultas SQL

### **1. Listar Todos os Alunos**
```sql
SELECT * FROM aluno;
```

### **2. Filtrar Alunos por Nome**
```sql
SELECT * FROM aluno WHERE nome = 'Maria Souza';
```

### **3. Consultar Provas e Notas dos Alunos**
```sql
SELECT 
    aluno.nome AS nome_aluno,
    materia.nome AS nome_materia,
    provas.nota,
    provas.data_da_prova
FROM provas
JOIN aluno ON provas.id_aluno = aluno.id
JOIN materia ON provas.id_materia = materia.id;
```

---

## 🚀 Automação com Script Shell

Crie um arquivo Bash para executar o script SQL automaticamente:

1. **Criar o Script Shell**
   ```bash
   nano automate_escola.sh
   ```

2. **Adicionar o Comando no Arquivo**
   ```bash
   #!/bin/bash
   mysql -u usuario -p < escola.sql
   ```

3. **Tornar o Script Executável**
   ```bash
   chmod +x automate_escola.sh
   ```

4. **Executar o Script**
   ```bash
   ./automate_escola.sh
   ```

---

## ✨ Conclusão

Com este projeto, você pode automatizar completamente a criação e configuração do banco de dados escolar. Isso facilita o trabalho em equipe, permite replicar o banco em diferentes ambientes e economiza tempo em testes.



## 📝 Licença
Este projeto é de uso livre para estudos e prática. Compartilhe e contribua! 🌟

Feito com ❤️ para otimizar sua gestão de dados escolares!


### Conecte-se comigo

[![Linkdln](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/douglas-rodrigues-larré-a59637231/)
[![Outlook](https://img.shields.io/badge/Microsoft_Outlook-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white)](dev.larre@outlook.com)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/dev_larre)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/DevLarre)

Vamos codar! 🚀

## © Desenvolvido por Dev Larré, 2024


