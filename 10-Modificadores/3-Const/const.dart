import 'brasil.dart';

///
/// CONST
/// Inicializada em tempo de compilação, deve ser declarada com valor constante
/// Ao nível de classes deve ser estatica para ficar disponível na classe.
/// Em coleções const toda o conteúdo deve ser constante
///
/// Objeto Imutável
/// O construtor deve ser constante
/// As variáveis devem ser final ou static const

main() {
  print('10.3) Modificadores Const\n');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);

  print('Resultado.: ${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final dynamic listaFinal = const [0, 1];
  //listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1, 2, pi];
  //listaConst.add(pi);
  print(listaConst);

  print('');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('contagen.: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);

  // pais.latitude = 0;   // nao e possivel
  // Brasil.capital = ''; // nao e possivel

  print('\nObjeto: $pais capital.: ${Brasil.capital} Latitude.: ${pais.latitude} Longitute.: ${pais.longetude}');
  print('Estados.: ${Brasil.estados}');
}
