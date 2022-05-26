import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExclusivePlanWidget extends StatefulWidget {
  const ExclusivePlanWidget({Key key}) : super(key: key);

  @override
  _ExclusivePlanWidgetState createState() => _ExclusivePlanWidgetState();
}

class _ExclusivePlanWidgetState extends State<ExclusivePlanWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFF8B97A2),
            size: 24,
          ),
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-0.72, 0.89),
            child: FFButtonWidget(
              onPressed: () async {
                await launchURL('https://www.xyachtmc.com/contact');
              },
              text: 'Book now!',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryText,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFCFA13C),
                    ),
                borderSide: BorderSide(
                  color: Color(0xFFCFA13C),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/vacanze-monaco-1080x720.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 350,
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Exclusive Plan',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Playfair Display',
                                        color: Color(0xFF090F13),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                            ),
                            Expanded(
                              child: Text(
                                '€950.00',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF4B39EF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Text(
                                  'Private Transfer by luxury car\n\nArchaeological site/Museum Tour\n\nPrivate Transfer by luxury car\n\nStarred Restaurant Reservation\n\nPrivate Transfer by luxury car \n\nAdventure/Chilling Exeperience    \n\nPrivate Transfer by luxury car ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.69, 0.89),
            child: FFButtonWidget(
              onPressed: () async {
                await actions.callme();
              },
              text: 'Call us',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryText,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFCFA13C),
                    ),
                borderSide: BorderSide(
                  color: Color(0xFFCFA13C),
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
