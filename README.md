
# Comunicação entre Containers com Docker

## 📘 Descrição da Atividade

Esta atividade consiste em criar três containers utilizando Docker, conectá-los em uma mesma rede virtual e demonstrar a comunicação entre eles. O objetivo é entender a criação e manipulação de redes bridge no Docker, além de praticar o uso de comandos básicos no Ubuntu em ambiente containerizado.

## 🛠️ Tecnologias Utilizadas

- **Docker**
- **Ubuntu (imagem base)**
- **Visual Studio Code** com extensão de containers

## 🧩 Etapas da Atividade

### 🧱 1. Criação do Dockerfile

O arquivo `dockerfile` contém os comandos para preparar a imagem personalizada:

```dockerfile
FROM ubuntu:latest

RUN apt update -y
RUN apt-get install -y iputils-ping net-tools

CMD ["tail", "-f", "/dev/null"]
```

Este Dockerfile instala ferramentas de rede básicas (`ping` e `net-tools`) para permitir a verificação de conectividade entre containers.

---

### 🏗️ 2. Criação da Imagem Docker

```bash
docker build -t myimagi .
```

---

### 🌐 3. Criação da Rede

```bash
docker network create minha-rede
```

---

### 📦 4. Criação dos Containers

```bash
docker run -d --name container1 --network minha-rede myimagi
docker exec -it container1 bash
```

```bash
docker run -d --name container2 --network minha-rede myimagi
docker exec -it container2 bash
```

```bash
docker run -d --name container3 --network minha-rede myimagi
docker exec -it container3 bash
```

---

### 🔁 5. Teste de Comunicação

Dentro de cada container, é possível utilizar o comando `ping` para verificar a comunicação entre eles:

```bash
ping container2
ping container3
```

---

## ✅ Conclusão

Esta atividade demonstrou com sucesso como criar containers e conectá-los em uma rede bridge no Docker. A comunicação entre os containers foi validada com o uso do comando `ping`, permitindo o entendimento de redes virtuais em ambientes Linux.
