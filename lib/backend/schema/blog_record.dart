import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogRecord extends FirestoreRecord {
  BlogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "judul" field.
  String? _judul;
  String get judul => _judul ?? '';
  bool hasJudul() => _judul != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  void _initializeFields() {
    _judul = snapshotData['judul'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _deskripsi = snapshotData['deskripsi'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blog');

  static Stream<BlogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogRecord.fromSnapshot(s));

  static Future<BlogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogRecord.fromSnapshot(s));

  static BlogRecord fromSnapshot(DocumentSnapshot snapshot) => BlogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogRecordData({
  String? judul,
  String? gambar,
  String? deskripsi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'judul': judul,
      'gambar': gambar,
      'deskripsi': deskripsi,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogRecordDocumentEquality implements Equality<BlogRecord> {
  const BlogRecordDocumentEquality();

  @override
  bool equals(BlogRecord? e1, BlogRecord? e2) {
    return e1?.judul == e2?.judul &&
        e1?.gambar == e2?.gambar &&
        e1?.deskripsi == e2?.deskripsi;
  }

  @override
  int hash(BlogRecord? e) =>
      const ListEquality().hash([e?.judul, e?.gambar, e?.deskripsi]);

  @override
  bool isValidKey(Object? o) => o is BlogRecord;
}
