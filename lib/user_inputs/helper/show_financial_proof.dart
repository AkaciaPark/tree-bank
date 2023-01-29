// uma função que mostra o comprovante financeiro das minhas ações (depósito, saque, e os pagamentos com cartões)
// receber o tipo de transação e o valor transacionado
// quebro o solid no S, da responsabilidade única --> se eu não fizer uma função
import 'dart:io';
import '../../models/accounts/account_model.dart';

// receber o tipo de operação e o valor
// enum
// o tipo de transação!! não o tipo de conta

enum TransactionType { deposito, saque }


void showFinancialProof(
    {required TransactionType transactionType, required double transactionValue}) {
  stdout.writeln(
      'Foi feito o ${transactionType.name} e o valor final é R\$$transactionValue.');
}
