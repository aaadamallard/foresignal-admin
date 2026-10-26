//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_files_inner.g.dart';

/// BackupFilesInner
///
/// Properties:
/// * [name]
/// * [location] - Absolute path or `s3://` URL
/// * [bytes]
/// * [sha256]
@BuiltValue()
abstract class BackupFilesInner
    implements Built<BackupFilesInner, BackupFilesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Absolute path or `s3://` URL
  @BuiltValueField(wireName: r'location')
  String get location;

  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  BackupFilesInner._();

  factory BackupFilesInner([void updates(BackupFilesInnerBuilder b)]) =
      _$BackupFilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupFilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupFilesInner> get serializer =>
      _$BackupFilesInnerSerializer();
}

class _$BackupFilesInnerSerializer
    implements PrimitiveSerializer<BackupFilesInner> {
  @override
  final Iterable<Type> types = const [BackupFilesInner, _$BackupFilesInner];

  @override
  final String wireName = r'BackupFilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupFilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupFilesInner object, {
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
    required BackupFilesInnerBuilder result,
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
        case r'location':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.location = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.bytes = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupFilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupFilesInnerBuilder();
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
