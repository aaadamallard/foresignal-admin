//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_input_site.g.dart';

/// The hosted edition site (NP-005)
///
/// Properties:
/// * [enabled] - Serve the latest successful run at `getEditionSite`
/// * [shareable] - Keep a read-only, revocable share link to the site
@BuiltValue()
abstract class BriefingInputSite
    implements Built<BriefingInputSite, BriefingInputSiteBuilder> {
  /// Serve the latest successful run at `getEditionSite`
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Keep a read-only, revocable share link to the site
  @BuiltValueField(wireName: r'shareable')
  bool? get shareable;

  BriefingInputSite._();

  factory BriefingInputSite([void updates(BriefingInputSiteBuilder b)]) =
      _$BriefingInputSite;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingInputSiteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingInputSite> get serializer =>
      _$BriefingInputSiteSerializer();
}

class _$BriefingInputSiteSerializer
    implements PrimitiveSerializer<BriefingInputSite> {
  @override
  final Iterable<Type> types = const [BriefingInputSite, _$BriefingInputSite];

  @override
  final String wireName = r'BriefingInputSite';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingInputSite object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.shareable != null) {
      yield r'shareable';
      yield serializers.serialize(
        object.shareable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingInputSite object, {
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
    required BriefingInputSiteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'shareable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.shareable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingInputSite deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingInputSiteBuilder();
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
