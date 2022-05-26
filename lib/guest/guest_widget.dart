import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../signin/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuestWidget extends StatefulWidget {
  const GuestWidget({Key key}) : super(key: key);

  @override
  _GuestWidgetState createState() => _GuestWidgetState();
}

class _GuestWidgetState extends State<GuestWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFB8B8AD),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'XYACHT ITINERARIES',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: InkWell(
            onTap: () async {
              final user = await signInWithGoogle(context);
              if (user == null) {
                return;
              }
              await Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => GuestWidget(),
                ),
                (r) => false,
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/pexels-olya-kobruseva-8908937.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Itineraries & More',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFCFA13C),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                  child: Text(
                    'Not all guests are a like!\nDepending on the type of customer, his tastes, his habits, his preferences, Xyacht will be your unique experences maker, dealing with dedicated itineraries, all aspects of the holiday, restaurants, spas, shopping, gyms, thermal centre, VIP transfers by car, helicopter and boat, discovering hidden places. Every aspect of their holiday will be designed and customized to fit their desires.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninWidget(),
                        ),
                      );
                    },
                    text: 'Sign in to discover more',
                    options: FFButtonOptions(
                      width: 200,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFCFA13C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                      borderSide: BorderSide(
                        color: Color(0xFFCFA13C),
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWidget(),
                        ),
                      );
                    },
                    text: 'Set Sail',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFCFA13C),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                      borderSide: BorderSide(
                        color: Color(0xFFCFA13C),
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
