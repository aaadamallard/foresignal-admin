//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_suggest_request.g.dart';

/// Ask for a draft chronicle from a situation or an area and topic
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [area]
/// * [topic] - 117 attention topic id or free keywords
@BuiltValue()
abstract class ChronicleSuggestRequest
    implements Built<ChronicleSuggestRequest, ChronicleSuggestRequestBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'area')
  ChronicleArea? get area;

  /// 117 attention topic id or free keywords
  @BuiltValueField(wireName: r'topic')
  String? get topic;

  ChronicleSuggestRequest._();

  factory ChronicleSuggestRequest(
          [void updates(ChronicleSuggestRequestBuilder b)]) =
      _$ChronicleSuggestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSuggestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSuggestRequest> get serializer =>
      _$ChronicleSuggestRequestSerializer();
}

class _$ChronicleSuggestRequestSerializer
    implements PrimitiveSerializer<ChronicleSuggestRequest> {
  @override
  final Iterable<Type> types = const [
    ChronicleSuggestRequest,
    _$ChronicleSuggestRequest
  ];

  @override
  final String wireName = r'ChronicleSuggestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSuggestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    if (object.topic != null) {
      yield r'topic';
      yield serializers.serialize(
        object.topic,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSuggestRequest object, {
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
    required ChronicleSuggestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleArea),
          ) as ChronicleArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.topic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSuggestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSuggestRequestBuilder();
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
