// uma função que mostra o comprovante financeiro das minhas ações (depósito, saque, e os pagamentos com cartões)
// receber o tipo de transação e o valor transacionado
import 'dart:io';
import '../account_model_input.dart';

void showFinancialProof({required AccountType account, required double transactionValue}){
  stdout.write('Foi feito o $account e o valor final é $transactionValue');
}




