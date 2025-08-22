# Guia de Configuração do Flutter no WSL2 (Linux + Windows)

### 1. Criar um diretório  (ex: script)
```
mkdir scripit
```

### 2. Entra no diretório 
```
cd scripit
```

### 3. Criar o arquivo (ex: flutter-web.sh)
```
nano flutter-web.sh
```
### 4. Copie e cole o conteúdo abaixo no terminal (nano):
```
#!/bin/bash

echo "Atualizando sistema..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Instalando dependências essenciais..."
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

echo "Instalando Flutter via snap..."
sudo snap install flutter --classic

echo "Verificando versão do Flutter..."
flutter --version

echo "Configuração concluída!"
```

### 5. Salve e saia do editor (`nano`):

- Pressione `Ctrl + O` → para **salvar o arquivo**
- Pressione `Enter` → para **confirmar o nome do arquivo**
- Pressione `Ctrl + X` → para **sair do editor**

---

### 6. Rode `flutter doctor` para verifica o SDK foi instalado da web (opcional):

```bash
flutter doctor
```
---

# 🚀 Rodar um projeto Flutter Web

### 7. Criar um novo projeto

```bash
flutter create meu_app_web
```

### 8. Entra na pasta do projet

```bash
code meu_app_web
```
---


### 9. Rodar com servidor web

``` bash
flutter run -d web-server
```

Você verá algo como no terminal:

```
Running with web-server on http://127.0.0.1:55555/
```
Abra o link no navegador.


