//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribution.g.dart';

/// Structured attribution clients must render for a product or derived output (Weather-Imagery-Design §6.10)
///
/// Properties:
/// * [text] - Plain-text attribution line
/// * [html] - HTML form of the attribution
/// * [url]
/// * [licence] - Licence identifier
/// * [licenceUrl]
/// * [requiredDisplay] - True when the licence requires the attribution to be visible on the map or image
/// * [sourceId]
/// * [termsUrl]
/// * [count] - Records in the response from this source under this licence
@BuiltValue()
abstract class Attribution implements Built<Attribution, AttributionBuilder> {
  /// Plain-text attribution line
  @BuiltValueField(wireName: r'text')
  String get text;

  /// HTML form of the attribution
  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Licence identifier
  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'licenceUrl')
  String? get licenceUrl;

  /// True when the licence requires the attribution to be visible on the map or image
  @BuiltValueField(wireName: r'requiredDisplay')
  bool get requiredDisplay;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'termsUrl')
  String? get termsUrl;

  /// Records in the response from this source under this licence
  @BuiltValueField(wireName: r'count')
  int? get count;

  Attribution._();

  factory Attribution([void updates(AttributionBuilder b)]) = _$Attribution;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Attribution> get serializer => _$AttributionSerializer();
}

class _$AttributionSerializer implements PrimitiveSerializer<Attribution> {
  @override
  final Iterable<Type> types = const [Attribution, _$Attribution];

  @override
  final String wireName = r'Attribution';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Attribution object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    if (object.licenceUrl != null) {
      yield r'licenceUrl';
      yield serializers.serialize(
        object.licenceUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'requiredDisplay';
    yield serializers.serialize(
      object.requiredDisplay,
      specifiedType: const FullType(bool),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.termsUrl != null) {
      yield r'termsUrl';
      yield serializers.serialize(
        object.termsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Attribution object, {
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
    required AttributionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.html = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licence = valueDes;
          break;
        case r'licenceUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenceUrl = valueDes;
          break;
        case r'requiredDisplay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiredDisplay = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'termsUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.termsUrl = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Attribution deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributionBuilder();
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
