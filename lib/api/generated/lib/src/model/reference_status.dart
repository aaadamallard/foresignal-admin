//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/reference_dataset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_status.g.dart';

/// Reference data state (040)
///
/// Properties:
/// * [datasets]
/// * [loading]
/// * [attributions]
/// * [boundaryNote] - Natural Earth draws de facto boundaries
@BuiltValue()
abstract class ReferenceStatus
    implements Built<ReferenceStatus, ReferenceStatusBuilder> {
  @BuiltValueField(wireName: r'datasets')
  BuiltList<ReferenceDataset> get datasets;

  @BuiltValueField(wireName: r'loading')
  bool? get loading;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<String>? get attributions;

  /// Natural Earth draws de facto boundaries
  @BuiltValueField(wireName: r'boundaryNote')
  String? get boundaryNote;

  ReferenceStatus._();

  factory ReferenceStatus([void updates(ReferenceStatusBuilder b)]) =
      _$ReferenceStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceStatus> get serializer =>
      _$ReferenceStatusSerializer();
}

class _$ReferenceStatusSerializer
    implements PrimitiveSerializer<ReferenceStatus> {
  @override
  final Iterable<Type> types = const [ReferenceStatus, _$ReferenceStatus];

  @override
  final String wireName = r'ReferenceStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'datasets';
    yield serializers.serialize(
      object.datasets,
      specifiedType: const FullType(BuiltList, [FullType(ReferenceDataset)]),
    );
    if (object.loading != null) {
      yield r'loading';
      yield serializers.serialize(
        object.loading,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.boundaryNote != null) {
      yield r'boundaryNote';
      yield serializers.serialize(
        object.boundaryNote,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceStatus object, {
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
    required ReferenceStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'datasets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ReferenceDataset),
                    ]),
                  )
                  as BuiltList<ReferenceDataset>;
          result.datasets.replace(valueDes);
          break;
        case r'loading':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.loading = valueDes;
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'boundaryNote':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.boundaryNote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceStatusBuilder();
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
