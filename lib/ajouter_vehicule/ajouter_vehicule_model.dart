import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ajouter_vehicule_widget.dart' show AjouterVehiculeWidget;
import 'package:flutter/material.dart';

class AjouterVehiculeModel extends FlutterFlowModel<AjouterVehiculeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for marque widget.
  FocusNode? marqueFocusNode;
  TextEditingController? marqueTextController;
  String? Function(BuildContext, String?)? marqueTextControllerValidator;
  // State field(s) for modele widget.
  FocusNode? modeleFocusNode;
  TextEditingController? modeleTextController;
  String? Function(BuildContext, String?)? modeleTextControllerValidator;
  // State field(s) for matricule widget.
  FocusNode? matriculeFocusNode;
  TextEditingController? matriculeTextController;
  String? Function(BuildContext, String?)? matriculeTextControllerValidator;
  // State field(s) for annee widget.
  FocusNode? anneeFocusNode;
  TextEditingController? anneeTextController;
  String? Function(BuildContext, String?)? anneeTextControllerValidator;
  // State field(s) for Couleur widget.
  FocusNode? couleurFocusNode;
  TextEditingController? couleurTextController;
  String? Function(BuildContext, String?)? couleurTextControllerValidator;
  // State field(s) for Puissance widget.
  FocusNode? puissanceFocusNode;
  TextEditingController? puissanceTextController;
  String? Function(BuildContext, String?)? puissanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    marqueFocusNode?.dispose();
    marqueTextController?.dispose();

    modeleFocusNode?.dispose();
    modeleTextController?.dispose();

    matriculeFocusNode?.dispose();
    matriculeTextController?.dispose();

    anneeFocusNode?.dispose();
    anneeTextController?.dispose();

    couleurFocusNode?.dispose();
    couleurTextController?.dispose();

    puissanceFocusNode?.dispose();
    puissanceTextController?.dispose();
  }
}
