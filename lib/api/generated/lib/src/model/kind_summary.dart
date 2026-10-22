//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/kind_display.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kind_summary.g.dart';

/// KindSummary
///
/// Properties:
/// * [kind]
/// * [currentCount]
/// * [sources]
/// * [display]
@BuiltValue()
abstract class KindSummary implements Built<KindSummary, KindSummaryBuilder> {
  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'currentCount')
  int get currentCount;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String> get sources;

  @BuiltValueField(wireName: r'display')
  KindDisplay? get display;

  KindSummary._();

  factory KindSummary([void updates(KindSummaryBuilder b)]) = _$KindSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KindSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KindSummary> get serializer => _$KindSummarySerializer();
}

class _$KindSummarySerializer implements PrimitiveSerializer<KindSummary> {
  @override
  final Iterable<Type> types = const [KindSummary, _$KindSummary];

  @override
  final String wireName = r'KindSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KindSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'currentCount';
    yield serializers.serialize(
      object.currentCount,
      specifiedType: const FullType(int),
    );
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.display != null) {
      yield r'display';
      yield serializers.serialize(
        object.display,
        specifiedType: const FullType.nullable(KindDisplay),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KindSummary object, {
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
    required KindSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'currentCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.currentCount = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sources.replace(valueDes);
          break;
        case r'display':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(KindDisplay),
                  )
                  as KindDisplay?;
          if (valueDes == null) continue;
          result.display.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KindSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KindSummaryBuilder();
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
