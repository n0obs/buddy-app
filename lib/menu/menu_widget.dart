import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: GradientText(
                            'MENU',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .blacktopurple,
                                  fontSize: 32,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            colors: const [Color(0xFFF34966), Color(0xFFFFC540)],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/idoso_menu.png',
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Divider(
                    height: 50,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('ChatBuddy');
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).cinzachat,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).azulroxo,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, 0.4),
                                  child: Text(
                                    'BUDDY',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Buddy',
                                          color: FlutterFlowTheme.of(context)
                                              .blacktopurple,
                                          fontSize: 18,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Buddy'),
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0, -0.6),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Icon(
                                      Icons.chat,
                                      color: FlutterFlowTheme.of(context)
                                          .blacktopurple,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('atividades');
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).cinzachat,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).azulroxo,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0.4),
                              child: Text(
                                'SAÚDE',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Buddy',
                                      color: FlutterFlowTheme.of(context)
                                          .blacktopurple,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Buddy'),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, -0.6),
                              child: Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Icon(
                                  Icons.emoji_people,
                                  color: FlutterFlowTheme.of(context)
                                      .blacktopurple,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Rotina');
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).cinzachat,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).azulroxo,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0.4),
                              child: Text(
                                'ROTINA',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Buddy',
                                      color: FlutterFlowTheme.of(context)
                                          .blacktopurple,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Buddy'),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, -0.6),
                              child: Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: FlutterFlowTheme.of(context)
                                      .blacktopurple,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Guia');
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).cinzachat,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).azulroxo,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0.4),
                              child: Text(
                                'GUIA',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Buddy',
                                      color: FlutterFlowTheme.of(context)
                                          .blacktopurple,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Buddy'),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0, -0.6),
                              child: Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: FaIcon(
                                  FontAwesomeIcons.solidNewspaper,
                                  color: FlutterFlowTheme.of(context)
                                      .blacktopurple,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(1, -0.97),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 32, 0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Perfil_Usuario');
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.cog,
                      color: Color(0xFFF98853),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
