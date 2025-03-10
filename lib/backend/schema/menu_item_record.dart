import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemRecord extends FirestoreRecord {
  MenuItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "restaurant_ref" field.
  DocumentReference? _restaurantRef;
  DocumentReference? get restaurantRef => _restaurantRef;
  bool hasRestaurantRef() => _restaurantRef != null;

  // "menu_category_ref" field.
  DocumentReference? _menuCategoryRef;
  DocumentReference? get menuCategoryRef => _menuCategoryRef;
  bool hasMenuCategoryRef() => _menuCategoryRef != null;

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "menu_id" field.
  int? _menuId;
  int get menuId => _menuId ?? 0;
  bool hasMenuId() => _menuId != null;

  void _initializeFields() {
    _restaurantRef = snapshotData['restaurant_ref'] as DocumentReference?;
    _menuCategoryRef = snapshotData['menu_category_ref'] as DocumentReference?;
    _itemName = snapshotData['item_name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _menuId = castToType<int>(snapshotData['menu_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_item');

  static Stream<MenuItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuItemRecord.fromSnapshot(s));

  static Future<MenuItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuItemRecord.fromSnapshot(s));

  static MenuItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuItemRecordData({
  DocumentReference? restaurantRef,
  DocumentReference? menuCategoryRef,
  String? itemName,
  String? description,
  String? image,
  double? price,
  int? menuId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurant_ref': restaurantRef,
      'menu_category_ref': menuCategoryRef,
      'item_name': itemName,
      'description': description,
      'image': image,
      'price': price,
      'menu_id': menuId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuItemRecordDocumentEquality implements Equality<MenuItemRecord> {
  const MenuItemRecordDocumentEquality();

  @override
  bool equals(MenuItemRecord? e1, MenuItemRecord? e2) {
    return e1?.restaurantRef == e2?.restaurantRef &&
        e1?.menuCategoryRef == e2?.menuCategoryRef &&
        e1?.itemName == e2?.itemName &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.menuId == e2?.menuId;
  }

  @override
  int hash(MenuItemRecord? e) => const ListEquality().hash([
        e?.restaurantRef,
        e?.menuCategoryRef,
        e?.itemName,
        e?.description,
        e?.image,
        e?.price,
        e?.menuId
      ]);

  @override
  bool isValidKey(Object? o) => o is MenuItemRecord;
}
