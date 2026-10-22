//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance_alerts_latest_inner.g.dart';

/// Latest alert
///
/// Properties:
/// * [id]
/// * [severity]
/// * [shortTitle]
/// * [firedAt]
/// * [near] - e.g. 12 km NNE of Austin, TX (040)
@BuiltValue()
abstract class GlanceAlertsLatestInner
    implements Built<GlanceAlertsLatestInner, GlanceAlertsLatestInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'severity')
  GlanceAlertsLatestInnerSeverityEnum get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'shortTitle')
  String? get shortTitle;

  @BuiltValueField(wireName: r'firedAt')
  DateTime get firedAt;

  /// e.g. 12 km NNE of Austin, TX (040)
  @BuiltValueField(wireName: r'near')
  String? get near;

  GlanceAlertsLatestInner._();

  factory GlanceAlertsLatestInner(
          [void updates(GlanceAlertsLatestInnerBuilder b)]) =
      _$GlanceAlertsLatestInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceAlertsLatestInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GlanceAlertsLatestInner> get serializer =>
      _$GlanceAlertsLatestInnerSerializer();
}

class _$GlanceAlertsLatestInnerSerializer
    implements PrimitiveSerializer<GlanceAlertsLatestInner> {
  @override
  final Iterable<Type> types = const [
    GlanceAlertsLatestInner,
    _$GlanceAlertsLatestInner
  ];

  @override
  final String wireName = r'GlanceAlertsLatestInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GlanceAlertsLatestInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(GlanceAlertsLatestInnerSeverityEnum),
    );
    if (object.shortTitle != null) {
      yield r'shortTitle';
      yield serializers.serialize(
        object.shortTitle,
        specifiedType: const FullType(String),
      );
    }
    yield r'firedAt';
    yield serializers.serialize(
      object.firedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GlanceAlertsLatestInner object, {
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
    required GlanceAlertsLatestInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GlanceAlertsLatestInnerSeverityEnum),
          ) as GlanceAlertsLatestInnerSeverityEnum;
          result.severity = valueDes;
          break;
        case r'shortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortTitle = valueDes;
          break;
        case r'firedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firedAt = valueDes;
          break;
        case r'near':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.near = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GlanceAlertsLatestInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceAlertsLatestInnerBuilder();
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

class GlanceAlertsLatestInnerSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const GlanceAlertsLatestInnerSeverityEnum info =
      _$glanceAlertsLatestInnerSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const GlanceAlertsLatestInnerSeverityEnum warning =
      _$glanceAlertsLatestInnerSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const GlanceAlertsLatestInnerSeverityEnum critical =
      _$glanceAlertsLatestInnerSeverityEnum_critical;

  static Serializer<GlanceAlertsLatestInnerSeverityEnum> get serializer =>
      _$glanceAlertsLatestInnerSeverityEnumSerializer;

  const GlanceAlertsLatestInnerSeverityEnum._(String name) : super(name);

  static BuiltSet<GlanceAlertsLatestInnerSeverityEnum> get values =>
      _$glanceAlertsLatestInnerSeverityEnumValues;
  static GlanceAlertsLatestInnerSeverityEnum valueOf(String name) =>
      _$glanceAlertsLatestInnerSeverityEnumValueOf(name);
}
