//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'security_settings.g.dart';

/// SecuritySettings
///
/// Properties:
/// * [openReads] - When false, data GETs require a read token
/// * [exposeObserver] - Return record observers to read-scope and anonymous callers with include=observer
/// * [anonymous] - Anonymous restriction profile applied to tokenless reads while openReads is true (035). Default: no source/kind/area limits, private excluded, data GETs only (never inbox, places, watchlists or alwaysAuthenticated operations), 120 requests/min
/// * [metricsOpen] - When false, /actuator/prometheus requires an admin token (035)
/// * [exposeMlat] - When false (the default), records whose `posSource` is `mlat` are stripped from anonymous openReads responses of the records API (list, get, versions, history, asOf); a record whose `posSource` was projected away by `fields=` is stripped too when its source reports `posSource`. MLAT positions are never sent on sinks, federation, share links or feeds regardless (069)
@BuiltValue()
abstract class SecuritySettings
    implements Built<SecuritySettings, SecuritySettingsBuilder> {
  /// When false, data GETs require a read token
  @BuiltValueField(wireName: r'openReads')
  bool get openReads;

  /// Return record observers to read-scope and anonymous callers with include=observer
  @BuiltValueField(wireName: r'exposeObserver')
  bool? get exposeObserver;

  /// Anonymous restriction profile applied to tokenless reads while openReads is true (035). Default: no source/kind/area limits, private excluded, data GETs only (never inbox, places, watchlists or alwaysAuthenticated operations), 120 requests/min
  @BuiltValueField(wireName: r'anonymous')
  ReadRestriction? get anonymous;

  /// When false, /actuator/prometheus requires an admin token (035)
  @BuiltValueField(wireName: r'metricsOpen')
  bool? get metricsOpen;

  /// When false (the default), records whose `posSource` is `mlat` are stripped from anonymous openReads responses of the records API (list, get, versions, history, asOf); a record whose `posSource` was projected away by `fields=` is stripped too when its source reports `posSource`. MLAT positions are never sent on sinks, federation, share links or feeds regardless (069)
  @BuiltValueField(wireName: r'exposeMlat')
  bool? get exposeMlat;

  SecuritySettings._();

  factory SecuritySettings([void updates(SecuritySettingsBuilder b)]) =
      _$SecuritySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SecuritySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SecuritySettings> get serializer =>
      _$SecuritySettingsSerializer();
}

class _$SecuritySettingsSerializer
    implements PrimitiveSerializer<SecuritySettings> {
  @override
  final Iterable<Type> types = const [SecuritySettings, _$SecuritySettings];

  @override
  final String wireName = r'SecuritySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SecuritySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'openReads';
    yield serializers.serialize(
      object.openReads,
      specifiedType: const FullType(bool),
    );
    if (object.exposeObserver != null) {
      yield r'exposeObserver';
      yield serializers.serialize(
        object.exposeObserver,
        specifiedType: const FullType(bool),
      );
    }
    if (object.anonymous != null) {
      yield r'anonymous';
      yield serializers.serialize(
        object.anonymous,
        specifiedType: const FullType(ReadRestriction),
      );
    }
    if (object.metricsOpen != null) {
      yield r'metricsOpen';
      yield serializers.serialize(
        object.metricsOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exposeMlat != null) {
      yield r'exposeMlat';
      yield serializers.serialize(
        object.exposeMlat,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SecuritySettings object, {
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
    required SecuritySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'openReads':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.openReads = valueDes;
          break;
        case r'exposeObserver':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exposeObserver = valueDes;
          break;
        case r'anonymous':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReadRestriction),
                  )
                  as ReadRestriction?;
          if (valueDes == null) continue;
          result.anonymous.replace(valueDes);
          break;
        case r'metricsOpen':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.metricsOpen = valueDes;
          break;
        case r'exposeMlat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exposeMlat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SecuritySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecuritySettingsBuilder();
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
