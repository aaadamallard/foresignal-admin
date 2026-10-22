//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/metric_projection_labels_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metric_projection.g.dart';

/// A payload field exposed as a Prometheus gauge `foresignal_data_<name>` (038)
///
/// Properties:
/// * [name]
/// * [source_]
/// * [kind]
/// * [path] - 017 trigger path syntax; must not be a volatile field
/// * [labels] - Default labels source and external_id; entities with the same label values share one series (the latest write wins)
/// * [unit]
/// * [help]
/// * [maxSeries]
/// * [allowPrivate]
@BuiltValue()
abstract class MetricProjection
    implements Built<MetricProjection, MetricProjectionBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// 017 trigger path syntax; must not be a volatile field
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Default labels source and external_id; entities with the same label values share one series (the latest write wins)
  @BuiltValueField(wireName: r'labels')
  BuiltList<MetricProjectionLabelsInner>? get labels;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'help')
  String? get help;

  @BuiltValueField(wireName: r'maxSeries')
  int? get maxSeries;

  @BuiltValueField(wireName: r'allowPrivate')
  bool? get allowPrivate;

  MetricProjection._();

  factory MetricProjection([void updates(MetricProjectionBuilder b)]) =
      _$MetricProjection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricProjectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricProjection> get serializer =>
      _$MetricProjectionSerializer();
}

class _$MetricProjectionSerializer
    implements PrimitiveSerializer<MetricProjection> {
  @override
  final Iterable<Type> types = const [MetricProjection, _$MetricProjection];

  @override
  final String wireName = r'MetricProjection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.labels != null) {
      yield r'labels';
      yield serializers.serialize(
        object.labels,
        specifiedType:
            const FullType(BuiltList, [FullType(MetricProjectionLabelsInner)]),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.help != null) {
      yield r'help';
      yield serializers.serialize(
        object.help,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxSeries != null) {
      yield r'maxSeries';
      yield serializers.serialize(
        object.maxSeries,
        specifiedType: const FullType(int),
      );
    }
    if (object.allowPrivate != null) {
      yield r'allowPrivate';
      yield serializers.serialize(
        object.allowPrivate,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricProjection object, {
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
    required MetricProjectionBuilder result,
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
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'labels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(MetricProjectionLabelsInner)]),
          ) as BuiltList<MetricProjectionLabelsInner>?;
          if (valueDes == null) continue;
          result.labels.replace(valueDes);
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'help':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.help = valueDes;
          break;
        case r'maxSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxSeries = valueDes;
          break;
        case r'allowPrivate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowPrivate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricProjection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricProjectionBuilder();
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
