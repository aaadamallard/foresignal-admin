//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_links.g.dart';

/// Deep-link templates clients and notifications use (023). Defaults use the `foresignal://` scheme; operators may set verified https links.
///
/// Properties:
/// * [alert]
/// * [record]
/// * [briefingRun]
/// * [pair]
/// * [share] - A share link opened in a client (112); placeholder {key}. No default: `?open=1` on a share-link URL redirects only when this is set.
@BuiltValue()
abstract class ClientLinks implements Built<ClientLinks, ClientLinksBuilder> {
  @BuiltValueField(wireName: r'alert')
  String? get alert;

  @BuiltValueField(wireName: r'record')
  String? get record;

  @BuiltValueField(wireName: r'briefingRun')
  String? get briefingRun;

  @BuiltValueField(wireName: r'pair')
  String? get pair;

  /// A share link opened in a client (112); placeholder {key}. No default: `?open=1` on a share-link URL redirects only when this is set.
  @BuiltValueField(wireName: r'share')
  String? get share;

  ClientLinks._();

  factory ClientLinks([void updates(ClientLinksBuilder b)]) = _$ClientLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientLinks> get serializer => _$ClientLinksSerializer();
}

class _$ClientLinksSerializer implements PrimitiveSerializer<ClientLinks> {
  @override
  final Iterable<Type> types = const [ClientLinks, _$ClientLinks];

  @override
  final String wireName = r'ClientLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alert != null) {
      yield r'alert';
      yield serializers.serialize(
        object.alert,
        specifiedType: const FullType(String),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType(String),
      );
    }
    if (object.briefingRun != null) {
      yield r'briefingRun';
      yield serializers.serialize(
        object.briefingRun,
        specifiedType: const FullType(String),
      );
    }
    if (object.pair != null) {
      yield r'pair';
      yield serializers.serialize(
        object.pair,
        specifiedType: const FullType(String),
      );
    }
    if (object.share != null) {
      yield r'share';
      yield serializers.serialize(
        object.share,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientLinks object, {
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
    required ClientLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alert':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alert = valueDes;
          break;
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.record = valueDes;
          break;
        case r'briefingRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefingRun = valueDes;
          break;
        case r'pair':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pair = valueDes;
          break;
        case r'share':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.share = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClientLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientLinksBuilder();
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
