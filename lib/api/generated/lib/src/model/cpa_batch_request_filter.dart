//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cpa_batch_request_filter.g.dart';

/// Candidate records
///
/// Properties:
/// * [kinds]
/// * [sources]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
@BuiltValue()
abstract class CpaBatchRequestFilter
    implements Built<CpaBatchRequestFilter, CpaBatchRequestFilterBuilder> {
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  CpaBatchRequestFilter._();

  factory CpaBatchRequestFilter([
    void updates(CpaBatchRequestFilterBuilder b),
  ]) = _$CpaBatchRequestFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CpaBatchRequestFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CpaBatchRequestFilter> get serializer =>
      _$CpaBatchRequestFilterSerializer();
}

class _$CpaBatchRequestFilterSerializer
    implements PrimitiveSerializer<CpaBatchRequestFilter> {
  @override
  final Iterable<Type> types = const [
    CpaBatchRequestFilter,
    _$CpaBatchRequestFilter,
  ];

  @override
  final String wireName = r'CpaBatchRequestFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CpaBatchRequestFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CpaBatchRequestFilter object, {
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
    required CpaBatchRequestFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CpaBatchRequestFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CpaBatchRequestFilterBuilder();
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
