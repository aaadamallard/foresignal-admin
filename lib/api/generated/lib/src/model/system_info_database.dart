//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_database.g.dart';

/// SystemInfoDatabase
///
/// Properties:
/// * [status]
/// * [sizeBytes]
/// * [postgisVersion]
@BuiltValue()
abstract class SystemInfoDatabase
    implements Built<SystemInfoDatabase, SystemInfoDatabaseBuilder> {
  @BuiltValueField(wireName: r'status')
  SystemInfoDatabaseStatusEnum? get status;
  // enum statusEnum {  up,  down,  };

  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'postgisVersion')
  String? get postgisVersion;

  SystemInfoDatabase._();

  factory SystemInfoDatabase([void updates(SystemInfoDatabaseBuilder b)]) =
      _$SystemInfoDatabase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoDatabaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoDatabase> get serializer =>
      _$SystemInfoDatabaseSerializer();
}

class _$SystemInfoDatabaseSerializer
    implements PrimitiveSerializer<SystemInfoDatabase> {
  @override
  final Iterable<Type> types = const [SystemInfoDatabase, _$SystemInfoDatabase];

  @override
  final String wireName = r'SystemInfoDatabase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoDatabase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemInfoDatabaseStatusEnum),
      );
    }
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.postgisVersion != null) {
      yield r'postgisVersion';
      yield serializers.serialize(
        object.postgisVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoDatabase object, {
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
    required SystemInfoDatabaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoDatabaseStatusEnum,
                    ),
                  )
                  as SystemInfoDatabaseStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'postgisVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.postgisVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoDatabase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoDatabaseBuilder();
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

class SystemInfoDatabaseStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'up')
  static const SystemInfoDatabaseStatusEnum up =
      _$systemInfoDatabaseStatusEnum_up;
  @BuiltValueEnumConst(wireName: r'down')
  static const SystemInfoDatabaseStatusEnum down =
      _$systemInfoDatabaseStatusEnum_down;

  static Serializer<SystemInfoDatabaseStatusEnum> get serializer =>
      _$systemInfoDatabaseStatusEnumSerializer;

  const SystemInfoDatabaseStatusEnum._(String name) : super(name);

  static BuiltSet<SystemInfoDatabaseStatusEnum> get values =>
      _$systemInfoDatabaseStatusEnumValues;
  static SystemInfoDatabaseStatusEnum valueOf(String name) =>
      _$systemInfoDatabaseStatusEnumValueOf(name);
}
