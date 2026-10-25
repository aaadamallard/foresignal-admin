//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/field_encodings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/field_manifest_grid.dart';
import 'package:foresignal_api/src/model/field_manifest_components_inner.dart';
import 'package:foresignal_api/src/model/field_manifest_cycle.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_manifest.g.dart';

/// GEV `schemaVersion: 1` wind-field manifest plus Foresignal additions
///
/// Properties:
/// * [schemaVersion]
/// * [model]
/// * [cycle]
/// * [level]
/// * [units]
/// * [grid]
/// * [stale]
/// * [unavailable]
/// * [reason]
/// * [components]
/// * [byteLength] - Raw byte length (1°: 521,280)
/// * [sha256]
/// * [attribution]
/// * [dataUrl] - Content-addressed `.f32` URL (run pinned, bbox snapped)
/// * [encodings]
@BuiltValue()
abstract class FieldManifest
    implements Built<FieldManifest, FieldManifestBuilder> {
  @BuiltValueField(wireName: r'schemaVersion')
  FieldManifestSchemaVersionEnum get schemaVersion;
  // enum schemaVersionEnum {  1,  };

  @BuiltValueField(wireName: r'model')
  String get model;

  @BuiltValueField(wireName: r'cycle')
  FieldManifestCycle get cycle;

  @BuiltValueField(wireName: r'level')
  String get level;

  @BuiltValueField(wireName: r'units')
  String get units;

  @BuiltValueField(wireName: r'grid')
  FieldManifestGrid get grid;

  @BuiltValueField(wireName: r'stale')
  bool get stale;

  @BuiltValueField(wireName: r'unavailable')
  bool get unavailable;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'components')
  BuiltList<FieldManifestComponentsInner> get components;

  /// Raw byte length (1°: 521,280)
  @BuiltValueField(wireName: r'byteLength')
  int get byteLength;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  @BuiltValueField(wireName: r'attribution')
  Attribution? get attribution;

  /// Content-addressed `.f32` URL (run pinned, bbox snapped)
  @BuiltValueField(wireName: r'dataUrl')
  String get dataUrl;

  @BuiltValueField(wireName: r'encodings')
  FieldEncodings? get encodings;

  FieldManifest._();

  factory FieldManifest([void updates(FieldManifestBuilder b)]) =
      _$FieldManifest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldManifestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldManifest> get serializer =>
      _$FieldManifestSerializer();
}

class _$FieldManifestSerializer implements PrimitiveSerializer<FieldManifest> {
  @override
  final Iterable<Type> types = const [FieldManifest, _$FieldManifest];

  @override
  final String wireName = r'FieldManifest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'schemaVersion';
    yield serializers.serialize(
      object.schemaVersion,
      specifiedType: const FullType(FieldManifestSchemaVersionEnum),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
    yield r'cycle';
    yield serializers.serialize(
      object.cycle,
      specifiedType: const FullType(FieldManifestCycle),
    );
    yield r'level';
    yield serializers.serialize(
      object.level,
      specifiedType: const FullType(String),
    );
    yield r'units';
    yield serializers.serialize(
      object.units,
      specifiedType: const FullType(String),
    );
    yield r'grid';
    yield serializers.serialize(
      object.grid,
      specifiedType: const FullType(FieldManifestGrid),
    );
    yield r'stale';
    yield serializers.serialize(
      object.stale,
      specifiedType: const FullType(bool),
    );
    yield r'unavailable';
    yield serializers.serialize(
      object.unavailable,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [
        FullType(FieldManifestComponentsInner),
      ]),
    );
    yield r'byteLength';
    yield serializers.serialize(
      object.byteLength,
      specifiedType: const FullType(int),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(Attribution),
      );
    }
    yield r'dataUrl';
    yield serializers.serialize(
      object.dataUrl,
      specifiedType: const FullType(String),
    );
    if (object.encodings != null) {
      yield r'encodings';
      yield serializers.serialize(
        object.encodings,
        specifiedType: const FullType(FieldEncodings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldManifest object, {
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
    required FieldManifestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schemaVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      FieldManifestSchemaVersionEnum,
                    ),
                  )
                  as FieldManifestSchemaVersionEnum;
          result.schemaVersion = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.model = valueDes;
          break;
        case r'cycle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FieldManifestCycle),
                  )
                  as FieldManifestCycle;
          result.cycle.replace(valueDes);
          break;
        case r'level':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.level = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.units = valueDes;
          break;
        case r'grid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FieldManifestGrid),
                  )
                  as FieldManifestGrid;
          result.grid.replace(valueDes);
          break;
        case r'stale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.stale = valueDes;
          break;
        case r'unavailable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.unavailable = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(FieldManifestComponentsInner),
                    ]),
                  )
                  as BuiltList<FieldManifestComponentsInner>;
          result.components.replace(valueDes);
          break;
        case r'byteLength':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.byteLength = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Attribution),
                  )
                  as Attribution?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'dataUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.dataUrl = valueDes;
          break;
        case r'encodings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FieldEncodings),
                  )
                  as FieldEncodings?;
          if (valueDes == null) continue;
          result.encodings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldManifest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldManifestBuilder();
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

class FieldManifestSchemaVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const FieldManifestSchemaVersionEnum number1 =
      _$fieldManifestSchemaVersionEnum_number1;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const FieldManifestSchemaVersionEnum unknownDefaultOpenApi =
      _$fieldManifestSchemaVersionEnum_unknownDefaultOpenApi;

  static Serializer<FieldManifestSchemaVersionEnum> get serializer =>
      _$fieldManifestSchemaVersionEnumSerializer;

  const FieldManifestSchemaVersionEnum._(String name) : super(name);

  static BuiltSet<FieldManifestSchemaVersionEnum> get values =>
      _$fieldManifestSchemaVersionEnumValues;
  static FieldManifestSchemaVersionEnum valueOf(String name) =>
      _$fieldManifestSchemaVersionEnumValueOf(name);
}
