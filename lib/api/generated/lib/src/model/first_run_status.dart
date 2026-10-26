//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'first_run_status.g.dart';

/// Whether the instance still needs first-run setup (C4/190)
///
/// Properties:
/// * [firstRun] - True when no users exist yet
/// * [hasUsers]
/// * [smtpConfigured]
/// * [sourcesEnabled] - How many sources are in the collection set
/// * [apiVersion]
@BuiltValue()
abstract class FirstRunStatus
    implements Built<FirstRunStatus, FirstRunStatusBuilder> {
  /// True when no users exist yet
  @BuiltValueField(wireName: r'firstRun')
  bool get firstRun;

  @BuiltValueField(wireName: r'hasUsers')
  bool get hasUsers;

  @BuiltValueField(wireName: r'smtpConfigured')
  bool? get smtpConfigured;

  /// How many sources are in the collection set
  @BuiltValueField(wireName: r'sourcesEnabled')
  int? get sourcesEnabled;

  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  FirstRunStatus._();

  factory FirstRunStatus([void updates(FirstRunStatusBuilder b)]) =
      _$FirstRunStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FirstRunStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FirstRunStatus> get serializer =>
      _$FirstRunStatusSerializer();
}

class _$FirstRunStatusSerializer
    implements PrimitiveSerializer<FirstRunStatus> {
  @override
  final Iterable<Type> types = const [FirstRunStatus, _$FirstRunStatus];

  @override
  final String wireName = r'FirstRunStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FirstRunStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'firstRun';
    yield serializers.serialize(
      object.firstRun,
      specifiedType: const FullType(bool),
    );
    yield r'hasUsers';
    yield serializers.serialize(
      object.hasUsers,
      specifiedType: const FullType(bool),
    );
    if (object.smtpConfigured != null) {
      yield r'smtpConfigured';
      yield serializers.serialize(
        object.smtpConfigured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sourcesEnabled != null) {
      yield r'sourcesEnabled';
      yield serializers.serialize(
        object.sourcesEnabled,
        specifiedType: const FullType(int),
      );
    }
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FirstRunStatus object, {
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
    required FirstRunStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.firstRun = valueDes;
          break;
        case r'hasUsers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.hasUsers = valueDes;
          break;
        case r'smtpConfigured':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.smtpConfigured = valueDes;
          break;
        case r'sourcesEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sourcesEnabled = valueDes;
          break;
        case r'apiVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.apiVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FirstRunStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FirstRunStatusBuilder();
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
