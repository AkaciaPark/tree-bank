import 'package:desafio_um/user_inputs/helper/password_required.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/render_calculation_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/render_input_number_of_days_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/render_show_interactive_menu.dart';
import '../../models/users/user_model.dart';

void render(
    {required dynamic accountModel,
    required UserModel userModel,
    required String incomeValue}) {

  final resultOfDays = renderInputNumberOfDays();
  renderCalculation(userModel: userModel, howManyDays: resultOfDays);
  passwordRequired(userModel: userModel);
  renderShow(
      numberOfDays: resultOfDays,
      renderCalculation: renderCalculation(
        userModel: userModel,
        howManyDays: resultOfDays,
      ));
}
