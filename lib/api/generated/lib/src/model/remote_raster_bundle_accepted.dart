//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_raster_bundle_accepted.g.dart';

/// Accepted pass bundle; the inbox loop processes it asynchronously
///
/// Properties:
/// * [uploadId]
/// * [passFolder]
@BuiltValue()
abstract class RemoteRasterBundleAccepted
    implements
        Built<RemoteRasterBundleAccepted, RemoteRasterBundleAcceptedBuilder> {
  @BuiltValueField(wireName: r'uploadId')
  String get uploadId;

  @BuiltValueField(wireName: r'passFolder')
  String get passFolder;

  RemoteRasterBundleAccepted._();

  factory RemoteRasterBundleAccepted(
          [void updates(RemoteRasterBundleAcceptedBuilder b)]) =
      _$RemoteRasterBundleAccepted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoteRasterBundleAcceptedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoteRasterBundleAccepted> get serializer =>
      _$RemoteRasterBundleAcceptedSerializer();
}

class _$RemoteRasterBundleAcceptedSerializer
    implements PrimitiveSerializer<RemoteRasterBundleAccepted> {
  @override
  final Iterable<Type> types = const [
    RemoteRasterBundleAccepted,
    _$RemoteRasterBundleAccepted
  ];

  @override
  final String wireName = r'RemoteRasterBundleAccepted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoteRasterBundleAccepted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uploadId';
    yield serializers.serialize(
      object.uploadId,
      specifiedType: const FullType(String),
    );
    yield r'passFolder';
    yield serializers.serialize(
      object.passFolder,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoteRasterBundleAccepted object, {
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
    required RemoteRasterBundleAcceptedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uploadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uploadId = valueDes;
          break;
        case r'passFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passFolder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoteRasterBundleAccepted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoteRasterBundleAcceptedBuilder();
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
