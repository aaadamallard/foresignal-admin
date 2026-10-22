//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_state_event.g.dart';

/// SSE external.source.state payload
///
/// Properties:
/// * [sourceId]
/// * [state]
/// * [change]
/// * [at]
@BuiltValue()
abstract class ExternalSourceStateEvent
    implements
        Built<ExternalSourceStateEvent, ExternalSourceStateEventBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'change')
  ExternalSourceStateEventChangeEnum get change;
  // enum changeEnum {  registered,  approved,  suspended,  manifest-changed,  deleted,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ExternalSourceStateEvent._();

  factory ExternalSourceStateEvent(
          [void updates(ExternalSourceStateEventBuilder b)]) =
      _$ExternalSourceStateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourceStateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourceStateEvent> get serializer =>
      _$ExternalSourceStateEventSerializer();
}

class _$ExternalSourceStateEventSerializer
    implements PrimitiveSerializer<ExternalSourceStateEvent> {
  @override
  final Iterable<Type> types = const [
    ExternalSourceStateEvent,
    _$ExternalSourceStateEvent
  ];

  @override
  final String wireName = r'ExternalSourceStateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourceStateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    yield r'change';
    yield serializers.serialize(
      object.change,
      specifiedType: const FullType(ExternalSourceStateEventChangeEnum),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourceStateEvent object, {
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
    required ExternalSourceStateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalSourceStateEventChangeEnum),
          ) as ExternalSourceStateEventChangeEnum;
          result.change = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSourceStateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourceStateEventBuilder();
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

class ExternalSourceStateEventChangeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'registered')
  static const ExternalSourceStateEventChangeEnum registered =
      _$externalSourceStateEventChangeEnum_registered;
  @BuiltValueEnumConst(wireName: r'approved')
  static const ExternalSourceStateEventChangeEnum approved =
      _$externalSourceStateEventChangeEnum_approved;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const ExternalSourceStateEventChangeEnum suspended =
      _$externalSourceStateEventChangeEnum_suspended;
  @BuiltValueEnumConst(wireName: r'manifest-changed')
  static const ExternalSourceStateEventChangeEnum manifestChanged =
      _$externalSourceStateEventChangeEnum_manifestChanged;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const ExternalSourceStateEventChangeEnum deleted =
      _$externalSourceStateEventChangeEnum_deleted;

  static Serializer<ExternalSourceStateEventChangeEnum> get serializer =>
      _$externalSourceStateEventChangeEnumSerializer;

  const ExternalSourceStateEventChangeEnum._(String name) : super(name);

  static BuiltSet<ExternalSourceStateEventChangeEnum> get values =>
      _$externalSourceStateEventChangeEnumValues;
  static ExternalSourceStateEventChangeEnum valueOf(String name) =>
      _$externalSourceStateEventChangeEnumValueOf(name);
}
