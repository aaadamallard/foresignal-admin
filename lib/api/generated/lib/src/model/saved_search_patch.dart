//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/saved_search_query.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_patch.g.dart';

/// JSON merge patch for a saved search
///
/// Properties:
/// * [name]
/// * [query]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [notify]
@BuiltValue()
abstract class SavedSearchPatch
    implements Built<SavedSearchPatch, SavedSearchPatchBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'query')
  SavedSearchQuery? get query;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'notify')
  bool? get notify;

  SavedSearchPatch._();

  factory SavedSearchPatch([void updates(SavedSearchPatchBuilder b)]) =
      _$SavedSearchPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchPatch> get serializer =>
      _$SavedSearchPatchSerializer();
}

class _$SavedSearchPatchSerializer
    implements PrimitiveSerializer<SavedSearchPatch> {
  @override
  final Iterable<Type> types = const [SavedSearchPatch, _$SavedSearchPatch];

  @override
  final String wireName = r'SavedSearchPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
        specifiedType: const FullType(SavedSearchQuery),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.notify != null) {
      yield r'notify';
      yield serializers.serialize(
        object.notify,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchPatch object, {
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
    required SavedSearchPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'query':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SavedSearchQuery),
                  )
                  as SavedSearchQuery?;
          if (valueDes == null) continue;
          result.query.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'notify':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notify = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchPatchBuilder();
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
