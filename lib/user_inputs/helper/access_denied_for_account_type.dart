import 'dart:io';

// menu interativo -> accessOnlyToSavingAccount --> accessDeniedForAccountType -->
// essa função vai ter que ser void pra usar return e sair dessa função
void accessDeniedForAccountType() {
  stdout.writeln('--- Você não tem acesso a esse tipo de categoria! ---');
  stdout.writeln('--- Você será redirecionado para o Menu Interativo. ---');
}
