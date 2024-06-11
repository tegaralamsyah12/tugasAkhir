import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DaftarLogistikRecord extends FirestoreRecord {
  DaftarLogistikRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "log1" field.
  String? _log1;
  String get log1 => _log1 ?? '';
  bool hasLog1() => _log1 != null;

  // "log2" field.
  String? _log2;
  String get log2 => _log2 ?? '';
  bool hasLog2() => _log2 != null;

  // "log3" field.
  String? _log3;
  String get log3 => _log3 ?? '';
  bool hasLog3() => _log3 != null;

  // "log4" field.
  String? _log4;
  String get log4 => _log4 ?? '';
  bool hasLog4() => _log4 != null;

  // "log5" field.
  String? _log5;
  String get log5 => _log5 ?? '';
  bool hasLog5() => _log5 != null;

  // "log6" field.
  String? _log6;
  String get log6 => _log6 ?? '';
  bool hasLog6() => _log6 != null;

  // "log7" field.
  String? _log7;
  String get log7 => _log7 ?? '';
  bool hasLog7() => _log7 != null;

  // "log8" field.
  String? _log8;
  String get log8 => _log8 ?? '';
  bool hasLog8() => _log8 != null;

  // "log9" field.
  String? _log9;
  String get log9 => _log9 ?? '';
  bool hasLog9() => _log9 != null;

  // "log10" field.
  String? _log10;
  String get log10 => _log10 ?? '';
  bool hasLog10() => _log10 != null;

  // "log11" field.
  String? _log11;
  String get log11 => _log11 ?? '';
  bool hasLog11() => _log11 != null;

  // "log12" field.
  String? _log12;
  String get log12 => _log12 ?? '';
  bool hasLog12() => _log12 != null;

  // "log13" field.
  String? _log13;
  String get log13 => _log13 ?? '';
  bool hasLog13() => _log13 != null;

  // "log14" field.
  String? _log14;
  String get log14 => _log14 ?? '';
  bool hasLog14() => _log14 != null;

  // "log15" field.
  String? _log15;
  String get log15 => _log15 ?? '';
  bool hasLog15() => _log15 != null;

  void _initializeFields() {
    _log1 = snapshotData['log1'] as String?;
    _log2 = snapshotData['log2'] as String?;
    _log3 = snapshotData['log3'] as String?;
    _log4 = snapshotData['log4'] as String?;
    _log5 = snapshotData['log5'] as String?;
    _log6 = snapshotData['log6'] as String?;
    _log7 = snapshotData['log7'] as String?;
    _log8 = snapshotData['log8'] as String?;
    _log9 = snapshotData['log9'] as String?;
    _log10 = snapshotData['log10'] as String?;
    _log11 = snapshotData['log11'] as String?;
    _log12 = snapshotData['log12'] as String?;
    _log13 = snapshotData['log13'] as String?;
    _log14 = snapshotData['log14'] as String?;
    _log15 = snapshotData['log15'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daftarLogistik');

  static Stream<DaftarLogistikRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DaftarLogistikRecord.fromSnapshot(s));

  static Future<DaftarLogistikRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DaftarLogistikRecord.fromSnapshot(s));

  static DaftarLogistikRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DaftarLogistikRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DaftarLogistikRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DaftarLogistikRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DaftarLogistikRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DaftarLogistikRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDaftarLogistikRecordData({
  String? log1,
  String? log2,
  String? log3,
  String? log4,
  String? log5,
  String? log6,
  String? log7,
  String? log8,
  String? log9,
  String? log10,
  String? log11,
  String? log12,
  String? log13,
  String? log14,
  String? log15,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'log1': log1,
      'log2': log2,
      'log3': log3,
      'log4': log4,
      'log5': log5,
      'log6': log6,
      'log7': log7,
      'log8': log8,
      'log9': log9,
      'log10': log10,
      'log11': log11,
      'log12': log12,
      'log13': log13,
      'log14': log14,
      'log15': log15,
    }.withoutNulls,
  );

  return firestoreData;
}

class DaftarLogistikRecordDocumentEquality
    implements Equality<DaftarLogistikRecord> {
  const DaftarLogistikRecordDocumentEquality();

  @override
  bool equals(DaftarLogistikRecord? e1, DaftarLogistikRecord? e2) {
    return e1?.log1 == e2?.log1 &&
        e1?.log2 == e2?.log2 &&
        e1?.log3 == e2?.log3 &&
        e1?.log4 == e2?.log4 &&
        e1?.log5 == e2?.log5 &&
        e1?.log6 == e2?.log6 &&
        e1?.log7 == e2?.log7 &&
        e1?.log8 == e2?.log8 &&
        e1?.log9 == e2?.log9 &&
        e1?.log10 == e2?.log10 &&
        e1?.log11 == e2?.log11 &&
        e1?.log12 == e2?.log12 &&
        e1?.log13 == e2?.log13 &&
        e1?.log14 == e2?.log14 &&
        e1?.log15 == e2?.log15;
  }

  @override
  int hash(DaftarLogistikRecord? e) => const ListEquality().hash([
        e?.log1,
        e?.log2,
        e?.log3,
        e?.log4,
        e?.log5,
        e?.log6,
        e?.log7,
        e?.log8,
        e?.log9,
        e?.log10,
        e?.log11,
        e?.log12,
        e?.log13,
        e?.log14,
        e?.log15
      ]);

  @override
  bool isValidKey(Object? o) => o is DaftarLogistikRecord;
}
