//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_selector_situation_activated.g.dart';

/// Situations turning active (118), optionally by theme
///
/// Properties:
/// * [theme]
@BuiltValue()
abstract class EventSelectorSituationActivated
    implements
        Built<EventSelectorSituationActivated,
            EventSelectorSituationActivatedBuilder> {
  @BuiltValueField(wireName: r'theme')
  SituationTheme? get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  EventSelectorSituationActivated._();

  factory EventSelectorSituationActivated(
          [void updates(EventSelectorSituationActivatedBuilder b)]) =
      _$EventSelectorSituationActivated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventSelectorSituationActivatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventSelectorSituationActivated> get serializer =>
      _$EventSelectorSituationActivatedSerializer();
}

class _$EventSelectorSituationActivatedSerializer
    implements PrimitiveSerializer<EventSelectorSituationActivated> {
  @override
  final Iterable<Type> types = const [
    EventSelectorSituationActivated,
    _$EventSelectorSituationActivated
  ];

  @override
  final String wireName = r'EventSelectorSituationActivated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventSelectorSituationActivated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(SituationTheme),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventSelectorSituationActivated object, {
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
    required EventSelectorSituationActivatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationTheme),
          ) as SituationTheme?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventSelectorSituationActivated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventSelectorSituationActivatedBuilder();
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
