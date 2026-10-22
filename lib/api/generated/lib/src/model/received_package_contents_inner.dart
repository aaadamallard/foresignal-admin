//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'received_package_contents_inner.g.dart';

/// Stored content file
///
/// Properties:
/// * [path]
/// * [sha256]
/// * [size]
/// * [mediaId]
@BuiltValue()
abstract class ReceivedPackageContentsInner
    implements
        Built<ReceivedPackageContentsInner,
            ReceivedPackageContentsInnerBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'mediaId')
  String? get mediaId;

  ReceivedPackageContentsInner._();

  factory ReceivedPackageContentsInner(
          [void updates(ReceivedPackageContentsInnerBuilder b)]) =
      _$ReceivedPackageContentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceivedPackageContentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceivedPackageContentsInner> get serializer =>
      _$ReceivedPackageContentsInnerSerializer();
}

class _$ReceivedPackageContentsInnerSerializer
    implements PrimitiveSerializer<ReceivedPackageContentsInner> {
  @override
  final Iterable<Type> types = const [
    ReceivedPackageContentsInner,
    _$ReceivedPackageContentsInner
  ];

  @override
  final String wireName = r'ReceivedPackageContentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceivedPackageContentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.mediaId != null) {
      yield r'mediaId';
      yield serializers.serialize(
        object.mediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageContentsInner object, {
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
    required ReceivedPackageContentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sha256 = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'mediaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mediaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReceivedPackageContentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceivedPackageContentsInnerBuilder();
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
