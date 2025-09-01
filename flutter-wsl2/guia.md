# Guia de Configuração do Flutter no WSL2 (Linux + Windows)

### 1. Para ativa o shell script:
`` chmod +x  ./flutter-web.sh``

### 2. Para roda o shell script:
`` ./flutter-web.sh``

### 3. Rode `flutter doctor` para verifica o SDK foi instalado da web (opcional):

```bash
flutter doctor
```
---

# 🚀 Rodar um projeto Flutter Web

### 4. Criar um novo projeto

```bash
flutter create meu_app_web
```

### 5. Entra na pasta do projet

```bash
code meu_app_web
```
---


### 10. Rodar com servidor web

``` bash
flutter run -d web-server
```

Você verá algo como no terminal:

```
Running with web-server on http://127.0.0.1:55555/
```
Abra o link no navegador.


