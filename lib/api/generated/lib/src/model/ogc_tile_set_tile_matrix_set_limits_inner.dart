//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_set_tile_matrix_set_limits_inner.g.dart';

/// Limits per matrix
///
/// Properties:
/// * [tileMatrix]
/// * [minTileRow]
/// * [maxTileRow]
/// * [minTileCol]
/// * [maxTileCol]
@BuiltValue()
abstract class OgcTileSetTileMatrixSetLimitsInner
    implements
        Built<OgcTileSetTileMatrixSetLimitsInner,
            OgcTileSetTileMatrixSetLimitsInnerBuilder> {
  @BuiltValueField(wireName: r'tileMatrix')
  String? get tileMatrix;

  @BuiltValueField(wireName: r'minTileRow')
  int? get minTileRow;

  @BuiltValueField(wireName: r'maxTileRow')
  int? get maxTileRow;

  @BuiltValueField(wireName: r'minTileCol')
  int? get minTileCol;

  @BuiltValueField(wireName: r'maxTileCol')
  int? get maxTileCol;

  OgcTileSetTileMatrixSetLimitsInner._();

  factory OgcTileSetTileMatrixSetLimitsInner(
          [void updates(OgcTileSetTileMatrixSetLimitsInnerBuilder b)]) =
      _$OgcTileSetTileMatrixSetLimitsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileSetTileMatrixSetLimitsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileSetTileMatrixSetLimitsInner> get serializer =>
      _$OgcTileSetTileMatrixSetLimitsInnerSerializer();
}

class _$OgcTileSetTileMatrixSetLimitsInnerSerializer
    implements PrimitiveSerializer<OgcTileSetTileMatrixSetLimitsInner> {
  @override
  final Iterable<Type> types = const [
    OgcTileSetTileMatrixSetLimitsInner,
    _$OgcTileSetTileMatrixSetLimitsInner
  ];

  @override
  final String wireName = r'OgcTileSetTileMatrixSetLimitsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileSetTileMatrixSetLimitsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tileMatrix != null) {
      yield r'tileMatrix';
      yield serializers.serialize(
        object.tileMatrix,
        specifiedType: const FullType(String),
      );
    }
    if (object.minTileRow != null) {
      yield r'minTileRow';
      yield serializers.serialize(
        object.minTileRow,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTileRow != null) {
      yield r'maxTileRow';
      yield serializers.serialize(
        object.maxTileRow,
        specifiedType: const FullType(int),
      );
    }
    if (object.minTileCol != null) {
      yield r'minTileCol';
      yield serializers.serialize(
        object.minTileCol,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTileCol != null) {
      yield r'maxTileCol';
      yield serializers.serialize(
        object.maxTileCol,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSetTileMatrixSetLimitsInner object, {
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
    required OgcTileSetTileMatrixSetLimitsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tileMatrix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tileMatrix = valueDes;
          break;
        case r'minTileRow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minTileRow = valueDes;
          break;
        case r'maxTileRow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTileRow = valueDes;
          break;
        case r'minTileCol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minTileCol = valueDes;
          break;
        case r'maxTileCol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTileCol = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileSetTileMatrixSetLimitsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileSetTileMatrixSetLimitsInnerBuilder();
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
