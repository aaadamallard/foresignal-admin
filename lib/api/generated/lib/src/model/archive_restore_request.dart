//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_restore_request.g.dart';

/// Restore an archive back into the hot store
///
/// Properties:
/// * [confirm] - Must be true to restore
@BuiltValue()
abstract class ArchiveRestoreRequest
    implements Built<ArchiveRestoreRequest, ArchiveRestoreRequestBuilder> {
  /// Must be true to restore
  @BuiltValueField(wireName: r'confirm')
  bool get confirm;

  ArchiveRestoreRequest._();

  factory ArchiveRestoreRequest([
    void updates(ArchiveRestoreRequestBuilder b),
  ]) = _$ArchiveRestoreRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveRestoreRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveRestoreRequest> get serializer =>
      _$ArchiveRestoreRequestSerializer();
}

class _$ArchiveRestoreRequestSerializer
    implements PrimitiveSerializer<ArchiveRestoreRequest> {
  @override
  final Iterable<Type> types = const [
    ArchiveRestoreRequest,
    _$ArchiveRestoreRequest,
  ];

  @override
  final String wireName = r'ArchiveRestoreRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveRestoreRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confirm';
    yield serializers.serialize(
      object.confirm,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveRestoreRequest object, {
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
    required ArchiveRestoreRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.confirm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveRestoreRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveRestoreRequestBuilder();
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
