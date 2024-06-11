import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormKetuaRecord extends FirestoreRecord {
  FormKetuaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _gender = snapshotData['gender'] as String?;
    _phone = castToType<int>(snapshotData['phone']);
    _date = snapshotData['date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formKetua');

  static Stream<FormKetuaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormKetuaRecord.fromSnapshot(s));

  static Future<FormKetuaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormKetuaRecord.fromSnapshot(s));

  static FormKetuaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormKetuaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormKetuaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormKetuaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormKetuaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormKetuaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormKetuaRecordData({
  String? name,
  String? gender,
  int? phone,
  String? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'gender': gender,
      'phone': phone,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormKetuaRecordDocumentEquality implements Equality<FormKetuaRecord> {
  const FormKetuaRecordDocumentEquality();

  @override
  bool equals(FormKetuaRecord? e1, FormKetuaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.gender == e2?.gender &&
        e1?.phone == e2?.phone &&
        e1?.date == e2?.date;
  }

  @override
  int hash(FormKetuaRecord? e) =>
      const ListEquality().hash([e?.name, e?.gender, e?.phone, e?.date]);

  @override
  bool isValidKey(Object? o) => o is FormKetuaRecord;
}
