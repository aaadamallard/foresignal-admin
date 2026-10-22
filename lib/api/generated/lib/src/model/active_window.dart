//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/active_window_windows_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_window.g.dart';

/// Recurring local-time windows in which a rule is active (DST-safe, evaluated on the version's observedAt)
///
/// Properties:
/// * [timezone] - IANA timezone
/// * [windows]
@BuiltValue()
abstract class ActiveWindow
    implements Built<ActiveWindow, ActiveWindowBuilder> {
  /// IANA timezone
  @BuiltValueField(wireName: r'timezone')
  String get timezone;

  @BuiltValueField(wireName: r'windows')
  BuiltList<ActiveWindowWindowsInner> get windows;

  ActiveWindow._();

  factory ActiveWindow([void updates(ActiveWindowBuilder b)]) = _$ActiveWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActiveWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActiveWindow> get serializer => _$ActiveWindowSerializer();
}

class _$ActiveWindowSerializer implements PrimitiveSerializer<ActiveWindow> {
  @override
  final Iterable<Type> types = const [ActiveWindow, _$ActiveWindow];

  @override
  final String wireName = r'ActiveWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActiveWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'timezone';
    yield serializers.serialize(
      object.timezone,
      specifiedType: const FullType(String),
    );
    yield r'windows';
    yield serializers.serialize(
      object.windows,
      specifiedType: const FullType(BuiltList, [
        FullType(ActiveWindowWindowsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActiveWindow object, {
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
    required ActiveWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.timezone = valueDes;
          break;
        case r'windows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ActiveWindowWindowsInner),
                    ]),
                  )
                  as BuiltList<ActiveWindowWindowsInner>;
          result.windows.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActiveWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActiveWindowBuilder();
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
