import '/flutter_flow/flutter_flow_util.dart';
import 'category_add_widget.dart' show CategoryAddWidget;
import 'package:flutter/material.dart';

class CategoryAddModel extends FlutterFlowModel<CategoryAddWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for category_name widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameTextController;
  String? Function(BuildContext, String?)? categoryNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    categoryNameFocusNode?.dispose();
    categoryNameTextController?.dispose();
  }
}
