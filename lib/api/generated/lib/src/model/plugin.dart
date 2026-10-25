//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'plugin.g.dart';

/// An out-of-tree WASM parser plugin found under `${FORESIGNAL_DATA_DIR}/plugins/{name}/`
///
/// Properties:
/// * [name]
/// * [version]
/// * [abi] - Always 1, the only ABI this host runs; a manifest declaring another is in state `error`
/// * [kind] - Always `parser`, the only kind of ABI v1; a manifest declaring another is in state `error`
/// * [sha256] - Declared in plugin.json; the file's own hash when the manifest is invalid (empty when neither is known)
/// * [actualSha256] - The SHA-256 of plugin.wasm as read now; absent when the file is missing
/// * [hashMatches] - True when the declared and actual hashes are equal
/// * [enabled] - True when the admin enabled this plugin (an approval bound to a SHA-256 is stored)
/// * [state] - `error`: the manifest or module is invalid; `hash-mismatch`: the file does not hash to the declared SHA-256, or to the approved one; `enabled`: enabled, plugins on, hashes match and the module loads; `disabled`: otherwise
/// * [error] - Why the plugin will not load or run, or null
/// * [sourceIds] - `wasm-feed` sources using this plugin
/// * [loadedAt] - When its current module was last loaded to run (since this process started), or null
@BuiltValue()
abstract class Plugin implements Built<Plugin, PluginBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'version')
  String get version;

  /// Always 1, the only ABI this host runs; a manifest declaring another is in state `error`
  @BuiltValueField(wireName: r'abi')
  PluginAbiEnum get abi;
  // enum abiEnum {  1,  };

  /// Always `parser`, the only kind of ABI v1; a manifest declaring another is in state `error`
  @BuiltValueField(wireName: r'kind')
  PluginKindEnum get kind;
  // enum kindEnum {  parser,  };

  /// Declared in plugin.json; the file's own hash when the manifest is invalid (empty when neither is known)
  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  /// The SHA-256 of plugin.wasm as read now; absent when the file is missing
  @BuiltValueField(wireName: r'actualSha256')
  String? get actualSha256;

  /// True when the declared and actual hashes are equal
  @BuiltValueField(wireName: r'hashMatches')
  bool get hashMatches;

  /// True when the admin enabled this plugin (an approval bound to a SHA-256 is stored)
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// `error`: the manifest or module is invalid; `hash-mismatch`: the file does not hash to the declared SHA-256, or to the approved one; `enabled`: enabled, plugins on, hashes match and the module loads; `disabled`: otherwise
  @BuiltValueField(wireName: r'state')
  PluginStateEnum get state;
  // enum stateEnum {  disabled,  enabled,  hash-mismatch,  error,  };

  /// Why the plugin will not load or run, or null
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// `wasm-feed` sources using this plugin
  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  /// When its current module was last loaded to run (since this process started), or null
  @BuiltValueField(wireName: r'loadedAt')
  DateTime? get loadedAt;

  Plugin._();

  factory Plugin([void updates(PluginBuilder b)]) = _$Plugin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PluginBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Plugin> get serializer => _$PluginSerializer();
}

class _$PluginSerializer implements PrimitiveSerializer<Plugin> {
  @override
  final Iterable<Type> types = const [Plugin, _$Plugin];

  @override
  final String wireName = r'Plugin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Plugin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'abi';
    yield serializers.serialize(
      object.abi,
      specifiedType: const FullType(PluginAbiEnum),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PluginKindEnum),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.actualSha256 != null) {
      yield r'actualSha256';
      yield serializers.serialize(
        object.actualSha256,
        specifiedType: const FullType(String),
      );
    }
    yield r'hashMatches';
    yield serializers.serialize(
      object.hashMatches,
      specifiedType: const FullType(bool),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(PluginStateEnum),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.loadedAt != null) {
      yield r'loadedAt';
      yield serializers.serialize(
        object.loadedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Plugin object, {
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
    required PluginBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'abi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PluginAbiEnum),
                  )
                  as PluginAbiEnum;
          result.abi = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PluginKindEnum),
                  )
                  as PluginKindEnum;
          result.kind = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'actualSha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.actualSha256 = valueDes;
          break;
        case r'hashMatches':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.hashMatches = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PluginStateEnum),
                  )
                  as PluginStateEnum;
          result.state = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'sourceIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        case r'loadedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.loadedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Plugin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PluginBuilder();
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

/// Always 1, the only ABI this host runs; a manifest declaring another is in state `error`
class PluginAbiEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const PluginAbiEnum number1 = _$pluginAbiEnum_number1;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const PluginAbiEnum unknownDefaultOpenApi =
      _$pluginAbiEnum_unknownDefaultOpenApi;

  static Serializer<PluginAbiEnum> get serializer => _$pluginAbiEnumSerializer;

  const PluginAbiEnum._(String name) : super(name);

  static BuiltSet<PluginAbiEnum> get values => _$pluginAbiEnumValues;
  static PluginAbiEnum valueOf(String name) => _$pluginAbiEnumValueOf(name);
}

/// Always `parser`, the only kind of ABI v1; a manifest declaring another is in state `error`
class PluginKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'parser')
  static const PluginKindEnum parser = _$pluginKindEnum_parser;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PluginKindEnum unknownDefaultOpenApi =
      _$pluginKindEnum_unknownDefaultOpenApi;

  static Serializer<PluginKindEnum> get serializer =>
      _$pluginKindEnumSerializer;

  const PluginKindEnum._(String name) : super(name);

  static BuiltSet<PluginKindEnum> get values => _$pluginKindEnumValues;
  static PluginKindEnum valueOf(String name) => _$pluginKindEnumValueOf(name);
}

/// `error`: the manifest or module is invalid; `hash-mismatch`: the file does not hash to the declared SHA-256, or to the approved one; `enabled`: enabled, plugins on, hashes match and the module loads; `disabled`: otherwise
class PluginStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'disabled')
  static const PluginStateEnum disabled = _$pluginStateEnum_disabled;
  @BuiltValueEnumConst(wireName: r'enabled')
  static const PluginStateEnum enabled = _$pluginStateEnum_enabled;
  @BuiltValueEnumConst(wireName: r'hash-mismatch')
  static const PluginStateEnum hashMismatch = _$pluginStateEnum_hashMismatch;
  @BuiltValueEnumConst(wireName: r'error')
  static const PluginStateEnum error = _$pluginStateEnum_error;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PluginStateEnum unknownDefaultOpenApi =
      _$pluginStateEnum_unknownDefaultOpenApi;

  static Serializer<PluginStateEnum> get serializer =>
      _$pluginStateEnumSerializer;

  const PluginStateEnum._(String name) : super(name);

  static BuiltSet<PluginStateEnum> get values => _$pluginStateEnumValues;
  static PluginStateEnum valueOf(String name) => _$pluginStateEnumValueOf(name);
}
