import '/flutter_flow/flutter_flow_util.dart';
import 'item_addto_menu_widget.dart' show ItemAddtoMenuWidget;
import 'package:flutter/material.dart';

class ItemAddtoMenuModel extends FlutterFlowModel<ItemAddtoMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;
  // State field(s) for itemPrice widget.
  FocusNode? itemPriceFocusNode;
  TextEditingController? itemPriceTextController;
  String? Function(BuildContext, String?)? itemPriceTextControllerValidator;
  // State field(s) for itemDesc widget.
  FocusNode? itemDescFocusNode;
  TextEditingController? itemDescTextController;
  String? Function(BuildContext, String?)? itemDescTextControllerValidator;
  // State field(s) for imageurl widget.
  FocusNode? imageurlFocusNode;
  TextEditingController? imageurlTextController;
  String? Function(BuildContext, String?)? imageurlTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();

    itemPriceFocusNode?.dispose();
    itemPriceTextController?.dispose();

    itemDescFocusNode?.dispose();
    itemDescTextController?.dispose();

    imageurlFocusNode?.dispose();
    imageurlTextController?.dispose();
  }
}
