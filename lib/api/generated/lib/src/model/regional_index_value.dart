//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/regional_index_value_components_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_value.g.dart';

/// Daily index value for a region with its decomposition
///
/// Properties:
/// * [indexId]
/// * [region]
/// * [day]
/// * [value]
/// * [components]
/// * [floorsApplied]
/// * [delta24h]
/// * [delta7d]
/// * [weightsVersion]
/// * [asOfSeq]
/// * [manifestId] - ULID identifier
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class RegionalIndexValue
    implements Built<RegionalIndexValue, RegionalIndexValueBuilder> {
  @BuiltValueField(wireName: r'indexId')
  String get indexId;

  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'day')
  Date get day;

  @BuiltValueField(wireName: r'value')
  num get value;

  @BuiltValueField(wireName: r'components')
  BuiltList<RegionalIndexValueComponentsInner> get components;

  @BuiltValueField(wireName: r'floorsApplied')
  BuiltList<String>? get floorsApplied;

  @BuiltValueField(wireName: r'delta24h')
  num? get delta24h;

  @BuiltValueField(wireName: r'delta7d')
  num? get delta7d;

  @BuiltValueField(wireName: r'weightsVersion')
  int? get weightsVersion;

  @BuiltValueField(wireName: r'asOfSeq')
  int get asOfSeq;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  RegionalIndexValue._();

  factory RegionalIndexValue([void updates(RegionalIndexValueBuilder b)]) =
      _$RegionalIndexValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexValue> get serializer =>
      _$RegionalIndexValueSerializer();
}

class _$RegionalIndexValueSerializer
    implements PrimitiveSerializer<RegionalIndexValue> {
  @override
  final Iterable<Type> types = const [RegionalIndexValue, _$RegionalIndexValue];

  @override
  final String wireName = r'RegionalIndexValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indexId';
    yield serializers.serialize(
      object.indexId,
      specifiedType: const FullType(String),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(Date),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [
        FullType(RegionalIndexValueComponentsInner),
      ]),
    );
    if (object.floorsApplied != null) {
      yield r'floorsApplied';
      yield serializers.serialize(
        object.floorsApplied,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.delta24h != null) {
      yield r'delta24h';
      yield serializers.serialize(
        object.delta24h,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.delta7d != null) {
      yield r'delta7d';
      yield serializers.serialize(
        object.delta7d,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.weightsVersion != null) {
      yield r'weightsVersion';
      yield serializers.serialize(
        object.weightsVersion,
        specifiedType: const FullType(int),
      );
    }
    yield r'asOfSeq';
    yield serializers.serialize(
      object.asOfSeq,
      specifiedType: const FullType(int),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexValue object, {
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
    required RegionalIndexValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indexId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.indexId = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.region = valueDes;
          break;
        case r'day':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.day = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.value = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RegionalIndexValueComponentsInner),
                    ]),
                  )
                  as BuiltList<RegionalIndexValueComponentsInner>;
          result.components.replace(valueDes);
          break;
        case r'floorsApplied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.floorsApplied.replace(valueDes);
          break;
        case r'delta24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.delta24h = valueDes;
          break;
        case r'delta7d':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.delta7d = valueDes;
          break;
        case r'weightsVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.weightsVersion = valueDes;
          break;
        case r'asOfSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.asOfSeq = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'recordRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexValueBuilder();
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
