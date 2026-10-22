//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_dataset.g.dart';

/// One reference dataset (040)
///
/// Properties:
/// * [name]
/// * [edition]
/// * [url]
/// * [sha256]
/// * [licence]
/// * [attribution]
/// * [rows]
/// * [loadedAt]
/// * [optional]
/// * [state]
/// * [error]
@BuiltValue()
abstract class ReferenceDataset
    implements Built<ReferenceDataset, ReferenceDatasetBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'edition')
  String? get edition;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'sha256')
  String? get sha256;

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'rows')
  int? get rows;

  @BuiltValueField(wireName: r'loadedAt')
  DateTime? get loadedAt;

  @BuiltValueField(wireName: r'optional')
  bool? get optional;

  @BuiltValueField(wireName: r'state')
  ReferenceDatasetStateEnum get state;
  // enum stateEnum {  absent,  loading,  loaded,  failed,  };

  @BuiltValueField(wireName: r'error')
  String? get error;

  ReferenceDataset._();

  factory ReferenceDataset([void updates(ReferenceDatasetBuilder b)]) =
      _$ReferenceDataset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceDatasetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceDataset> get serializer =>
      _$ReferenceDatasetSerializer();
}

class _$ReferenceDatasetSerializer
    implements PrimitiveSerializer<ReferenceDataset> {
  @override
  final Iterable<Type> types = const [ReferenceDataset, _$ReferenceDataset];

  @override
  final String wireName = r'ReferenceDataset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.edition != null) {
      yield r'edition';
      yield serializers.serialize(
        object.edition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.sha256 != null) {
      yield r'sha256';
      yield serializers.serialize(
        object.sha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.loadedAt != null) {
      yield r'loadedAt';
      yield serializers.serialize(
        object.loadedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.optional != null) {
      yield r'optional';
      yield serializers.serialize(
        object.optional,
        specifiedType: const FullType(bool),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ReferenceDatasetStateEnum),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceDataset object, {
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
    required ReferenceDatasetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'edition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edition = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sha256 = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rows = valueDes;
          break;
        case r'loadedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.loadedAt = valueDes;
          break;
        case r'optional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.optional = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReferenceDatasetStateEnum),
          ) as ReferenceDatasetStateEnum;
          result.state = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceDataset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceDatasetBuilder();
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

class ReferenceDatasetStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'absent')
  static const ReferenceDatasetStateEnum absent =
      _$referenceDatasetStateEnum_absent;
  @BuiltValueEnumConst(wireName: r'loading')
  static const ReferenceDatasetStateEnum loading =
      _$referenceDatasetStateEnum_loading;
  @BuiltValueEnumConst(wireName: r'loaded')
  static const ReferenceDatasetStateEnum loaded =
      _$referenceDatasetStateEnum_loaded;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ReferenceDatasetStateEnum failed =
      _$referenceDatasetStateEnum_failed;

  static Serializer<ReferenceDatasetStateEnum> get serializer =>
      _$referenceDatasetStateEnumSerializer;

  const ReferenceDatasetStateEnum._(String name) : super(name);

  static BuiltSet<ReferenceDatasetStateEnum> get values =>
      _$referenceDatasetStateEnumValues;
  static ReferenceDatasetStateEnum valueOf(String name) =>
      _$referenceDatasetStateEnumValueOf(name);
}
