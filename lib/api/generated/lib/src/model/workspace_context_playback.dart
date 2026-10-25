//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_context_playback.g.dart';

/// Playback within timeRange
///
/// Properties:
/// * [state]
/// * [rate]
@BuiltValue()
abstract class WorkspaceContextPlayback
    implements
        Built<WorkspaceContextPlayback, WorkspaceContextPlaybackBuilder> {
  @BuiltValueField(wireName: r'state')
  WorkspaceContextPlaybackStateEnum get state;
  // enum stateEnum {  playing,  paused,  };

  @BuiltValueField(wireName: r'rate')
  num? get rate;

  WorkspaceContextPlayback._();

  factory WorkspaceContextPlayback([
    void updates(WorkspaceContextPlaybackBuilder b),
  ]) = _$WorkspaceContextPlayback;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceContextPlaybackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceContextPlayback> get serializer =>
      _$WorkspaceContextPlaybackSerializer();
}

class _$WorkspaceContextPlaybackSerializer
    implements PrimitiveSerializer<WorkspaceContextPlayback> {
  @override
  final Iterable<Type> types = const [
    WorkspaceContextPlayback,
    _$WorkspaceContextPlayback,
  ];

  @override
  final String wireName = r'WorkspaceContextPlayback';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceContextPlayback object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(WorkspaceContextPlaybackStateEnum),
    );
    if (object.rate != null) {
      yield r'rate';
      yield serializers.serialize(
        object.rate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceContextPlayback object, {
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
    required WorkspaceContextPlaybackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      WorkspaceContextPlaybackStateEnum,
                    ),
                  )
                  as WorkspaceContextPlaybackStateEnum;
          result.state = valueDes;
          break;
        case r'rate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspaceContextPlayback deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceContextPlaybackBuilder();
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

class WorkspaceContextPlaybackStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'playing')
  static const WorkspaceContextPlaybackStateEnum playing =
      _$workspaceContextPlaybackStateEnum_playing;
  @BuiltValueEnumConst(wireName: r'paused')
  static const WorkspaceContextPlaybackStateEnum paused =
      _$workspaceContextPlaybackStateEnum_paused;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WorkspaceContextPlaybackStateEnum unknownDefaultOpenApi =
      _$workspaceContextPlaybackStateEnum_unknownDefaultOpenApi;

  static Serializer<WorkspaceContextPlaybackStateEnum> get serializer =>
      _$workspaceContextPlaybackStateEnumSerializer;

  const WorkspaceContextPlaybackStateEnum._(String name) : super(name);

  static BuiltSet<WorkspaceContextPlaybackStateEnum> get values =>
      _$workspaceContextPlaybackStateEnumValues;
  static WorkspaceContextPlaybackStateEnum valueOf(String name) =>
      _$workspaceContextPlaybackStateEnumValueOf(name);
}
