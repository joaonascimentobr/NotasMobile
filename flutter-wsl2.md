# Guia de Configuração do Flutter no WSL2 (Linux + Windows)

## 1. Instalar PATH da web para flutter
```
sudo apt-get update -y && sudo apt-get upgrade -y;
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
```

### 2. Verifica a versão do Flutter

```bash
flutter --version
```

---

### 3. Rode `flutter doctor` para verifica o SDK foi instalado da web:

```bash
flutter doctor
```
---

### 🚀 Rodar um projeto Flutter Web

### 4. Criar um novo projeto

```bash
flutter create meu_app_web
cd meu_app_web
```
---

### 4. Limpar cache(opcional)

```bash
flutter clean
```


### 5. Rodar com servidor web

``` bash
rm -rf ~/.flutter
flutter doctor
flutter run -d web-server
```

Você verá algo como:

```
Running with web-server on http://127.0.0.1:55555/
```
Abra o link no navegador.


