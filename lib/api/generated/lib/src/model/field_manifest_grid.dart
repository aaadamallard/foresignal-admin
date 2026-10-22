//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_manifest_grid.g.dart';

/// Regular lat/lon grid; rows north→south, longitudes 0..359
///
/// Properties:
/// * [nx]
/// * [ny]
/// * [lo1]
/// * [la1]
/// * [dx]
/// * [dy]
@BuiltValue()
abstract class FieldManifestGrid
    implements Built<FieldManifestGrid, FieldManifestGridBuilder> {
  @BuiltValueField(wireName: r'nx')
  int get nx;

  @BuiltValueField(wireName: r'ny')
  int get ny;

  @BuiltValueField(wireName: r'lo1')
  num get lo1;

  @BuiltValueField(wireName: r'la1')
  num get la1;

  @BuiltValueField(wireName: r'dx')
  num get dx;

  @BuiltValueField(wireName: r'dy')
  num get dy;

  FieldManifestGrid._();

  factory FieldManifestGrid([void updates(FieldManifestGridBuilder b)]) =
      _$FieldManifestGrid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldManifestGridBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldManifestGrid> get serializer =>
      _$FieldManifestGridSerializer();
}

class _$FieldManifestGridSerializer
    implements PrimitiveSerializer<FieldManifestGrid> {
  @override
  final Iterable<Type> types = const [FieldManifestGrid, _$FieldManifestGrid];

  @override
  final String wireName = r'FieldManifestGrid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldManifestGrid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nx';
    yield serializers.serialize(
      object.nx,
      specifiedType: const FullType(int),
    );
    yield r'ny';
    yield serializers.serialize(
      object.ny,
      specifiedType: const FullType(int),
    );
    yield r'lo1';
    yield serializers.serialize(
      object.lo1,
      specifiedType: const FullType(num),
    );
    yield r'la1';
    yield serializers.serialize(
      object.la1,
      specifiedType: const FullType(num),
    );
    yield r'dx';
    yield serializers.serialize(
      object.dx,
      specifiedType: const FullType(num),
    );
    yield r'dy';
    yield serializers.serialize(
      object.dy,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldManifestGrid object, {
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
    required FieldManifestGridBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nx = valueDes;
          break;
        case r'ny':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ny = valueDes;
          break;
        case r'lo1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lo1 = valueDes;
          break;
        case r'la1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.la1 = valueDes;
          break;
        case r'dx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.dx = valueDes;
          break;
        case r'dy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.dy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldManifestGrid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldManifestGridBuilder();
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
