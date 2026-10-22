//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_catalogue_entry_time_dimension.g.dart';

/// Time dimension of the external layer
///
/// Properties:
/// * [format] - Time value format in the template
/// * [period] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [typicalLatency] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [defaultLag] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class ExternalCatalogueEntryTimeDimension
    implements
        Built<
          ExternalCatalogueEntryTimeDimension,
          ExternalCatalogueEntryTimeDimensionBuilder
        > {
  /// Time value format in the template
  @BuiltValueField(wireName: r'format')
  String? get format;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'period')
  String? get period;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'typicalLatency')
  String? get typicalLatency;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'defaultLag')
  String? get defaultLag;

  ExternalCatalogueEntryTimeDimension._();

  factory ExternalCatalogueEntryTimeDimension([
    void updates(ExternalCatalogueEntryTimeDimensionBuilder b),
  ]) = _$ExternalCatalogueEntryTimeDimension;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalCatalogueEntryTimeDimensionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalCatalogueEntryTimeDimension> get serializer =>
      _$ExternalCatalogueEntryTimeDimensionSerializer();
}

class _$ExternalCatalogueEntryTimeDimensionSerializer
    implements PrimitiveSerializer<ExternalCatalogueEntryTimeDimension> {
  @override
  final Iterable<Type> types = const [
    ExternalCatalogueEntryTimeDimension,
    _$ExternalCatalogueEntryTimeDimension,
  ];

  @override
  final String wireName = r'ExternalCatalogueEntryTimeDimension';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalCatalogueEntryTimeDimension object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(String),
      );
    }
    if (object.typicalLatency != null) {
      yield r'typicalLatency';
      yield serializers.serialize(
        object.typicalLatency,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultLag != null) {
      yield r'defaultLag';
      yield serializers.serialize(
        object.defaultLag,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalCatalogueEntryTimeDimension object, {
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
    required ExternalCatalogueEntryTimeDimensionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'period':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.period = valueDes;
          break;
        case r'typicalLatency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.typicalLatency = valueDes;
          break;
        case r'defaultLag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultLag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalCatalogueEntryTimeDimension deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalCatalogueEntryTimeDimensionBuilder();
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
