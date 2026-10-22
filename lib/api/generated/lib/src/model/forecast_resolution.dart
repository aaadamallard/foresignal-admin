//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_resolution.g.dart';

/// How a question resolved, with pinned evidence
///
/// Properties:
/// * [outcome] - Binary `yes`/`no`, or the label of a multiple/ordered question
/// * [value] - Numeric questions
/// * [resolvedAt]
/// * [resolvedBy] - Resolver id and version, or the principal for manual resolutions
/// * [early] - Resolved before `resolve_by` because the event occurred
/// * [asOf] - Knowledge cutoff used (`resolve_by` + release lag)
/// * [evidence] - Pinned records or rollup rows
/// * [note]
/// * [caveats] - e.g. late data still missing after 14 days
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class ForecastResolution
    implements Built<ForecastResolution, ForecastResolutionBuilder> {
  /// Binary `yes`/`no`, or the label of a multiple/ordered question
  @BuiltValueField(wireName: r'outcome')
  String? get outcome;

  /// Numeric questions
  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'resolvedAt')
  DateTime get resolvedAt;

  /// Resolver id and version, or the principal for manual resolutions
  @BuiltValueField(wireName: r'resolvedBy')
  String get resolvedBy;

  /// Resolved before `resolve_by` because the event occurred
  @BuiltValueField(wireName: r'early')
  bool? get early;

  /// Knowledge cutoff used (`resolve_by` + release lag)
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Pinned records or rollup rows
  @BuiltValueField(wireName: r'evidence')
  BuiltList<String> get evidence;

  @BuiltValueField(wireName: r'note')
  String? get note;

  /// e.g. late data still missing after 14 days
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  ForecastResolution._();

  factory ForecastResolution([void updates(ForecastResolutionBuilder b)]) =
      _$ForecastResolution;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastResolutionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastResolution> get serializer =>
      _$ForecastResolutionSerializer();
}

class _$ForecastResolutionSerializer
    implements PrimitiveSerializer<ForecastResolution> {
  @override
  final Iterable<Type> types = const [ForecastResolution, _$ForecastResolution];

  @override
  final String wireName = r'ForecastResolution';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastResolution object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.outcome != null) {
      yield r'outcome';
      yield serializers.serialize(
        object.outcome,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'resolvedAt';
    yield serializers.serialize(
      object.resolvedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'resolvedBy';
    yield serializers.serialize(
      object.resolvedBy,
      specifiedType: const FullType(String),
    );
    if (object.early != null) {
      yield r'early';
      yield serializers.serialize(
        object.early,
        specifiedType: const FullType(bool),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastResolution object, {
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
    required ForecastResolutionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.outcome = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'resolvedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.resolvedAt = valueDes;
          break;
        case r'resolvedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.resolvedBy = valueDes;
          break;
        case r'early':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.early = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.evidence.replace(valueDes);
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastResolution deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastResolutionBuilder();
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
