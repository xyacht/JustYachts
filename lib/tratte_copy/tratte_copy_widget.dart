import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TratteCopyWidget extends StatefulWidget {
  const TratteCopyWidget({Key key}) : super(key: key);

  @override
  _TratteCopyWidgetState createState() => _TratteCopyWidgetState();
}

class _TratteCopyWidgetState extends State<TratteCopyWidget> {
  List<String> checkboxGroupValues;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Find yacht adventure',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xFF303030),
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF242424),
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Choose your activities and contact us by e-mail at office@xyachtmc.com or at the contact form',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await launchURL('https://www.xyachtmc.com/contact');
                    },
                    text: 'Contact us',
                    options: FFButtonOptions(
                      width: 300,
                      height: 50,
                      color: Color(0xFF3474E0),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'ACTIVITY;',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues != null
                          ? checkboxGroupValues
                          : [],
                      options: [
                        'Natural Spot',
                        'Restaurant reservation',
                        'Beach Club',
                        'Hotels and SPAs',
                        'Thermal Experience',
                        'Curltural Experience - Museum\n and archaeological site',
                        'Private transfer by car',
                        'Private transfer by boat',
                        'Private transfer by jet or helicopter',
                        'Babysitting',
                        'Petsitting',
                        'Bodyguards',
                        'Port booking'
                      ].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues = val),
                      activeColor: Colors.white,
                      checkColor: Color(0xFF344083),
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
