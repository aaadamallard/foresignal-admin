//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_citations_inner.g.dart';

/// A citation supporting a forecast
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [quote]
/// * [claim]
@BuiltValue()
abstract class ForecastCitationsInner
    implements Built<ForecastCitationsInner, ForecastCitationsInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'quote')
  String? get quote;

  @BuiltValueField(wireName: r'claim')
  String? get claim;

  ForecastCitationsInner._();

  factory ForecastCitationsInner([
    void updates(ForecastCitationsInnerBuilder b),
  ]) = _$ForecastCitationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastCitationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastCitationsInner> get serializer =>
      _$ForecastCitationsInnerSerializer();
}

class _$ForecastCitationsInnerSerializer
    implements PrimitiveSerializer<ForecastCitationsInner> {
  @override
  final Iterable<Type> types = const [
    ForecastCitationsInner,
    _$ForecastCitationsInner,
  ];

  @override
  final String wireName = r'ForecastCitationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastCitationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.quote != null) {
      yield r'quote';
      yield serializers.serialize(
        object.quote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.claim != null) {
      yield r'claim';
      yield serializers.serialize(
        object.claim,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastCitationsInner object, {
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
    required ForecastCitationsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'quote':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.quote = valueDes;
          break;
        case r'claim':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.claim = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastCitationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastCitationsInnerBuilder();
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
