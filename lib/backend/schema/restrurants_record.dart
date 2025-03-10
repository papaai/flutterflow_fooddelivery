import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestrurantsRecord extends FirestoreRecord {
  RestrurantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "resturant_name" field.
  String? _resturantName;
  String get resturantName => _resturantName ?? '';
  bool hasResturantName() => _resturantName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _resturantName = snapshotData['resturant_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restrurants');

  static Stream<RestrurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestrurantsRecord.fromSnapshot(s));

  static Future<RestrurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestrurantsRecord.fromSnapshot(s));

  static RestrurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestrurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestrurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestrurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestrurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestrurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestrurantsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? resturantName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'resturant_name': resturantName,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestrurantsRecordDocumentEquality implements Equality<RestrurantsRecord> {
  const RestrurantsRecordDocumentEquality();

  @override
  bool equals(RestrurantsRecord? e1, RestrurantsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.resturantName == e2?.resturantName;
  }

  @override
  int hash(RestrurantsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.resturantName
      ]);

  @override
  bool isValidKey(Object? o) => o is RestrurantsRecord;
}
