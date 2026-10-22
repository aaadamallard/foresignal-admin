//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_summary_storage.g.dart';

/// Storage use
///
/// Properties:
/// * [bytesUsed]
/// * [sizeCapBytes]
/// * [rows]
@BuiltValue()
abstract class ChronicleSummaryStorage
    implements Built<ChronicleSummaryStorage, ChronicleSummaryStorageBuilder> {
  @BuiltValueField(wireName: r'bytesUsed')
  int get bytesUsed;

  @BuiltValueField(wireName: r'sizeCapBytes')
  int get sizeCapBytes;

  @BuiltValueField(wireName: r'rows')
  int? get rows;

  ChronicleSummaryStorage._();

  factory ChronicleSummaryStorage(
          [void updates(ChronicleSummaryStorageBuilder b)]) =
      _$ChronicleSummaryStorage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSummaryStorageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSummaryStorage> get serializer =>
      _$ChronicleSummaryStorageSerializer();
}

class _$ChronicleSummaryStorageSerializer
    implements PrimitiveSerializer<ChronicleSummaryStorage> {
  @override
  final Iterable<Type> types = const [
    ChronicleSummaryStorage,
    _$ChronicleSummaryStorage
  ];

  @override
  final String wireName = r'ChronicleSummaryStorage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSummaryStorage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bytesUsed';
    yield serializers.serialize(
      object.bytesUsed,
      specifiedType: const FullType(int),
    );
    yield r'sizeCapBytes';
    yield serializers.serialize(
      object.sizeCapBytes,
      specifiedType: const FullType(int),
    );
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSummaryStorage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChronicleSummaryStorageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bytesUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bytesUsed = valueDes;
          break;
        case r'sizeCapBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeCapBytes = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rows = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSummaryStorage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSummaryStorageBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
