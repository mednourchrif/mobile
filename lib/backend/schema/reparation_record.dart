import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReparationRecord extends FirestoreRecord {
  ReparationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "garage" field.
  String? _garage;
  String get garage => _garage ?? '';
  bool hasGarage() => _garage != null;

  // "cout" field.
  int? _cout;
  int get cout => _cout ?? 0;
  bool hasCout() => _cout != null;

  // "statut" field.
  String? _statut;
  String get statut => _statut ?? '';
  bool hasStatut() => _statut != null;

  // "dateDebut" field.
  DateTime? _dateDebut;
  DateTime? get dateDebut => _dateDebut;
  bool hasDateDebut() => _dateDebut != null;

  // "dateFinPrevue" field.
  DateTime? _dateFinPrevue;
  DateTime? get dateFinPrevue => _dateFinPrevue;
  bool hasDateFinPrevue() => _dateFinPrevue != null;

  // "descriptionReparation" field.
  String? _descriptionReparation;
  String get descriptionReparation => _descriptionReparation ?? '';
  bool hasDescriptionReparation() => _descriptionReparation != null;

  // "sinistreId" field.
  DocumentReference? _sinistreId;
  DocumentReference? get sinistreId => _sinistreId;
  bool hasSinistreId() => _sinistreId != null;

  void _initializeFields() {
    _garage = snapshotData['garage'] as String?;
    _cout = castToType<int>(snapshotData['cout']);
    _statut = snapshotData['statut'] as String?;
    _dateDebut = snapshotData['dateDebut'] as DateTime?;
    _dateFinPrevue = snapshotData['dateFinPrevue'] as DateTime?;
    _descriptionReparation = snapshotData['descriptionReparation'] as String?;
    _sinistreId = snapshotData['sinistreId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reparation');

  static Stream<ReparationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReparationRecord.fromSnapshot(s));

  static Future<ReparationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReparationRecord.fromSnapshot(s));

  static ReparationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReparationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReparationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReparationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReparationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReparationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReparationRecordData({
  String? garage,
  int? cout,
  String? statut,
  DateTime? dateDebut,
  DateTime? dateFinPrevue,
  String? descriptionReparation,
  DocumentReference? sinistreId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'garage': garage,
      'cout': cout,
      'statut': statut,
      'dateDebut': dateDebut,
      'dateFinPrevue': dateFinPrevue,
      'descriptionReparation': descriptionReparation,
      'sinistreId': sinistreId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReparationRecordDocumentEquality implements Equality<ReparationRecord> {
  const ReparationRecordDocumentEquality();

  @override
  bool equals(ReparationRecord? e1, ReparationRecord? e2) {
    return e1?.garage == e2?.garage &&
        e1?.cout == e2?.cout &&
        e1?.statut == e2?.statut &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFinPrevue == e2?.dateFinPrevue &&
        e1?.descriptionReparation == e2?.descriptionReparation &&
        e1?.sinistreId == e2?.sinistreId;
  }

  @override
  int hash(ReparationRecord? e) => const ListEquality().hash([
        e?.garage,
        e?.cout,
        e?.statut,
        e?.dateDebut,
        e?.dateFinPrevue,
        e?.descriptionReparation,
        e?.sinistreId
      ]);

  @override
  bool isValidKey(Object? o) => o is ReparationRecord;
}
