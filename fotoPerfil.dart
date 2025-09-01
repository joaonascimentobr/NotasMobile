class FotoPerfil {
  final int id;
  final int usuario_id;  
  String imagem;

  FotoPerfil({
    required this.id,
    required this.usuario_id,
    required this.imagem,
  });

  String getInformacoes() {
    return 'O usuário do id: ${id}, id do usuário da foto: ${usuario_id}, sua foto: ${imagem}';
  }
}

void main() {
  FotoPerfil fotoperfil = FotoPerfil(id: 1, usuario_id: 55151121, imagem:"imagem do jean");
  print(fotoperfil.getInformacoes());
}