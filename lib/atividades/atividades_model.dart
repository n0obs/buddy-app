import '/flutter_flow/flutter_flow_util.dart';
import 'atividades_widget.dart' show AtividadesWidget;
import 'package:flutter/material.dart';

class AtividadesModel extends FlutterFlowModel<AtividadesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();
  }
}
