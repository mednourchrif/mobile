import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ajouter_contrat_widget.dart' show AjouterContratWidget;
import 'package:flutter/material.dart';

class AjouterContratModel extends FlutterFlowModel<AjouterContratWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for numeroContratController widget.
  FocusNode? numeroContratControllerFocusNode;
  TextEditingController? numeroContratControllerTextController;
  String? Function(BuildContext, String?)?
      numeroContratControllerTextControllerValidator;
  String? _numeroContratControllerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ex: CT2026-001 is required';
    }

    return null;
  }

  // State field(s) for typeCouvertureValue widget.
  String? typeCouvertureValueValue;
  FormFieldController<String>? typeCouvertureValueValueController;
  // State field(s) for statutValue widget.
  String? statutValueValue;
  FormFieldController<String>? statutValueValueController;
  // State field(s) for montantPrimeController widget.
  FocusNode? montantPrimeControllerFocusNode;
  TextEditingController? montantPrimeControllerTextController;
  String? Function(BuildContext, String?)?
      montantPrimeControllerTextControllerValidator;
  String? _montantPrimeControllerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'verifier votre montant de la prime';
    }

    if (val.length < 1) {
      return 'au minimum 1';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {
    numeroContratControllerTextControllerValidator =
        _numeroContratControllerTextControllerValidator;
    montantPrimeControllerTextControllerValidator =
        _montantPrimeControllerTextControllerValidator;
  }

  @override
  void dispose() {
    numeroContratControllerFocusNode?.dispose();
    numeroContratControllerTextController?.dispose();

    montantPrimeControllerFocusNode?.dispose();
    montantPrimeControllerTextController?.dispose();
  }
}
