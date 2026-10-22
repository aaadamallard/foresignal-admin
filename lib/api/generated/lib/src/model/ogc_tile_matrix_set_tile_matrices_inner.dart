//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_tile_matrix_set_tile_matrices_inner.g.dart';

/// One tile matrix
///
/// Properties:
/// * [id]
/// * [scaleDenominator]
/// * [cellSize]
/// * [pointOfOrigin]
/// * [tileWidth]
/// * [tileHeight]
/// * [matrixWidth]
/// * [matrixHeight]
/// * [cornerOfOrigin]
@BuiltValue()
abstract class OgcTileMatrixSetTileMatricesInner
    implements
        Built<
          OgcTileMatrixSetTileMatricesInner,
          OgcTileMatrixSetTileMatricesInnerBuilder
        > {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'scaleDenominator')
  num get scaleDenominator;

  @BuiltValueField(wireName: r'cellSize')
  num? get cellSize;

  @BuiltValueField(wireName: r'pointOfOrigin')
  BuiltList<num> get pointOfOrigin;

  @BuiltValueField(wireName: r'tileWidth')
  int get tileWidth;

  @BuiltValueField(wireName: r'tileHeight')
  int get tileHeight;

  @BuiltValueField(wireName: r'matrixWidth')
  int get matrixWidth;

  @BuiltValueField(wireName: r'matrixHeight')
  int get matrixHeight;

  @BuiltValueField(wireName: r'cornerOfOrigin')
  String? get cornerOfOrigin;

  OgcTileMatrixSetTileMatricesInner._();

  factory OgcTileMatrixSetTileMatricesInner([
    void updates(OgcTileMatrixSetTileMatricesInnerBuilder b),
  ]) = _$OgcTileMatrixSetTileMatricesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcTileMatrixSetTileMatricesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcTileMatrixSetTileMatricesInner> get serializer =>
      _$OgcTileMatrixSetTileMatricesInnerSerializer();
}

class _$OgcTileMatrixSetTileMatricesInnerSerializer
    implements PrimitiveSerializer<OgcTileMatrixSetTileMatricesInner> {
  @override
  final Iterable<Type> types = const [
    OgcTileMatrixSetTileMatricesInner,
    _$OgcTileMatrixSetTileMatricesInner,
  ];

  @override
  final String wireName = r'OgcTileMatrixSetTileMatricesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcTileMatrixSetTileMatricesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'scaleDenominator';
    yield serializers.serialize(
      object.scaleDenominator,
      specifiedType: const FullType(num),
    );
    if (object.cellSize != null) {
      yield r'cellSize';
      yield serializers.serialize(
        object.cellSize,
        specifiedType: const FullType(num),
      );
    }
    yield r'pointOfOrigin';
    yield serializers.serialize(
      object.pointOfOrigin,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'tileWidth';
    yield serializers.serialize(
      object.tileWidth,
      specifiedType: const FullType(int),
    );
    yield r'tileHeight';
    yield serializers.serialize(
      object.tileHeight,
      specifiedType: const FullType(int),
    );
    yield r'matrixWidth';
    yield serializers.serialize(
      object.matrixWidth,
      specifiedType: const FullType(int),
    );
    yield r'matrixHeight';
    yield serializers.serialize(
      object.matrixHeight,
      specifiedType: const FullType(int),
    );
    if (object.cornerOfOrigin != null) {
      yield r'cornerOfOrigin';
      yield serializers.serialize(
        object.cornerOfOrigin,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSetTileMatricesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OgcTileMatrixSetTileMatricesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'scaleDenominator':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.scaleDenominator = valueDes;
          break;
        case r'cellSize':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.cellSize = valueDes;
          break;
        case r'pointOfOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.pointOfOrigin.replace(valueDes);
          break;
        case r'tileWidth':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tileWidth = valueDes;
          break;
        case r'tileHeight':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tileHeight = valueDes;
          break;
        case r'matrixWidth':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.matrixWidth = valueDes;
          break;
        case r'matrixHeight':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.matrixHeight = valueDes;
          break;
        case r'cornerOfOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cornerOfOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcTileMatrixSetTileMatricesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcTileMatrixSetTileMatricesInnerBuilder();
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
