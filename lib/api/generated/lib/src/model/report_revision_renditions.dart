//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_revision_renditions.g.dart';

/// Rendition links
///
/// Properties:
/// * [markdown]
/// * [html]
/// * [json]
@BuiltValue()
abstract class ReportRevisionRenditions
    implements
        Built<ReportRevisionRenditions, ReportRevisionRenditionsBuilder> {
  @BuiltValueField(wireName: r'markdown')
  String? get markdown;

  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'json')
  String? get json;

  ReportRevisionRenditions._();

  factory ReportRevisionRenditions(
          [void updates(ReportRevisionRenditionsBuilder b)]) =
      _$ReportRevisionRenditions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportRevisionRenditionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportRevisionRenditions> get serializer =>
      _$ReportRevisionRenditionsSerializer();
}

class _$ReportRevisionRenditionsSerializer
    implements PrimitiveSerializer<ReportRevisionRenditions> {
  @override
  final Iterable<Type> types = const [
    ReportRevisionRenditions,
    _$ReportRevisionRenditions
  ];

  @override
  final String wireName = r'ReportRevisionRenditions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportRevisionRenditions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.markdown != null) {
      yield r'markdown';
      yield serializers.serialize(
        object.markdown,
        specifiedType: const FullType(String),
      );
    }
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
    if (object.json != null) {
      yield r'json';
      yield serializers.serialize(
        object.json,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportRevisionRenditions object, {
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
    required ReportRevisionRenditionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'markdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.markdown = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.html = valueDes;
          break;
        case r'json':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.json = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportRevisionRenditions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportRevisionRenditionsBuilder();
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
