class Items {
  final int id;
  final String descricao; // O texto que foi definido pelo usuario na criação da nota
  final DateTime? data_limite; // Caso tenha, será definido um limite para término da nota/tarefa (Opcional)
  final DateTime data_criacao; // Data de criação da nota
  final int usuario_id; // Quem criou a nota

  // Define as variáveis que DEVERÃO ser inicializadas (receber informações) quando a instancia 
    // da classe for criada
  Items({
    required this.id,
    required this.descricao,
    this.data_limite,
    required this.data_criacao,
    required this.usuario_id,
  });

  String getInformacoes() {
    return 'A nota do id $id tem um texto sobre "$descricao", '
        'o limite da data é ${data_limite} '
        'e foi criada no dia $data_criacao '
        '(Obs: a nota pertence ao usuario id: $usuario_id)';
  }
}

void main() {
  Items item = Items(
    id: 1,
    descricao: "Estudar sobre argumentos para defender o Hitler",
    data_limite: DateTime(2025, 9, 15),
    data_criacao: DateTime.now(),
    usuario_id: 2,
  );

  print(item.getInformacoes());
}
