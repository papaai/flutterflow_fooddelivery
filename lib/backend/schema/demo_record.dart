import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DemoRecord extends FirestoreRecord {
  DemoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "food_name" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "food_image" field.
  String? _foodImage;
  String get foodImage => _foodImage ?? '';
  bool hasFoodImage() => _foodImage != null;

  // "food_category" field.
  String? _foodCategory;
  String get foodCategory => _foodCategory ?? '';
  bool hasFoodCategory() => _foodCategory != null;

  // "food_price" field.
  int? _foodPrice;
  int get foodPrice => _foodPrice ?? 0;
  bool hasFoodPrice() => _foodPrice != null;

  void _initializeFields() {
    _foodName = snapshotData['food_name'] as String?;
    _foodImage = snapshotData['food_image'] as String?;
    _foodCategory = snapshotData['food_category'] as String?;
    _foodPrice = castToType<int>(snapshotData['food_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Demo');

  static Stream<DemoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DemoRecord.fromSnapshot(s));

  static Future<DemoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DemoRecord.fromSnapshot(s));

  static DemoRecord fromSnapshot(DocumentSnapshot snapshot) => DemoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DemoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DemoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DemoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DemoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDemoRecordData({
  String? foodName,
  String? foodImage,
  String? foodCategory,
  int? foodPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food_name': foodName,
      'food_image': foodImage,
      'food_category': foodCategory,
      'food_price': foodPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class DemoRecordDocumentEquality implements Equality<DemoRecord> {
  const DemoRecordDocumentEquality();

  @override
  bool equals(DemoRecord? e1, DemoRecord? e2) {
    return e1?.foodName == e2?.foodName &&
        e1?.foodImage == e2?.foodImage &&
        e1?.foodCategory == e2?.foodCategory &&
        e1?.foodPrice == e2?.foodPrice;
  }

  @override
  int hash(DemoRecord? e) => const ListEquality()
      .hash([e?.foodName, e?.foodImage, e?.foodCategory, e?.foodPrice]);

  @override
  bool isValidKey(Object? o) => o is DemoRecord;
}
