//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'index_changed_event.g.dart';

/// SSE payload for `index.changed` (≥ 5 points; topic `analytics`)
///
/// Properties:
/// * [indexId]
/// * [region]
/// * [day]
/// * [value]
/// * [previousValue]
/// * [delta24h]
/// * [delta7d]
/// * [weightsOrigin]
@BuiltValue()
abstract class IndexChangedEvent
    implements Built<IndexChangedEvent, IndexChangedEventBuilder> {
  @BuiltValueField(wireName: r'indexId')
  String get indexId;

  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'day')
  Date get day;

  @BuiltValueField(wireName: r'value')
  num get value;

  @BuiltValueField(wireName: r'previousValue')
  num? get previousValue;

  @BuiltValueField(wireName: r'delta24h')
  num? get delta24h;

  @BuiltValueField(wireName: r'delta7d')
  num? get delta7d;

  @BuiltValueField(wireName: r'weightsOrigin')
  IndexChangedEventWeightsOriginEnum? get weightsOrigin;
  // enum weightsOriginEnum {  default,  fitted,  operator,  };

  IndexChangedEvent._();

  factory IndexChangedEvent([void updates(IndexChangedEventBuilder b)]) =
      _$IndexChangedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexChangedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexChangedEvent> get serializer =>
      _$IndexChangedEventSerializer();
}

class _$IndexChangedEventSerializer
    implements PrimitiveSerializer<IndexChangedEvent> {
  @override
  final Iterable<Type> types = const [IndexChangedEvent, _$IndexChangedEvent];

  @override
  final String wireName = r'IndexChangedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexChangedEvent object, {
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
    if (object.previousValue != null) {
      yield r'previousValue';
      yield serializers.serialize(
        object.previousValue,
        specifiedType: const FullType.nullable(num),
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
    if (object.weightsOrigin != null) {
      yield r'weightsOrigin';
      yield serializers.serialize(
        object.weightsOrigin,
        specifiedType: const FullType(IndexChangedEventWeightsOriginEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexChangedEvent object, {
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
    required IndexChangedEventBuilder result,
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
        case r'previousValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.previousValue = valueDes;
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
        case r'weightsOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndexChangedEventWeightsOriginEnum,
                    ),
                  )
                  as IndexChangedEventWeightsOriginEnum?;
          if (valueDes == null) continue;
          result.weightsOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexChangedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexChangedEventBuilder();
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

class IndexChangedEventWeightsOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'default')
  static const IndexChangedEventWeightsOriginEnum default_ =
      _$indexChangedEventWeightsOriginEnum_default_;
  @BuiltValueEnumConst(wireName: r'fitted')
  static const IndexChangedEventWeightsOriginEnum fitted =
      _$indexChangedEventWeightsOriginEnum_fitted;
  @BuiltValueEnumConst(wireName: r'operator')
  static const IndexChangedEventWeightsOriginEnum operator_ =
      _$indexChangedEventWeightsOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IndexChangedEventWeightsOriginEnum unknownDefaultOpenApi =
      _$indexChangedEventWeightsOriginEnum_unknownDefaultOpenApi;

  static Serializer<IndexChangedEventWeightsOriginEnum> get serializer =>
      _$indexChangedEventWeightsOriginEnumSerializer;

  const IndexChangedEventWeightsOriginEnum._(String name) : super(name);

  static BuiltSet<IndexChangedEventWeightsOriginEnum> get values =>
      _$indexChangedEventWeightsOriginEnumValues;
  static IndexChangedEventWeightsOriginEnum valueOf(String name) =>
      _$indexChangedEventWeightsOriginEnumValueOf(name);
}
