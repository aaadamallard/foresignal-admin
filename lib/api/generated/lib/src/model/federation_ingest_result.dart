//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/federation_ingest_result_dropped.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_ingest_result.g.dart';

/// Outcome of a federation ingest or bundle (113)
///
/// Properties:
/// * [accepted]
/// * [duplicates] - Already seen (origin_ref, origin_seq)
/// * [dropped]
@BuiltValue()
abstract class FederationIngestResult
    implements Built<FederationIngestResult, FederationIngestResultBuilder> {
  @BuiltValueField(wireName: r'accepted')
  int get accepted;

  /// Already seen (origin_ref, origin_seq)
  @BuiltValueField(wireName: r'duplicates')
  int get duplicates;

  @BuiltValueField(wireName: r'dropped')
  FederationIngestResultDropped get dropped;

  FederationIngestResult._();

  factory FederationIngestResult(
          [void updates(FederationIngestResultBuilder b)]) =
      _$FederationIngestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationIngestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationIngestResult> get serializer =>
      _$FederationIngestResultSerializer();
}

class _$FederationIngestResultSerializer
    implements PrimitiveSerializer<FederationIngestResult> {
  @override
  final Iterable<Type> types = const [
    FederationIngestResult,
    _$FederationIngestResult
  ];

  @override
  final String wireName = r'FederationIngestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationIngestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(int),
    );
    yield r'duplicates';
    yield serializers.serialize(
      object.duplicates,
      specifiedType: const FullType(int),
    );
    yield r'dropped';
    yield serializers.serialize(
      object.dropped,
      specifiedType: const FullType(FederationIngestResultDropped),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationIngestResult object, {
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
    required FederationIngestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accepted = valueDes;
          break;
        case r'duplicates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duplicates = valueDes;
          break;
        case r'dropped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FederationIngestResultDropped),
          ) as FederationIngestResultDropped;
          result.dropped.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederationIngestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationIngestResultBuilder();
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
