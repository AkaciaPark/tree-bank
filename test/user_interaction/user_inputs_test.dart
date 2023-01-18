import 'package:desafio_um/user_interaction/card.dart';
import 'package:test/test.dart';

void main() {
  test('se tiver recebido conta corrente e ter colocado a renda mensal', () {
    final resposta = cardCreation('corrente', '5,00');
    expect(resposta, 'Ok, você tem acesso a um cartão de débito e crédito');
  });
  test('se tiver recebido conta corrente e NÃO ter colocado a renda mensal', () {
    final resposta = cardCreation('corrente', '');
    expect(resposta, 'Ok, você tem acesso apenas ao cartão de débito');
  });

  test('se tiver recebido conta poupanca', () {
    final resposta = cardCreation('poupanca', '');
    expect(resposta, 'Ok, você tem acesso apenas ao cartão de débito');
  });

}