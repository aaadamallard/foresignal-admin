//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_restore_request.g.dart';

/// Restore from a backup (destructive; replaces current data)
///
/// Properties:
/// * [confirm] - Must be true to restore
@BuiltValue()
abstract class BackupRestoreRequest
    implements Built<BackupRestoreRequest, BackupRestoreRequestBuilder> {
  /// Must be true to restore
  @BuiltValueField(wireName: r'confirm')
  bool get confirm;

  BackupRestoreRequest._();

  factory BackupRestoreRequest([void updates(BackupRestoreRequestBuilder b)]) =
      _$BackupRestoreRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupRestoreRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupRestoreRequest> get serializer =>
      _$BackupRestoreRequestSerializer();
}

class _$BackupRestoreRequestSerializer
    implements PrimitiveSerializer<BackupRestoreRequest> {
  @override
  final Iterable<Type> types = const [
    BackupRestoreRequest,
    _$BackupRestoreRequest,
  ];

  @override
  final String wireName = r'BackupRestoreRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupRestoreRequest object, {
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
    BackupRestoreRequest object, {
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
    required BackupRestoreRequestBuilder result,
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
  BackupRestoreRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupRestoreRequestBuilder();
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
