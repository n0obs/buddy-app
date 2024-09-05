import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'edite_conta_widget.dart' show EditeContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditeContaModel extends FlutterFlowModel<EditeContaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '## #####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for Nomefield widget.
  FocusNode? nomefieldFocusNode;
  TextEditingController? nomefieldTextController;
  String? Function(BuildContext, String?)? nomefieldTextControllerValidator;
  // State field(s) for emailfield widget.
  FocusNode? emailfieldFocusNode;
  TextEditingController? emailfieldTextController;
  String? Function(BuildContext, String?)? emailfieldTextControllerValidator;
  // State field(s) for cidadefield widget.
  FocusNode? cidadefieldFocusNode;
  TextEditingController? cidadefieldTextController;
  String? Function(BuildContext, String?)? cidadefieldTextControllerValidator;
  // State field(s) for enderecofield widget.
  FocusNode? enderecofieldFocusNode;
  TextEditingController? enderecofieldTextController;
  String? Function(BuildContext, String?)? enderecofieldTextControllerValidator;
  // State field(s) for CPField widget.
  FocusNode? cPFieldFocusNode;
  TextEditingController? cPFieldTextController;
  final cPFieldMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cPFieldTextControllerValidator;
  Completer<List<UsersRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nomefieldFocusNode?.dispose();
    nomefieldTextController?.dispose();

    emailfieldFocusNode?.dispose();
    emailfieldTextController?.dispose();

    cidadefieldFocusNode?.dispose();
    cidadefieldTextController?.dispose();

    enderecofieldFocusNode?.dispose();
    enderecofieldTextController?.dispose();

    cPFieldFocusNode?.dispose();
    cPFieldTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
