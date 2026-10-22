//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outbound_settings.g.dart';

/// Admin overrides of the outbound URL policy (035); deny wins
///
/// Properties:
/// * [allowHosts] - Hosts allowed even when they resolve to addresses the profile would refuse (never the always-blocked set)
/// * [allowCidrs] - Address ranges allowed in every profile (never the always-blocked set)
/// * [denyHosts] - Hosts refused in every profile
/// * [denyCidrs] - Address ranges refused in every profile
@BuiltValue()
abstract class OutboundSettings
    implements Built<OutboundSettings, OutboundSettingsBuilder> {
  /// Hosts allowed even when they resolve to addresses the profile would refuse (never the always-blocked set)
  @BuiltValueField(wireName: r'allowHosts')
  BuiltList<String>? get allowHosts;

  /// Address ranges allowed in every profile (never the always-blocked set)
  @BuiltValueField(wireName: r'allowCidrs')
  BuiltList<String>? get allowCidrs;

  /// Hosts refused in every profile
  @BuiltValueField(wireName: r'denyHosts')
  BuiltList<String>? get denyHosts;

  /// Address ranges refused in every profile
  @BuiltValueField(wireName: r'denyCidrs')
  BuiltList<String>? get denyCidrs;

  OutboundSettings._();

  factory OutboundSettings([void updates(OutboundSettingsBuilder b)]) =
      _$OutboundSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutboundSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutboundSettings> get serializer =>
      _$OutboundSettingsSerializer();
}

class _$OutboundSettingsSerializer
    implements PrimitiveSerializer<OutboundSettings> {
  @override
  final Iterable<Type> types = const [OutboundSettings, _$OutboundSettings];

  @override
  final String wireName = r'OutboundSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutboundSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowHosts != null) {
      yield r'allowHosts';
      yield serializers.serialize(
        object.allowHosts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.allowCidrs != null) {
      yield r'allowCidrs';
      yield serializers.serialize(
        object.allowCidrs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.denyHosts != null) {
      yield r'denyHosts';
      yield serializers.serialize(
        object.denyHosts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.denyCidrs != null) {
      yield r'denyCidrs';
      yield serializers.serialize(
        object.denyCidrs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutboundSettings object, {
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
    required OutboundSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowHosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowHosts.replace(valueDes);
          break;
        case r'allowCidrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowCidrs.replace(valueDes);
          break;
        case r'denyHosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.denyHosts.replace(valueDes);
          break;
        case r'denyCidrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.denyCidrs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutboundSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutboundSettingsBuilder();
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
