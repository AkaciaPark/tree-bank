import 'dart:io';

// uma função que mostra o comprovante financeiro das minhas ações (depósito, saque, e os pagamentos com cartões)
// receber o tipo de transação e o valor transacionado
// quebro o solid no S, da responsabilidade única --> se eu não fizer uma função
// receber o tipo de operação e o valor
// posso usar enum
// o tipo de transação!! não o tipo de conta

enum TransactionType { deposito, saque }
void showFinancialProof(
    {required TransactionType transactionType,
    required double transactionValue}) {

  stdout.writeln(
      'Foi feito o ${transactionType.name} no valor de R\$$transactionValue.');
}
