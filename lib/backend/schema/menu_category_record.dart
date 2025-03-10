import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuCategoryRecord extends FirestoreRecord {
  MenuCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "restaurant_ref" field.
  DocumentReference? _restaurantRef;
  DocumentReference? get restaurantRef => _restaurantRef;
  bool hasRestaurantRef() => _restaurantRef != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "category_order_number" field.
  int? _categoryOrderNumber;
  int get categoryOrderNumber => _categoryOrderNumber ?? 0;
  bool hasCategoryOrderNumber() => _categoryOrderNumber != null;

  void _initializeFields() {
    _restaurantRef = snapshotData['restaurant_ref'] as DocumentReference?;
    _categoryName = snapshotData['category_name'] as String?;
    _categoryOrderNumber =
        castToType<int>(snapshotData['category_order_number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu_category');

  static Stream<MenuCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuCategoryRecord.fromSnapshot(s));

  static Future<MenuCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuCategoryRecord.fromSnapshot(s));

  static MenuCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuCategoryRecordData({
  DocumentReference? restaurantRef,
  String? categoryName,
  int? categoryOrderNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurant_ref': restaurantRef,
      'category_name': categoryName,
      'category_order_number': categoryOrderNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuCategoryRecordDocumentEquality
    implements Equality<MenuCategoryRecord> {
  const MenuCategoryRecordDocumentEquality();

  @override
  bool equals(MenuCategoryRecord? e1, MenuCategoryRecord? e2) {
    return e1?.restaurantRef == e2?.restaurantRef &&
        e1?.categoryName == e2?.categoryName &&
        e1?.categoryOrderNumber == e2?.categoryOrderNumber;
  }

  @override
  int hash(MenuCategoryRecord? e) => const ListEquality()
      .hash([e?.restaurantRef, e?.categoryName, e?.categoryOrderNumber]);

  @override
  bool isValidKey(Object? o) => o is MenuCategoryRecord;
}
