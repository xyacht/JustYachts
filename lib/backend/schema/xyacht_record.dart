import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'xyacht_record.g.dart';

abstract class XyachtRecord
    implements Built<XyachtRecord, XyachtRecordBuilder> {
  static Serializer<XyachtRecord> get serializer => _$xyachtRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(XyachtRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..phoneNumber = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Xyacht');

  static Stream<XyachtRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<XyachtRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  XyachtRecord._();
  factory XyachtRecord([void Function(XyachtRecordBuilder) updates]) =
      _$XyachtRecord;

  static XyachtRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createXyachtRecordData({
  String email,
  String displayName,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String photoUrl,
}) =>
    serializers.toFirestore(
        XyachtRecord.serializer,
        XyachtRecord((x) => x
          ..email = email
          ..displayName = displayName
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..photoUrl = photoUrl));
