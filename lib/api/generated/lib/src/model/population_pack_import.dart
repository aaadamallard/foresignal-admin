//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/population_pack_import_cells.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'population_pack_import.g.dart';

/// Result of a population pack import
///
/// Properties:
/// * [id] - ULID identifier
/// * [path]
/// * [fileSha256]
/// * [epoch]
/// * [licence]
/// * [attribution]
/// * [cells]
/// * [importedAt]
/// * [durationMs]
@BuiltValue()
abstract class PopulationPackImport
    implements Built<PopulationPackImport, PopulationPackImportBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'fileSha256')
  String get fileSha256;

  @BuiltValueField(wireName: r'epoch')
  int get epoch;

  @BuiltValueField(wireName: r'licence')
  PopulationPackImportLicenceEnum get licence;
  // enum licenceEnum {  CC-BY-4.0,  };

  @BuiltValueField(wireName: r'attribution')
  String get attribution;

  @BuiltValueField(wireName: r'cells')
  PopulationPackImportCells? get cells;

  @BuiltValueField(wireName: r'importedAt')
  DateTime get importedAt;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  PopulationPackImport._();

  factory PopulationPackImport([void updates(PopulationPackImportBuilder b)]) =
      _$PopulationPackImport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PopulationPackImportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PopulationPackImport> get serializer =>
      _$PopulationPackImportSerializer();
}

class _$PopulationPackImportSerializer
    implements PrimitiveSerializer<PopulationPackImport> {
  @override
  final Iterable<Type> types = const [
    PopulationPackImport,
    _$PopulationPackImport
  ];

  @override
  final String wireName = r'PopulationPackImport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PopulationPackImport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    yield r'fileSha256';
    yield serializers.serialize(
      object.fileSha256,
      specifiedType: const FullType(String),
    );
    yield r'epoch';
    yield serializers.serialize(
      object.epoch,
      specifiedType: const FullType(int),
    );
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(PopulationPackImportLicenceEnum),
    );
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(String),
    );
    if (object.cells != null) {
      yield r'cells';
      yield serializers.serialize(
        object.cells,
        specifiedType: const FullType(PopulationPackImportCells),
      );
    }
    yield r'importedAt';
    yield serializers.serialize(
      object.importedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PopulationPackImport object, {
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
    required PopulationPackImportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'fileSha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileSha256 = valueDes;
          break;
        case r'epoch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.epoch = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PopulationPackImportLicenceEnum),
          ) as PopulationPackImportLicenceEnum;
          result.licence = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attribution = valueDes;
          break;
        case r'cells':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PopulationPackImportCells),
          ) as PopulationPackImportCells?;
          if (valueDes == null) continue;
          result.cells.replace(valueDes);
          break;
        case r'importedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.importedAt = valueDes;
          break;
        case r'durationMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PopulationPackImport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PopulationPackImportBuilder();
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

class PopulationPackImportLicenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CC-BY-4.0')
  static const PopulationPackImportLicenceEnum cCBY4Period0 =
      _$populationPackImportLicenceEnum_cCBY4Period0;

  static Serializer<PopulationPackImportLicenceEnum> get serializer =>
      _$populationPackImportLicenceEnumSerializer;

  const PopulationPackImportLicenceEnum._(String name) : super(name);

  static BuiltSet<PopulationPackImportLicenceEnum> get values =>
      _$populationPackImportLicenceEnumValues;
  static PopulationPackImportLicenceEnum valueOf(String name) =>
      _$populationPackImportLicenceEnumValueOf(name);
}
