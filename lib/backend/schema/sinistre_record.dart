import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinistreRecord extends FirestoreRecord {
  SinistreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "typeAccident" field.
  String? _typeAccident;
  String get typeAccident => _typeAccident ?? '';
  bool hasTypeAccident() => _typeAccident != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dateAccident" field.
  DateTime? _dateAccident;
  DateTime? get dateAccident => _dateAccident;
  bool hasDateAccident() => _dateAccident != null;

  // "localisation" field.
  LatLng? _localisation;
  LatLng? get localisation => _localisation;
  bool hasLocalisation() => _localisation != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "contratId" field.
  DocumentReference? _contratId;
  DocumentReference? get contratId => _contratId;
  bool hasContratId() => _contratId != null;

  // "vehiculeId" field.
  DocumentReference? _vehiculeId;
  DocumentReference? get vehiculeId => _vehiculeId;
  bool hasVehiculeId() => _vehiculeId != null;

  // "Status" field.
  SStatus? _status;
  SStatus? get status => _status;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _typeAccident = snapshotData['typeAccident'] as String?;
    _description = snapshotData['description'] as String?;
    _dateAccident = snapshotData['dateAccident'] as DateTime?;
    _localisation = snapshotData['localisation'] as LatLng?;
    _photos = getDataList(snapshotData['photos']);
    _userId = snapshotData['userId'] as DocumentReference?;
    _contratId = snapshotData['contratId'] as DocumentReference?;
    _vehiculeId = snapshotData['vehiculeId'] as DocumentReference?;
    _status = snapshotData['Status'] is SStatus
        ? snapshotData['Status']
        : deserializeEnum<SStatus>(snapshotData['Status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sinistre');

  static Stream<SinistreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SinistreRecord.fromSnapshot(s));

  static Future<SinistreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SinistreRecord.fromSnapshot(s));

  static SinistreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SinistreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SinistreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SinistreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SinistreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SinistreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSinistreRecordData({
  String? typeAccident,
  String? description,
  DateTime? dateAccident,
  LatLng? localisation,
  DocumentReference? userId,
  DocumentReference? contratId,
  DocumentReference? vehiculeId,
  SStatus? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'typeAccident': typeAccident,
      'description': description,
      'dateAccident': dateAccident,
      'localisation': localisation,
      'userId': userId,
      'contratId': contratId,
      'vehiculeId': vehiculeId,
      'Status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SinistreRecordDocumentEquality implements Equality<SinistreRecord> {
  const SinistreRecordDocumentEquality();

  @override
  bool equals(SinistreRecord? e1, SinistreRecord? e2) {
    const listEquality = ListEquality();
    return e1?.typeAccident == e2?.typeAccident &&
        e1?.description == e2?.description &&
        e1?.dateAccident == e2?.dateAccident &&
        e1?.localisation == e2?.localisation &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        e1?.userId == e2?.userId &&
        e1?.contratId == e2?.contratId &&
        e1?.vehiculeId == e2?.vehiculeId &&
        e1?.status == e2?.status;
  }

  @override
  int hash(SinistreRecord? e) => const ListEquality().hash([
        e?.typeAccident,
        e?.description,
        e?.dateAccident,
        e?.localisation,
        e?.photos,
        e?.userId,
        e?.contratId,
        e?.vehiculeId,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is SinistreRecord;
}
