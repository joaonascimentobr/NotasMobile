class Users {
  final int id;
  final String nome;
  final String email;
  final String password;

  Users ({
    required this.id,
    required this.nome,
    required this.email,
    required this.password,
  });

  String getInformacoes() {
    return 'O usuário do id: ${id} se chama ${nome}, seu email é ${email}';
  }

}

void main() {
  Users usuario = new Users(id: 1, nome: "Pedro", email: "pedro@gmail.com", password: "123");
  print(usuario.getInformacoes());
}
