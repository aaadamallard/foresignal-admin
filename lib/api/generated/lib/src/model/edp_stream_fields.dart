//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_stream_fields.g.dart';

/// Field roles, as in custom sources (024)
///
/// Properties:
/// * [title]
/// * [significant]
/// * [volatile]
/// * [observedAtMode]
@BuiltValue()
abstract class EdpStreamFields
    implements Built<EdpStreamFields, EdpStreamFieldsBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'significant')
  BuiltList<String>? get significant;

  @BuiltValueField(wireName: r'volatile')
  BuiltList<String>? get volatile;

  @BuiltValueField(wireName: r'observedAtMode')
  EdpStreamFieldsObservedAtModeEnum? get observedAtMode;
  // enum observedAtModeEnum {  upstream,  received,  };

  EdpStreamFields._();

  factory EdpStreamFields([void updates(EdpStreamFieldsBuilder b)]) =
      _$EdpStreamFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpStreamFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpStreamFields> get serializer =>
      _$EdpStreamFieldsSerializer();
}

class _$EdpStreamFieldsSerializer
    implements PrimitiveSerializer<EdpStreamFields> {
  @override
  final Iterable<Type> types = const [EdpStreamFields, _$EdpStreamFields];

  @override
  final String wireName = r'EdpStreamFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpStreamFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.significant != null) {
      yield r'significant';
      yield serializers.serialize(
        object.significant,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.volatile != null) {
      yield r'volatile';
      yield serializers.serialize(
        object.volatile,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.observedAtMode != null) {
      yield r'observedAtMode';
      yield serializers.serialize(
        object.observedAtMode,
        specifiedType: const FullType(EdpStreamFieldsObservedAtModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpStreamFields object, {
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
    required EdpStreamFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'significant':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.significant.replace(valueDes);
          break;
        case r'volatile':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.volatile.replace(valueDes);
          break;
        case r'observedAtMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EdpStreamFieldsObservedAtModeEnum,
                    ),
                  )
                  as EdpStreamFieldsObservedAtModeEnum?;
          if (valueDes == null) continue;
          result.observedAtMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpStreamFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpStreamFieldsBuilder();
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

class EdpStreamFieldsObservedAtModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'upstream')
  static const EdpStreamFieldsObservedAtModeEnum upstream =
      _$edpStreamFieldsObservedAtModeEnum_upstream;
  @BuiltValueEnumConst(wireName: r'received')
  static const EdpStreamFieldsObservedAtModeEnum received =
      _$edpStreamFieldsObservedAtModeEnum_received;

  static Serializer<EdpStreamFieldsObservedAtModeEnum> get serializer =>
      _$edpStreamFieldsObservedAtModeEnumSerializer;

  const EdpStreamFieldsObservedAtModeEnum._(String name) : super(name);

  static BuiltSet<EdpStreamFieldsObservedAtModeEnum> get values =>
      _$edpStreamFieldsObservedAtModeEnumValues;
  static EdpStreamFieldsObservedAtModeEnum valueOf(String name) =>
      _$edpStreamFieldsObservedAtModeEnumValueOf(name);
}
