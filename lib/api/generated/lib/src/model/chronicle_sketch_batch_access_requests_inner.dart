//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_batch_access_requests_inner.g.dart';

/// A relayed access request
///
/// Properties:
/// * [requestId] - ULID identifier
/// * [linkId] - ULID identifier
/// * [sketchId] - The receiving instance's sketch id
/// * [requesterHandle]
/// * [message]
/// * [offerShare] - The requester offers to share a chronicle of its own
@BuiltValue()
abstract class ChronicleSketchBatchAccessRequestsInner
    implements
        Built<ChronicleSketchBatchAccessRequestsInner,
            ChronicleSketchBatchAccessRequestsInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'requestId')
  String get requestId;

  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String? get linkId;

  /// The receiving instance's sketch id
  @BuiltValueField(wireName: r'sketchId')
  String get sketchId;

  @BuiltValueField(wireName: r'requesterHandle')
  String get requesterHandle;

  @BuiltValueField(wireName: r'message')
  String? get message;

  /// The requester offers to share a chronicle of its own
  @BuiltValueField(wireName: r'offerShare')
  bool? get offerShare;

  ChronicleSketchBatchAccessRequestsInner._();

  factory ChronicleSketchBatchAccessRequestsInner(
          [void updates(ChronicleSketchBatchAccessRequestsInnerBuilder b)]) =
      _$ChronicleSketchBatchAccessRequestsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchBatchAccessRequestsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchBatchAccessRequestsInner> get serializer =>
      _$ChronicleSketchBatchAccessRequestsInnerSerializer();
}

class _$ChronicleSketchBatchAccessRequestsInnerSerializer
    implements PrimitiveSerializer<ChronicleSketchBatchAccessRequestsInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchBatchAccessRequestsInner,
    _$ChronicleSketchBatchAccessRequestsInner
  ];

  @override
  final String wireName = r'ChronicleSketchBatchAccessRequestsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchBatchAccessRequestsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'requestId';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(String),
    );
    if (object.linkId != null) {
      yield r'linkId';
      yield serializers.serialize(
        object.linkId,
        specifiedType: const FullType(String),
      );
    }
    yield r'sketchId';
    yield serializers.serialize(
      object.sketchId,
      specifiedType: const FullType(String),
    );
    yield r'requesterHandle';
    yield serializers.serialize(
      object.requesterHandle,
      specifiedType: const FullType(String),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.offerShare != null) {
      yield r'offerShare';
      yield serializers.serialize(
        object.offerShare,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchAccessRequestsInner object, {
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
    required ChronicleSketchBatchAccessRequestsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'linkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.linkId = valueDes;
          break;
        case r'sketchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sketchId = valueDes;
          break;
        case r'requesterHandle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requesterHandle = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'offerShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.offerShare = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchBatchAccessRequestsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchBatchAccessRequestsInnerBuilder();
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
