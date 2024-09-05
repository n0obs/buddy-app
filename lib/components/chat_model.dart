import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this component.

  String? resposta;

  List<ChatHistoryStruct> historicoConversa = [];
  void addToHistoricoConversa(ChatHistoryStruct item) =>
      historicoConversa.add(item);
  void removeFromHistoricoConversa(ChatHistoryStruct item) =>
      historicoConversa.remove(item);
  void removeAtIndexFromHistoricoConversa(int index) =>
      historicoConversa.removeAt(index);
  void insertAtIndexInHistoricoConversa(int index, ChatHistoryStruct item) =>
      historicoConversa.insert(index, item);
  void updateHistoricoConversaAtIndex(
          int index, Function(ChatHistoryStruct) updateFn) =>
      historicoConversa[index] = updateFn(historicoConversa[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for FacaPerguntaField widget.
  FocusNode? facaPerguntaFieldFocusNode;
  TextEditingController? facaPerguntaFieldTextController;
  String? Function(BuildContext, String?)?
      facaPerguntaFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (ChatGPT)] action in Button widget.
  ApiCallResponse? apiResultGPT;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    facaPerguntaFieldFocusNode?.dispose();
    facaPerguntaFieldTextController?.dispose();
  }
}
