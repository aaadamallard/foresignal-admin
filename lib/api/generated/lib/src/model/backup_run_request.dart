//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_run_request.g.dart';

/// Run a backup now
///
/// Properties:
/// * [type] - Omitted: `full` when `includeConfig` is on, else `database`
/// * [label]
@BuiltValue()
abstract class BackupRunRequest
    implements Built<BackupRunRequest, BackupRunRequestBuilder> {
  /// Omitted: `full` when `includeConfig` is on, else `database`
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'label')
  String? get label;

  BackupRunRequest._();

  factory BackupRunRequest([void updates(BackupRunRequestBuilder b)]) =
      _$BackupRunRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupRunRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupRunRequest> get serializer =>
      _$BackupRunRequestSerializer();
}

class _$BackupRunRequestSerializer
    implements PrimitiveSerializer<BackupRunRequest> {
  @override
  final Iterable<Type> types = const [BackupRunRequest, _$BackupRunRequest];

  @override
  final String wireName = r'BackupRunRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupRunRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupRunRequest object, {
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
    required BackupRunRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupRunRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupRunRequestBuilder();
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
