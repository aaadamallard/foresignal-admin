//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/anomaly_observation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation_page.g.dart';

/// Anomaly results, newest first
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null on the last page
@BuiltValue()
abstract class AnomalyObservationPage
    implements Built<AnomalyObservationPage, AnomalyObservationPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AnomalyObservation> get items;

  /// Opaque cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AnomalyObservationPage._();

  factory AnomalyObservationPage([
    void updates(AnomalyObservationPageBuilder b),
  ]) = _$AnomalyObservationPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyObservationPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservationPage> get serializer =>
      _$AnomalyObservationPageSerializer();
}

class _$AnomalyObservationPageSerializer
    implements PrimitiveSerializer<AnomalyObservationPage> {
  @override
  final Iterable<Type> types = const [
    AnomalyObservationPage,
    _$AnomalyObservationPage,
  ];

  @override
  final String wireName = r'AnomalyObservationPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservationPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AnomalyObservation)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationPage object, {
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
    required AnomalyObservationPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AnomalyObservation),
                    ]),
                  )
                  as BuiltList<AnomalyObservation>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservationPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationPageBuilder();
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
