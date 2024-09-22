import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
     // backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 35,
        elevation: 0.0,
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: ()=> context.pushNamed('mainSearch'),
              child: Image.asset('assets/images/search.png',width: 25,),
            ),
          )
        ],
        centerTitle: true,
        title: Image.asset('assets/images/hikma.png',width: 50,),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset('assets/images/drawer.png',),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/Group_81.png',),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text('تصفّح التطبيق', style: TextStyle(fontFamily: 'cairo',fontSize: 24),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                        onTap: ()=> context.pushNamed('searchFromBook'),
                        child: Image.asset('assets/images/ebhathBook.png',width: 160,)),
                    SizedBox(height: 20,),
                    GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/images/prayTime.png',width: 160,)),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: ()=> context.pushNamed('mainSearch'),
                        child: Image.asset('assets/images/ebhath.png',width: 160,)),
                    SizedBox(height: 20,),
                    GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/images/about.png',width: 160,)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
