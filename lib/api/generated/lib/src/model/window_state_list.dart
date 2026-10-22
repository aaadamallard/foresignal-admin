//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/window_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'window_state_list.g.dart';

/// Window state of every group of one rule
///
/// Properties:
/// * [ruleId]
/// * [type]
/// * [groups]
/// * [groupsTruncated]
@BuiltValue()
abstract class WindowStateList
    implements Built<WindowStateList, WindowStateListBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'type')
  WindowStateListTypeEnum get type;
  // enum typeEnum {  count,  absence,  anomaly,  };

  @BuiltValueField(wireName: r'groups')
  BuiltList<WindowState> get groups;

  @BuiltValueField(wireName: r'groupsTruncated')
  bool? get groupsTruncated;

  WindowStateList._();

  factory WindowStateList([void updates(WindowStateListBuilder b)]) =
      _$WindowStateList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WindowStateListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WindowStateList> get serializer =>
      _$WindowStateListSerializer();
}

class _$WindowStateListSerializer
    implements PrimitiveSerializer<WindowStateList> {
  @override
  final Iterable<Type> types = const [WindowStateList, _$WindowStateList];

  @override
  final String wireName = r'WindowStateList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WindowStateList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(WindowStateListTypeEnum),
    );
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(WindowState)]),
    );
    if (object.groupsTruncated != null) {
      yield r'groupsTruncated';
      yield serializers.serialize(
        object.groupsTruncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WindowStateList object, {
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
    required WindowStateListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WindowStateListTypeEnum),
                  )
                  as WindowStateListTypeEnum;
          result.type = valueDes;
          break;
        case r'groups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(WindowState),
                    ]),
                  )
                  as BuiltList<WindowState>;
          result.groups.replace(valueDes);
          break;
        case r'groupsTruncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.groupsTruncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WindowStateList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WindowStateListBuilder();
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

class WindowStateListTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'count')
  static const WindowStateListTypeEnum count = _$windowStateListTypeEnum_count;
  @BuiltValueEnumConst(wireName: r'absence')
  static const WindowStateListTypeEnum absence =
      _$windowStateListTypeEnum_absence;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const WindowStateListTypeEnum anomaly =
      _$windowStateListTypeEnum_anomaly;

  static Serializer<WindowStateListTypeEnum> get serializer =>
      _$windowStateListTypeEnumSerializer;

  const WindowStateListTypeEnum._(String name) : super(name);

  static BuiltSet<WindowStateListTypeEnum> get values =>
      _$windowStateListTypeEnumValues;
  static WindowStateListTypeEnum valueOf(String name) =>
      _$windowStateListTypeEnumValueOf(name);
}
