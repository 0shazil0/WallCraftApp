import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageRecord extends FirestoreRecord {
  ImageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ImageName" field.
  String? _imageName;
  String get imageName => _imageName ?? '';
  bool hasImageName() => _imageName != null;

  // "ImageCategory" field.
  String? _imageCategory;
  String get imageCategory => _imageCategory ?? '';
  bool hasImageCategory() => _imageCategory != null;

  // "ImageDescription" field.
  String? _imageDescription;
  String get imageDescription => _imageDescription ?? '';
  bool hasImageDescription() => _imageDescription != null;

  // "ImageUploadDate" field.
  DateTime? _imageUploadDate;
  DateTime? get imageUploadDate => _imageUploadDate;
  bool hasImageUploadDate() => _imageUploadDate != null;

  // "ImageUserReference" field.
  DocumentReference? _imageUserReference;
  DocumentReference? get imageUserReference => _imageUserReference;
  bool hasImageUserReference() => _imageUserReference != null;

  // "ImageViewCount" field.
  double? _imageViewCount;
  double get imageViewCount => _imageViewCount ?? 0.0;
  bool hasImageViewCount() => _imageViewCount != null;

  // "Is_featured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "ImagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  bool hasImagePath() => _imagePath != null;

  // "is_addon" field.
  bool? _isAddon;
  bool get isAddon => _isAddon ?? false;
  bool hasIsAddon() => _isAddon != null;

  // "is_published" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  bool hasIsPublished() => _isPublished != null;

  // "is_draft" field.
  bool? _isDraft;
  bool get isDraft => _isDraft ?? false;
  bool hasIsDraft() => _isDraft != null;

  void _initializeFields() {
    _imageName = snapshotData['ImageName'] as String?;
    _imageCategory = snapshotData['ImageCategory'] as String?;
    _imageDescription = snapshotData['ImageDescription'] as String?;
    _imageUploadDate = snapshotData['ImageUploadDate'] as DateTime?;
    _imageUserReference =
        snapshotData['ImageUserReference'] as DocumentReference?;
    _imageViewCount = castToType<double>(snapshotData['ImageViewCount']);
    _isFeatured = snapshotData['Is_featured'] as bool?;
    _imagePath = snapshotData['ImagePath'] as String?;
    _isAddon = snapshotData['is_addon'] as bool?;
    _isPublished = snapshotData['is_published'] as bool?;
    _isDraft = snapshotData['is_draft'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('image');

  static Stream<ImageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageRecord.fromSnapshot(s));

  static Future<ImageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageRecord.fromSnapshot(s));

  static ImageRecord fromSnapshot(DocumentSnapshot snapshot) => ImageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageRecordData({
  String? imageName,
  String? imageCategory,
  String? imageDescription,
  DateTime? imageUploadDate,
  DocumentReference? imageUserReference,
  double? imageViewCount,
  bool? isFeatured,
  String? imagePath,
  bool? isAddon,
  bool? isPublished,
  bool? isDraft,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ImageName': imageName,
      'ImageCategory': imageCategory,
      'ImageDescription': imageDescription,
      'ImageUploadDate': imageUploadDate,
      'ImageUserReference': imageUserReference,
      'ImageViewCount': imageViewCount,
      'Is_featured': isFeatured,
      'ImagePath': imagePath,
      'is_addon': isAddon,
      'is_published': isPublished,
      'is_draft': isDraft,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImageRecordDocumentEquality implements Equality<ImageRecord> {
  const ImageRecordDocumentEquality();

  @override
  bool equals(ImageRecord? e1, ImageRecord? e2) {
    return e1?.imageName == e2?.imageName &&
        e1?.imageCategory == e2?.imageCategory &&
        e1?.imageDescription == e2?.imageDescription &&
        e1?.imageUploadDate == e2?.imageUploadDate &&
        e1?.imageUserReference == e2?.imageUserReference &&
        e1?.imageViewCount == e2?.imageViewCount &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.imagePath == e2?.imagePath &&
        e1?.isAddon == e2?.isAddon &&
        e1?.isPublished == e2?.isPublished &&
        e1?.isDraft == e2?.isDraft;
  }

  @override
  int hash(ImageRecord? e) => const ListEquality().hash([
        e?.imageName,
        e?.imageCategory,
        e?.imageDescription,
        e?.imageUploadDate,
        e?.imageUserReference,
        e?.imageViewCount,
        e?.isFeatured,
        e?.imagePath,
        e?.isAddon,
        e?.isPublished,
        e?.isDraft
      ]);

  @override
  bool isValidKey(Object? o) => o is ImageRecord;
}
