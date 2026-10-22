//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'count_window.g.dart';

/// Count rule window: fires when N distinct entities are seen in the window
///
/// Properties:
/// * [window] - Window length, 1m to 7d. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [step] - Evaluation period; default min(window/4, 5m), minimum 30s. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [distinctBy] - `entity` (098 entity, else descriptor entityKeys, else source+externalId), `externalId`, or a payload path. Versions are never counted.
/// * [groupBy] - null | `source` | `place` | `h3:<res 3..8>` | `admin1` | `country` | a payload path
/// * [maxGroups]
/// * [op]
/// * [threshold]
@BuiltValue()
abstract class CountWindow implements Built<CountWindow, CountWindowBuilder> {
  /// Window length, 1m to 7d. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'window')
  String get window;

  /// Evaluation period; default min(window/4, 5m), minimum 30s. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'step')
  String? get step;

  /// `entity` (098 entity, else descriptor entityKeys, else source+externalId), `externalId`, or a payload path. Versions are never counted.
  @BuiltValueField(wireName: r'distinctBy')
  String? get distinctBy;

  /// null | `source` | `place` | `h3:<res 3..8>` | `admin1` | `country` | a payload path
  @BuiltValueField(wireName: r'groupBy')
  String? get groupBy;

  @BuiltValueField(wireName: r'maxGroups')
  int? get maxGroups;

  @BuiltValueField(wireName: r'op')
  String get op;

  @BuiltValueField(wireName: r'threshold')
  int get threshold;

  CountWindow._();

  factory CountWindow([void updates(CountWindowBuilder b)]) = _$CountWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CountWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CountWindow> get serializer => _$CountWindowSerializer();
}

class _$CountWindowSerializer implements PrimitiveSerializer<CountWindow> {
  @override
  final Iterable<Type> types = const [CountWindow, _$CountWindow];

  @override
  final String wireName = r'CountWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CountWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(String),
    );
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(String),
      );
    }
    if (object.distinctBy != null) {
      yield r'distinctBy';
      yield serializers.serialize(
        object.distinctBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupBy != null) {
      yield r'groupBy';
      yield serializers.serialize(
        object.groupBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxGroups != null) {
      yield r'maxGroups';
      yield serializers.serialize(
        object.maxGroups,
        specifiedType: const FullType(int),
      );
    }
    yield r'op';
    yield serializers.serialize(
      object.op,
      specifiedType: const FullType(String),
    );
    yield r'threshold';
    yield serializers.serialize(
      object.threshold,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CountWindow object, {
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
    required CountWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.window = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'distinctBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.distinctBy = valueDes;
          break;
        case r'groupBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.groupBy = valueDes;
          break;
        case r'maxGroups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxGroups = valueDes;
          break;
        case r'op':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.op = valueDes;
          break;
        case r'threshold':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.threshold = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CountWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CountWindowBuilder();
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
