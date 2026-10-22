//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance_briefing.g.dart';

/// Latest briefing run
///
/// Properties:
/// * [title]
/// * [at]
/// * [url]
@BuiltValue()
abstract class GlanceBriefing
    implements Built<GlanceBriefing, GlanceBriefingBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  @BuiltValueField(wireName: r'url')
  String? get url;

  GlanceBriefing._();

  factory GlanceBriefing([void updates(GlanceBriefingBuilder b)]) =
      _$GlanceBriefing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceBriefingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GlanceBriefing> get serializer =>
      _$GlanceBriefingSerializer();
}

class _$GlanceBriefingSerializer
    implements PrimitiveSerializer<GlanceBriefing> {
  @override
  final Iterable<Type> types = const [GlanceBriefing, _$GlanceBriefing];

  @override
  final String wireName = r'GlanceBriefing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GlanceBriefing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GlanceBriefing object, {
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
    required GlanceBriefingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GlanceBriefing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceBriefingBuilder();
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
