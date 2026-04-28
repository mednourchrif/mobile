import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiculesRecord extends FirestoreRecord {
  VehiculesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idVehicule" field.
  String? _idVehicule;
  String get idVehicule => _idVehicule ?? '';
  bool hasIdVehicule() => _idVehicule != null;

  // "marque" field.
  String? _marque;
  String get marque => _marque ?? '';
  bool hasMarque() => _marque != null;

  // "modele" field.
  String? _modele;
  String get modele => _modele ?? '';
  bool hasModele() => _modele != null;

  // "matricule" field.
  String? _matricule;
  String get matricule => _matricule ?? '';
  bool hasMatricule() => _matricule != null;

  // "annee" field.
  int? _annee;
  int get annee => _annee ?? 0;
  bool hasAnnee() => _annee != null;

  // "couleur" field.
  String? _couleur;
  String get couleur => _couleur ?? '';
  bool hasCouleur() => _couleur != null;

  // "puissance" field.
  int? _puissance;
  int get puissance => _puissance ?? 0;
  bool hasPuissance() => _puissance != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _idVehicule = snapshotData['idVehicule'] as String?;
    _marque = snapshotData['marque'] as String?;
    _modele = snapshotData['modele'] as String?;
    _matricule = snapshotData['matricule'] as String?;
    _annee = castToType<int>(snapshotData['annee']);
    _couleur = snapshotData['couleur'] as String?;
    _puissance = castToType<int>(snapshotData['puissance']);
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicules');

  static Stream<VehiculesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiculesRecord.fromSnapshot(s));

  static Future<VehiculesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiculesRecord.fromSnapshot(s));

  static VehiculesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiculesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiculesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiculesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiculesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiculesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiculesRecordData({
  String? idVehicule,
  String? marque,
  String? modele,
  String? matricule,
  int? annee,
  String? couleur,
  int? puissance,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idVehicule': idVehicule,
      'marque': marque,
      'modele': modele,
      'matricule': matricule,
      'annee': annee,
      'couleur': couleur,
      'puissance': puissance,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiculesRecordDocumentEquality implements Equality<VehiculesRecord> {
  const VehiculesRecordDocumentEquality();

  @override
  bool equals(VehiculesRecord? e1, VehiculesRecord? e2) {
    return e1?.idVehicule == e2?.idVehicule &&
        e1?.marque == e2?.marque &&
        e1?.modele == e2?.modele &&
        e1?.matricule == e2?.matricule &&
        e1?.annee == e2?.annee &&
        e1?.couleur == e2?.couleur &&
        e1?.puissance == e2?.puissance &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(VehiculesRecord? e) => const ListEquality().hash([
        e?.idVehicule,
        e?.marque,
        e?.modele,
        e?.matricule,
        e?.annee,
        e?.couleur,
        e?.puissance,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is VehiculesRecord;
}
