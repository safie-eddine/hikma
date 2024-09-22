import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'getstarted_model.dart';
export 'getstarted_model.dart';

class GetstartedWidget extends StatefulWidget {
  const GetstartedWidget({
    super.key,
    this.img1,
  });

  final FFUploadedFile? img1;

  @override
  State<GetstartedWidget> createState() => _GetstartedWidgetState();
}

class _GetstartedWidgetState extends State<GetstartedWidget> {
  late GetstartedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetstartedModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientText(
              'تطبيق حكمة ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Cairo',
                fontSize: 32.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.0,
              ),
              colors: [
                Color(0xFF672CBC),
                FlutterFlowTheme.of(context).accent1
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ),
            Stack(
              alignment: Alignment.center,
                children:[
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/images/start.png',width: 315,)),
                  Positioned(
                    bottom: 0,
                    child:  FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'HomePage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1),
                            ),
                          },
                        );
                      },
                      text: 'ابدأ الآن ',
                      options: FFButtonOptions(
                        width: 180.0,
                        height: 40.0,
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                        iconPadding: EdgeInsets.all(18.0),
                        color: Color(0xFFF9B091),
                        textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Cairo',
                          fontSize: 24,
                          color: Colors.white,
                          letterSpacing: 0.0,
                          shadows: [
                            Shadow(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 6.0,
                            )
                          ],
                        ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),)
                ]
            ),
          ],
        ),
      ),
    );
  }
}
