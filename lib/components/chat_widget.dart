import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  final String userId;

  const ChatWidget({super.key, required this.userId});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToHistoricoConversa(ChatHistoryStruct(
        role: 'system',
        content:
            'Você é um cuidador de idosos, especialista em saúde e bem-estar na terceira idade. Você estudou por muitos anos geriatria e é expert em assuntos relacionados à saúde física e mental dos idosos, incluindo nutrição, exercícios, prevenção de doenças e socialização. Você já trabalhou em lares de idosos e centros de convivência, promovendo atividades para melhorar a qualidade de vida e a interação social entre os mais velhos. Você apenas responde sobre questões de saúde e bem-estar dos idosos, especialmente no que se refere a promover a independência e uma vida ativa. Se te fizerem uma pergunta não relacionada a esses temas, você dirá: \"Desculpe, como assistente de saúde para idosos, só posso responder sobre temas relacionados à saúde e bem-estar na terceira idade\". Sua linguagem é amigável e acolhedora, sempre trazendo dicas práticas e fáceis de entender. Você também adora contar histórias e fazer piadas para deixar os idosos à vontade e incentivá-los a participar ativamente. Todo mundo te adora e te vê como uma companhia valiosa.',
      ));
      safeSetState(() {});
    });

    _model.facaPerguntaFieldTextController ??= TextEditingController();
    _model.facaPerguntaFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ... (rest of the UI code remains unchanged)
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.facaPerguntaFieldTextController,
                        focusNode: _model.facaPerguntaFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Faça sua pergunta aqui..',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        validator: _model
                            .facaPerguntaFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      var shouldSetState = false;
                      _model.addToHistoricoConversa(ChatHistoryStruct(
                        role: 'user',
                        content: _model.facaPerguntaFieldTextController.text,
                      ));
                      safeSetState(() {});
                      _model.apiResultGPT = await ChatGPTCall.call(
                        historicoConversaJson: _model.historicoConversa
                            .map((e) => e.toMap())
                            .toList(),
                        functions: [
                          {
                            "name": "schedule_event",
                            "description": "Schedule an event in the user's agenda",
                            "parameters": {
                              "type": "object",
                              "properties": {
                                "title": {
                                  "type": "string",
                                  "description": "The title of the event"
                                },
                                "start_time": {
                                  "type": "string",
                                  "description": "The start time of the event in ISO 8601 format"
                                },
                                "end_time": {
                                  "type": "string",
                                  "description": "The end time of the event in ISO 8601 format"
                                },
                                "description": {
                                  "type": "string",
                                  "description": "A description of the event"
                                }
                              },
                              "required": ["title", "start_time", "end_time"]
                            }
                          }
                        ],
                      );

                      shouldSetState = true;
                      if ((_model.apiResultGPT?.succeeded ?? true)) {
                        safeSetState(() {
                          _model.facaPerguntaFieldTextController?.clear();
                        });
                        final response = ChatGPTCall.resposta(
                          (_model.apiResultGPT?.jsonBody ?? ''),
                        );
                        _model.addToHistoricoConversa(ChatHistoryStruct(
                          role: 'assistant',
                          content: response,
                        ));

                        final functionCall = ChatGPTCall.functionCall(
                          (_model.apiResultGPT?.jsonBody ?? ''),
                        );

                        if (functionCall != null && functionCall['name'] == 'schedule_event') {
                          final eventData = jsonDecode(functionCall['arguments']);
                          
                          await SupaFlow.insertAgendaEvent(
                            title: eventData['title'],
                            startTime: DateTime.parse(eventData['start_time']),
                            endTime: DateTime.parse(eventData['end_time']),
                            description: eventData['description'],
                            userId: widget.userId,
                          );

                          _model.addToHistoricoConversa(ChatHistoryStruct(
                            role: 'assistant',
                            content: 'Evento agendado com sucesso!',
                          ));
                        }

                        safeSetState(() {});
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Erro!'),
                              content:
                                  Text((_model.apiResultGPT?.bodyText ?? '')),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        if (shouldSetState) safeSetState(() {});
                        return;
                      }

                      if (shouldSetState) safeSetState(() {});
                    },
                    text: '',
                    icon: Icon(
                      Icons.send_rounded,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 30.0,
                    ),
                    options: FFButtonOptions(
                      width: 50.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
