//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emwin_product_payload.g.dart';

/// Kind `emwin-product`: an EMWIN text product received via GOES HRIT (untrusted text, length-capped)
///
/// Properties:
/// * [heading] - WMO heading TTAAii CCCC DDHHMM
/// * [awipsId]
/// * [office]
/// * [issuedAt]
/// * [text]
@BuiltValue()
abstract class EmwinProductPayload
    implements Built<EmwinProductPayload, EmwinProductPayloadBuilder> {
  /// WMO heading TTAAii CCCC DDHHMM
  @BuiltValueField(wireName: r'heading')
  String get heading;

  @BuiltValueField(wireName: r'awipsId')
  String get awipsId;

  @BuiltValueField(wireName: r'office')
  String? get office;

  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @BuiltValueField(wireName: r'text')
  String get text;

  EmwinProductPayload._();

  factory EmwinProductPayload([void updates(EmwinProductPayloadBuilder b)]) =
      _$EmwinProductPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmwinProductPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmwinProductPayload> get serializer =>
      _$EmwinProductPayloadSerializer();
}

class _$EmwinProductPayloadSerializer
    implements PrimitiveSerializer<EmwinProductPayload> {
  @override
  final Iterable<Type> types = const [
    EmwinProductPayload,
    _$EmwinProductPayload,
  ];

  @override
  final String wireName = r'EmwinProductPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmwinProductPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'heading';
    yield serializers.serialize(
      object.heading,
      specifiedType: const FullType(String),
    );
    yield r'awipsId';
    yield serializers.serialize(
      object.awipsId,
      specifiedType: const FullType(String),
    );
    if (object.office != null) {
      yield r'office';
      yield serializers.serialize(
        object.office,
        specifiedType: const FullType(String),
      );
    }
    yield r'issuedAt';
    yield serializers.serialize(
      object.issuedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmwinProductPayload object, {
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
    required EmwinProductPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'heading':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.heading = valueDes;
          break;
        case r'awipsId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.awipsId = valueDes;
          break;
        case r'office':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.office = valueDes;
          break;
        case r'issuedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.issuedAt = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmwinProductPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmwinProductPayloadBuilder();
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
