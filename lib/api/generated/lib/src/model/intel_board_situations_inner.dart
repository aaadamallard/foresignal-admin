//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_situations_inner.g.dart';

/// Top situation
///
/// Properties:
/// * [id] - ULID identifier
/// * [title]
/// * [status]
/// * [severity]
/// * [lastActivityAt]
@BuiltValue()
abstract class IntelBoardSituationsInner
    implements
        Built<IntelBoardSituationsInner, IntelBoardSituationsInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'lastActivityAt')
  DateTime? get lastActivityAt;

  IntelBoardSituationsInner._();

  factory IntelBoardSituationsInner([
    void updates(IntelBoardSituationsInnerBuilder b),
  ]) = _$IntelBoardSituationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardSituationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardSituationsInner> get serializer =>
      _$IntelBoardSituationsInnerSerializer();
}

class _$IntelBoardSituationsInnerSerializer
    implements PrimitiveSerializer<IntelBoardSituationsInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardSituationsInner,
    _$IntelBoardSituationsInner,
  ];

  @override
  final String wireName = r'IntelBoardSituationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardSituationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    if (object.lastActivityAt != null) {
      yield r'lastActivityAt';
      yield serializers.serialize(
        object.lastActivityAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardSituationsInner object, {
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
    required IntelBoardSituationsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
          result.severity = valueDes;
          break;
        case r'lastActivityAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastActivityAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardSituationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardSituationsInnerBuilder();
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
