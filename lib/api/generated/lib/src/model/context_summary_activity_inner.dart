//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary_activity_inner.g.dart';

/// Activity item, chronological
///
/// Properties:
/// * [at]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [type]
/// * [title]
/// * [severity]
/// * [signalFamily]
@BuiltValue()
abstract class ContextSummaryActivityInner
    implements
        Built<ContextSummaryActivityInner, ContextSummaryActivityInnerBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'type')
  ContextSummaryActivityInnerTypeEnum get type;
  // enum typeEnum {  alert,  finding,  situation-change,  record,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'severity')
  String? get severity;

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  ContextSummaryActivityInner._();

  factory ContextSummaryActivityInner(
          [void updates(ContextSummaryActivityInnerBuilder b)]) =
      _$ContextSummaryActivityInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryActivityInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummaryActivityInner> get serializer =>
      _$ContextSummaryActivityInnerSerializer();
}

class _$ContextSummaryActivityInnerSerializer
    implements PrimitiveSerializer<ContextSummaryActivityInner> {
  @override
  final Iterable<Type> types = const [
    ContextSummaryActivityInner,
    _$ContextSummaryActivityInner
  ];

  @override
  final String wireName = r'ContextSummaryActivityInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummaryActivityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ContextSummaryActivityInnerTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryActivityInner object, {
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
    required ContextSummaryActivityInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContextSummaryActivityInnerTypeEnum),
          ) as ContextSummaryActivityInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'signalFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummaryActivityInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryActivityInnerBuilder();
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

class ContextSummaryActivityInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const ContextSummaryActivityInnerTypeEnum alert =
      _$contextSummaryActivityInnerTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'finding')
  static const ContextSummaryActivityInnerTypeEnum finding =
      _$contextSummaryActivityInnerTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'situation-change')
  static const ContextSummaryActivityInnerTypeEnum situationChange =
      _$contextSummaryActivityInnerTypeEnum_situationChange;
  @BuiltValueEnumConst(wireName: r'record')
  static const ContextSummaryActivityInnerTypeEnum record =
      _$contextSummaryActivityInnerTypeEnum_record;

  static Serializer<ContextSummaryActivityInnerTypeEnum> get serializer =>
      _$contextSummaryActivityInnerTypeEnumSerializer;

  const ContextSummaryActivityInnerTypeEnum._(String name) : super(name);

  static BuiltSet<ContextSummaryActivityInnerTypeEnum> get values =>
      _$contextSummaryActivityInnerTypeEnumValues;
  static ContextSummaryActivityInnerTypeEnum valueOf(String name) =>
      _$contextSummaryActivityInnerTypeEnumValueOf(name);
}
