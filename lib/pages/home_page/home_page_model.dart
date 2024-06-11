import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/fitur/fitur_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for fitur component.
  late FiturModel fiturModel1;
  // Model for fitur component.
  late FiturModel fiturModel2;
  // Model for fitur component.
  late FiturModel fiturModel3;
  // Model for fitur component.
  late FiturModel fiturModel4;

  @override
  void initState(BuildContext context) {
    fiturModel1 = createModel(context, () => FiturModel());
    fiturModel2 = createModel(context, () => FiturModel());
    fiturModel3 = createModel(context, () => FiturModel());
    fiturModel4 = createModel(context, () => FiturModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fiturModel1.dispose();
    fiturModel2.dispose();
    fiturModel3.dispose();
    fiturModel4.dispose();
  }
}
