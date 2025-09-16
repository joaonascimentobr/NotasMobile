void main() {
  PessoaFisica pf = PessoaFisica(nome: "João", idade: 30, cpf: "12345678900");
  print("Pessoa Física:");
  print("Nome: ${pf.nome}");
  print("Idade: ${pf.idade}");
  print("CPF: ${pf.cpf}");
  
  print("");

  PessoaJuridica pj = PessoaJuridica(nome: "Empresa Dores", idade: 25, cnpj: "12345678000199");
  print("Pessoa Jurídica:");
  print("Nome: ${pj.nome}");
  print("Idade: ${pj.idade}");
  print("CNPJ: ${pj.cnpj}");
}

class Pessoa {
  String nome;
  int idade;

  Pessoa({required this.nome, required this.idade});
}

class PessoaFisica extends Pessoa {
  String cpf;

  PessoaFisica({
    required String nome,
    required int idade,
    required this.cpf,
  }) : super(nome: nome, idade: idade);
}

class PessoaJuridica extends Pessoa {
  String cnpj;

  PessoaJuridica({
    required String nome,
    required int idade,
    required this.cnpj,
  }) : super(nome: nome, idade: idade);
}
