import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTastoWidget extends StatefulWidget {
  const HeaderTastoWidget({Key key}) : super(key: key);

  @override
  _HeaderTastoWidgetState createState() => _HeaderTastoWidgetState();
}

class _HeaderTastoWidgetState extends State<HeaderTastoWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRect(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
            ),
            child: Container(
              width: double.infinity,
              height: 370,
              decoration: BoxDecoration(
                color: Color(0xFF262D34),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/natalya-zaritskaya-144626.jpg',
                  ).image,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 370,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E2429), Color(0x001E2429)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, 1),
              end: AlignmentDirectional(0, -1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Enter in your User Page',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xB3FFFFFF),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w100,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Image.asset(
                    'assets/images/luxury-logo_(1).png',
                    width: 230,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
