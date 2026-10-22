//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'population_pack_import_cells.g.dart';

/// Imported H3 cells
///
/// Properties:
/// * [res5]
/// * [res7]
@BuiltValue()
abstract class PopulationPackImportCells
    implements
        Built<PopulationPackImportCells, PopulationPackImportCellsBuilder> {
  @BuiltValueField(wireName: r'res5')
  int? get res5;

  @BuiltValueField(wireName: r'res7')
  int? get res7;

  PopulationPackImportCells._();

  factory PopulationPackImportCells([
    void updates(PopulationPackImportCellsBuilder b),
  ]) = _$PopulationPackImportCells;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PopulationPackImportCellsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PopulationPackImportCells> get serializer =>
      _$PopulationPackImportCellsSerializer();
}

class _$PopulationPackImportCellsSerializer
    implements PrimitiveSerializer<PopulationPackImportCells> {
  @override
  final Iterable<Type> types = const [
    PopulationPackImportCells,
    _$PopulationPackImportCells,
  ];

  @override
  final String wireName = r'PopulationPackImportCells';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PopulationPackImportCells object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.res5 != null) {
      yield r'res5';
      yield serializers.serialize(
        object.res5,
        specifiedType: const FullType(int),
      );
    }
    if (object.res7 != null) {
      yield r'res7';
      yield serializers.serialize(
        object.res7,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PopulationPackImportCells object, {
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
    required PopulationPackImportCellsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'res5':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.res5 = valueDes;
          break;
        case r'res7':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.res7 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PopulationPackImportCells deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PopulationPackImportCellsBuilder();
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
