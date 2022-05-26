import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
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
                boxShadow: [
                  BoxShadow(
                    color: FlutterFlowTheme.of(context).primaryText,
                  )
                ],
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Image.asset(
                    'assets/images/luxury-logo_(1).png',
                    width: 230,
                    height: 90,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 10),
                child: Text(
                  'Just Yachts App',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFA3358),
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
