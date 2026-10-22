//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_device_setup_gpslogger.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ingest_device_setup_overland.dart';
import 'package:foresignal_api/src/model/ingest_device_setup_traccar.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_setup.g.dart';

/// Ready-to-use tracker app settings, based on publicBaseUrl (039)
///
/// Properties:
/// * [owntracks] - OwnTracks .otrc JSON (mode 3 HTTP, url, auth, username, deviceId)
/// * [overland]
/// * [traccar]
/// * [gpslogger]
@BuiltValue()
abstract class IngestDeviceSetup
    implements Built<IngestDeviceSetup, IngestDeviceSetupBuilder> {
  /// OwnTracks .otrc JSON (mode 3 HTTP, url, auth, username, deviceId)
  @BuiltValueField(wireName: r'owntracks')
  BuiltMap<String, JsonObject?>? get owntracks;

  @BuiltValueField(wireName: r'overland')
  IngestDeviceSetupOverland? get overland;

  @BuiltValueField(wireName: r'traccar')
  IngestDeviceSetupTraccar? get traccar;

  @BuiltValueField(wireName: r'gpslogger')
  IngestDeviceSetupGpslogger? get gpslogger;

  IngestDeviceSetup._();

  factory IngestDeviceSetup([void updates(IngestDeviceSetupBuilder b)]) =
      _$IngestDeviceSetup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceSetupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceSetup> get serializer =>
      _$IngestDeviceSetupSerializer();
}

class _$IngestDeviceSetupSerializer
    implements PrimitiveSerializer<IngestDeviceSetup> {
  @override
  final Iterable<Type> types = const [IngestDeviceSetup, _$IngestDeviceSetup];

  @override
  final String wireName = r'IngestDeviceSetup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceSetup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.owntracks != null) {
      yield r'owntracks';
      yield serializers.serialize(
        object.owntracks,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.overland != null) {
      yield r'overland';
      yield serializers.serialize(
        object.overland,
        specifiedType: const FullType(IngestDeviceSetupOverland),
      );
    }
    if (object.traccar != null) {
      yield r'traccar';
      yield serializers.serialize(
        object.traccar,
        specifiedType: const FullType(IngestDeviceSetupTraccar),
      );
    }
    if (object.gpslogger != null) {
      yield r'gpslogger';
      yield serializers.serialize(
        object.gpslogger,
        specifiedType: const FullType(IngestDeviceSetupGpslogger),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceSetup object, {
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
    required IngestDeviceSetupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'owntracks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.owntracks.replace(valueDes);
          break;
        case r'overland':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IngestDeviceSetupOverland,
                    ),
                  )
                  as IngestDeviceSetupOverland?;
          if (valueDes == null) continue;
          result.overland.replace(valueDes);
          break;
        case r'traccar':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IngestDeviceSetupTraccar,
                    ),
                  )
                  as IngestDeviceSetupTraccar?;
          if (valueDes == null) continue;
          result.traccar.replace(valueDes);
          break;
        case r'gpslogger':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IngestDeviceSetupGpslogger,
                    ),
                  )
                  as IngestDeviceSetupGpslogger?;
          if (valueDes == null) continue;
          result.gpslogger.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceSetup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceSetupBuilder();
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
