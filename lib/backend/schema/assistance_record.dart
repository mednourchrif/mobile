import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssistanceRecord extends FirestoreRecord {
  AssistanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "typeService" field.
  String? _typeService;
  String get typeService => _typeService ?? '';
  bool hasTypeService() => _typeService != null;

  // "urgence" field.
  String? _urgence;
  String get urgence => _urgence ?? '';
  bool hasUrgence() => _urgence != null;

  // "statut" field.
  String? _statut;
  String get statut => _statut ?? '';
  bool hasStatut() => _statut != null;

  // "dateDemande" field.
  DateTime? _dateDemande;
  DateTime? get dateDemande => _dateDemande;
  bool hasDateDemande() => _dateDemande != null;

  // "positionGPS" field.
  LatLng? _positionGPS;
  LatLng? get positionGPS => _positionGPS;
  bool hasPositionGPS() => _positionGPS != null;

  // "vehiculeId" field.
  DocumentReference? _vehiculeId;
  DocumentReference? get vehiculeId => _vehiculeId;
  bool hasVehiculeId() => _vehiculeId != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _typeService = snapshotData['typeService'] as String?;
    _urgence = snapshotData['urgence'] as String?;
    _statut = snapshotData['statut'] as String?;
    _dateDemande = snapshotData['dateDemande'] as DateTime?;
    _positionGPS = snapshotData['positionGPS'] as LatLng?;
    _vehiculeId = snapshotData['vehiculeId'] as DocumentReference?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assistance');

  static Stream<AssistanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssistanceRecord.fromSnapshot(s));

  static Future<AssistanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssistanceRecord.fromSnapshot(s));

  static AssistanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssistanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssistanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssistanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssistanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssistanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssistanceRecordData({
  String? typeService,
  String? urgence,
  String? statut,
  DateTime? dateDemande,
  LatLng? positionGPS,
  DocumentReference? vehiculeId,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'typeService': typeService,
      'urgence': urgence,
      'statut': statut,
      'dateDemande': dateDemande,
      'positionGPS': positionGPS,
      'vehiculeId': vehiculeId,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssistanceRecordDocumentEquality implements Equality<AssistanceRecord> {
  const AssistanceRecordDocumentEquality();

  @override
  bool equals(AssistanceRecord? e1, AssistanceRecord? e2) {
    return e1?.typeService == e2?.typeService &&
        e1?.urgence == e2?.urgence &&
        e1?.statut == e2?.statut &&
        e1?.dateDemande == e2?.dateDemande &&
        e1?.positionGPS == e2?.positionGPS &&
        e1?.vehiculeId == e2?.vehiculeId &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(AssistanceRecord? e) => const ListEquality().hash([
        e?.typeService,
        e?.urgence,
        e?.statut,
        e?.dateDemande,
        e?.positionGPS,
        e?.vehiculeId,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is AssistanceRecord;
}
