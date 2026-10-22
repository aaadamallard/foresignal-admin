//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_split_input.g.dart';

/// Move a chosen member set into a new situation
///
/// Properties:
/// * [memberIds]
/// * [title]
/// * [theme]
/// * [version] - Expected version of the source situation
@BuiltValue()
abstract class SituationSplitInput
    implements Built<SituationSplitInput, SituationSplitInputBuilder> {
  @BuiltValueField(wireName: r'memberIds')
  BuiltList<String> get memberIds;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme? get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  /// Expected version of the source situation
  @BuiltValueField(wireName: r'version')
  int? get version;

  SituationSplitInput._();

  factory SituationSplitInput([void updates(SituationSplitInputBuilder b)]) =
      _$SituationSplitInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSplitInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSplitInput> get serializer =>
      _$SituationSplitInputSerializer();
}

class _$SituationSplitInputSerializer
    implements PrimitiveSerializer<SituationSplitInput> {
  @override
  final Iterable<Type> types = const [
    SituationSplitInput,
    _$SituationSplitInput,
  ];

  @override
  final String wireName = r'SituationSplitInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSplitInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'memberIds';
    yield serializers.serialize(
      object.memberIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType(SituationTheme),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationSplitInput object, {
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
    required SituationSplitInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'memberIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.memberIds.replace(valueDes);
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
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SituationTheme),
                  )
                  as SituationTheme?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationSplitInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSplitInputBuilder();
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
