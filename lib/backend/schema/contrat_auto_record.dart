import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContratAutoRecord extends FirestoreRecord {
  ContratAutoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "numeroContrat" field.
  String? _numeroContrat;
  String get numeroContrat => _numeroContrat ?? '';
  bool hasNumeroContrat() => _numeroContrat != null;

  // "typeCouverture" field.
  String? _typeCouverture;
  String get typeCouverture => _typeCouverture ?? '';
  bool hasTypeCouverture() => _typeCouverture != null;

  // "statut" field.
  String? _statut;
  String get statut => _statut ?? '';
  bool hasStatut() => _statut != null;

  // "dateDebut" field.
  DateTime? _dateDebut;
  DateTime? get dateDebut => _dateDebut;
  bool hasDateDebut() => _dateDebut != null;

  // "dateFin" field.
  DateTime? _dateFin;
  DateTime? get dateFin => _dateFin;
  bool hasDateFin() => _dateFin != null;

  // "montantPrime" field.
  double? _montantPrime;
  double get montantPrime => _montantPrime ?? 0.0;
  bool hasMontantPrime() => _montantPrime != null;

  // "vehiculeRef" field.
  DocumentReference? _vehiculeRef;
  DocumentReference? get vehiculeRef => _vehiculeRef;
  bool hasVehiculeRef() => _vehiculeRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _numeroContrat = snapshotData['numeroContrat'] as String?;
    _typeCouverture = snapshotData['typeCouverture'] as String?;
    _statut = snapshotData['statut'] as String?;
    _dateDebut = snapshotData['dateDebut'] as DateTime?;
    _dateFin = snapshotData['dateFin'] as DateTime?;
    _montantPrime = castToType<double>(snapshotData['montantPrime']);
    _vehiculeRef = snapshotData['vehiculeRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contratAuto');

  static Stream<ContratAutoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContratAutoRecord.fromSnapshot(s));

  static Future<ContratAutoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContratAutoRecord.fromSnapshot(s));

  static ContratAutoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContratAutoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContratAutoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContratAutoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContratAutoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContratAutoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContratAutoRecordData({
  String? numeroContrat,
  String? typeCouverture,
  String? statut,
  DateTime? dateDebut,
  DateTime? dateFin,
  double? montantPrime,
  DocumentReference? vehiculeRef,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numeroContrat': numeroContrat,
      'typeCouverture': typeCouverture,
      'statut': statut,
      'dateDebut': dateDebut,
      'dateFin': dateFin,
      'montantPrime': montantPrime,
      'vehiculeRef': vehiculeRef,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContratAutoRecordDocumentEquality implements Equality<ContratAutoRecord> {
  const ContratAutoRecordDocumentEquality();

  @override
  bool equals(ContratAutoRecord? e1, ContratAutoRecord? e2) {
    return e1?.numeroContrat == e2?.numeroContrat &&
        e1?.typeCouverture == e2?.typeCouverture &&
        e1?.statut == e2?.statut &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFin == e2?.dateFin &&
        e1?.montantPrime == e2?.montantPrime &&
        e1?.vehiculeRef == e2?.vehiculeRef &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(ContratAutoRecord? e) => const ListEquality().hash([
        e?.numeroContrat,
        e?.typeCouverture,
        e?.statut,
        e?.dateDebut,
        e?.dateFin,
        e?.montantPrime,
        e?.vehiculeRef,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ContratAutoRecord;
}
