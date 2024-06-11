import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormAnggotaRecord extends FirestoreRecord {
  FormAnggotaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama1" field.
  String? _nama1;
  String get nama1 => _nama1 ?? '';
  bool hasNama1() => _nama1 != null;

  // "jk1" field.
  String? _jk1;
  String get jk1 => _jk1 ?? '';
  bool hasJk1() => _jk1 != null;

  // "hp1" field.
  int? _hp1;
  int get hp1 => _hp1 ?? 0;
  bool hasHp1() => _hp1 != null;

  // "nama2" field.
  String? _nama2;
  String get nama2 => _nama2 ?? '';
  bool hasNama2() => _nama2 != null;

  // "jk2" field.
  String? _jk2;
  String get jk2 => _jk2 ?? '';
  bool hasJk2() => _jk2 != null;

  // "hp2" field.
  int? _hp2;
  int get hp2 => _hp2 ?? 0;
  bool hasHp2() => _hp2 != null;

  // "nama3" field.
  String? _nama3;
  String get nama3 => _nama3 ?? '';
  bool hasNama3() => _nama3 != null;

  // "jk3" field.
  String? _jk3;
  String get jk3 => _jk3 ?? '';
  bool hasJk3() => _jk3 != null;

  // "hp3" field.
  int? _hp3;
  int get hp3 => _hp3 ?? 0;
  bool hasHp3() => _hp3 != null;

  // "nama4" field.
  String? _nama4;
  String get nama4 => _nama4 ?? '';
  bool hasNama4() => _nama4 != null;

  // "jk4" field.
  String? _jk4;
  String get jk4 => _jk4 ?? '';
  bool hasJk4() => _jk4 != null;

  // "hp4" field.
  int? _hp4;
  int get hp4 => _hp4 ?? 0;
  bool hasHp4() => _hp4 != null;

  void _initializeFields() {
    _nama1 = snapshotData['nama1'] as String?;
    _jk1 = snapshotData['jk1'] as String?;
    _hp1 = castToType<int>(snapshotData['hp1']);
    _nama2 = snapshotData['nama2'] as String?;
    _jk2 = snapshotData['jk2'] as String?;
    _hp2 = castToType<int>(snapshotData['hp2']);
    _nama3 = snapshotData['nama3'] as String?;
    _jk3 = snapshotData['jk3'] as String?;
    _hp3 = castToType<int>(snapshotData['hp3']);
    _nama4 = snapshotData['nama4'] as String?;
    _jk4 = snapshotData['jk4'] as String?;
    _hp4 = castToType<int>(snapshotData['hp4']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formAnggota');

  static Stream<FormAnggotaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormAnggotaRecord.fromSnapshot(s));

  static Future<FormAnggotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormAnggotaRecord.fromSnapshot(s));

  static FormAnggotaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormAnggotaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormAnggotaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormAnggotaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormAnggotaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormAnggotaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormAnggotaRecordData({
  String? nama1,
  String? jk1,
  int? hp1,
  String? nama2,
  String? jk2,
  int? hp2,
  String? nama3,
  String? jk3,
  int? hp3,
  String? nama4,
  String? jk4,
  int? hp4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama1': nama1,
      'jk1': jk1,
      'hp1': hp1,
      'nama2': nama2,
      'jk2': jk2,
      'hp2': hp2,
      'nama3': nama3,
      'jk3': jk3,
      'hp3': hp3,
      'nama4': nama4,
      'jk4': jk4,
      'hp4': hp4,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormAnggotaRecordDocumentEquality implements Equality<FormAnggotaRecord> {
  const FormAnggotaRecordDocumentEquality();

  @override
  bool equals(FormAnggotaRecord? e1, FormAnggotaRecord? e2) {
    return e1?.nama1 == e2?.nama1 &&
        e1?.jk1 == e2?.jk1 &&
        e1?.hp1 == e2?.hp1 &&
        e1?.nama2 == e2?.nama2 &&
        e1?.jk2 == e2?.jk2 &&
        e1?.hp2 == e2?.hp2 &&
        e1?.nama3 == e2?.nama3 &&
        e1?.jk3 == e2?.jk3 &&
        e1?.hp3 == e2?.hp3 &&
        e1?.nama4 == e2?.nama4 &&
        e1?.jk4 == e2?.jk4 &&
        e1?.hp4 == e2?.hp4;
  }

  @override
  int hash(FormAnggotaRecord? e) => const ListEquality().hash([
        e?.nama1,
        e?.jk1,
        e?.hp1,
        e?.nama2,
        e?.jk2,
        e?.hp2,
        e?.nama3,
        e?.jk3,
        e?.hp3,
        e?.nama4,
        e?.jk4,
        e?.hp4
      ]);

  @override
  bool isValidKey(Object? o) => o is FormAnggotaRecord;
}
