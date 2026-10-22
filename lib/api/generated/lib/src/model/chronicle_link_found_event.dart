//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_related_page_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_link_found_event.g.dart';

/// SSE `chronicle.link.found` on the `me` topic
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [link]
/// * [at]
@BuiltValue()
abstract class ChronicleLinkFoundEvent
    implements Built<ChronicleLinkFoundEvent, ChronicleLinkFoundEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'link')
  ChronicleRelatedPageItemsInner get link;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ChronicleLinkFoundEvent._();

  factory ChronicleLinkFoundEvent(
          [void updates(ChronicleLinkFoundEventBuilder b)]) =
      _$ChronicleLinkFoundEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLinkFoundEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLinkFoundEvent> get serializer =>
      _$ChronicleLinkFoundEventSerializer();
}

class _$ChronicleLinkFoundEventSerializer
    implements PrimitiveSerializer<ChronicleLinkFoundEvent> {
  @override
  final Iterable<Type> types = const [
    ChronicleLinkFoundEvent,
    _$ChronicleLinkFoundEvent
  ];

  @override
  final String wireName = r'ChronicleLinkFoundEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLinkFoundEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'link';
    yield serializers.serialize(
      object.link,
      specifiedType: const FullType(ChronicleRelatedPageItemsInner),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLinkFoundEvent object, {
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
    required ChronicleLinkFoundEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleRelatedPageItemsInner),
          ) as ChronicleRelatedPageItemsInner;
          result.link.replace(valueDes);
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLinkFoundEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLinkFoundEventBuilder();
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
