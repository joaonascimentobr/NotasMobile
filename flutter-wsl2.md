# Guia de Configuração do Flutter no WSL2 (Linux + Windows)

## 1. Converter scripts para formato Unix

Para corrigir arquivos com formatação de final de linha errada:

```bash
dos2unix /mnt/c/Users/jean/Downloads/flutter/flutter/bin/*
```

Para garantir que **todos** os arquivos sejam convertidos:

```bash
find /mnt/c/Users/jean/Downloads/flutter/flutter -type f -exec dos2unix {} \;
```

---

## 2. Adicionar o Flutter ao PATH no WSL2

Abra o terminal do Ubuntu (no VS Code ou diretamente) e edite o `.bashrc`:

```bash
nano ~/.bashrc
```

Adicione no final do arquivo:

```bash
export PATH="$PATH:/mnt/c/Users/SEUUSUARIO/Downloads/flutter/flutter/bin"
```

Salve com `Ctrl + O` e saia com `Ctrl + X`.

Atualize o terminal:

```bash
source ~/.bashrc
```

---

## 3. Testar o Flutter

```bash
flutter --version
```

---

## ✅ Solução Rápida: Forçar o Flutter a baixar tudo de novo

1. Delete o cache antigo do Flutter:

```bash
rm -rf /mnt/c/Users/SEUUSUARIO/Downloads/flutter/flutter/bin/cache
```

2. Rode `flutter doctor` para forçar o re-download do SDK:

```bash
flutter doctor
```

---

## 🚀 Rodar um projeto Flutter Web

### 1. Criar um novo projeto

```bash
flutter create meu_app_web
cd meu_app_web
```

### 2. Rodar no navegador Chrome

```bash
flutter run -d chrome
```

O parâmetro `-d chrome` força a execução no navegador.

---

## ⚠️ Erro comum:  
`Oops; flutter has exited unexpectedly: "FormatException: Missing extension byte (at offset 20)"`

Esse erro ocorre quando o Flutter tenta detectar dispositivos Android via ADB e falha.

---

## ✅ Soluções para o erro

### 1. Rodar no Chrome explicitamente

```bash
flutter run -d chrome
```

### 2. Desabilitar temporariamente o ADB (opcional)

```bash
pkill adb
```
ou
```bash
sudo killall adb
```

Depois, tente de novo:

```bash
flutter run -d chrome
```

### 3. Verificar dispositivos disponíveis

```bash
flutter devices
```

Saída esperada:

```
2 connected devices:

Chrome (web) • chrome • web-javascript • Google Chrome 116.0.x
Web Server   • web-server • web-javascript • Flutter Tools
```

### 4. Limpar cache e rodar com servidor web

```bash
flutter clean
rm -rf ~/.flutter
flutter doctor
flutter run -d web-server
```

Você verá algo como:

```
Running with web-server on http://127.0.0.1:55555/
```

Abra o link no navegador.

---

## 📌 Para rodar sempre no Web Server

Dentro da pasta do projeto:

```bash
flutter run -d web-server
```

Aguarde a compilação e abra o endereço exibido no navegador.

# Como abrir uma pasta no VS Code pelo terminal

## 1. Pelo terminal

Se você **já está dentro da pasta** que deseja abrir no VS Code, basta digitar:

```bash
code .
