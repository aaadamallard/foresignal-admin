//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_manifest.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_validation_request.g.dart';

/// Dry-run validation input
///
/// Properties:
/// * [manifest]
/// * [sourceId]
/// * [items]
@BuiltValue()
abstract class EdpValidationRequest
    implements Built<EdpValidationRequest, EdpValidationRequestBuilder> {
  @BuiltValueField(wireName: r'manifest')
  EdpManifest? get manifest;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'items')
  BuiltList<BuiltMap<String, JsonObject?>>? get items;

  EdpValidationRequest._();

  factory EdpValidationRequest([void updates(EdpValidationRequestBuilder b)]) =
      _$EdpValidationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpValidationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpValidationRequest> get serializer =>
      _$EdpValidationRequestSerializer();
}

class _$EdpValidationRequestSerializer
    implements PrimitiveSerializer<EdpValidationRequest> {
  @override
  final Iterable<Type> types = const [
    EdpValidationRequest,
    _$EdpValidationRequest
  ];

  @override
  final String wireName = r'EdpValidationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpValidationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.manifest != null) {
      yield r'manifest';
      yield serializers.serialize(
        object.manifest,
        specifiedType: const FullType.nullable(EdpManifest),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpValidationRequest object, {
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
    required EdpValidationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'manifest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpManifest),
          ) as EdpManifest?;
          if (valueDes == null) continue;
          result.manifest.replace(valueDes);
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpValidationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpValidationRequestBuilder();
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
