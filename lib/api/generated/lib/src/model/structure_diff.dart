//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/structure_diff_presence_dropped_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/structure_diff_delimiter_changed.dart';
import 'package:foresignal_api/src/model/structure_diff_type_changed_inner.dart';
import 'package:foresignal_api/src/model/structure_diff_rename_candidates_inner.dart';
import 'package:foresignal_api/src/model/structure_diff_content_type_changed.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff.g.dart';

/// Structural difference between the probe body and the recorded fixture (paths and types, never bodies)
///
/// Properties:
/// * [format]
/// * [fixtureFile]
/// * [addedPaths]
/// * [removedPaths]
/// * [typeChanged]
/// * [presenceDropped]
/// * [arrayEmpty]
/// * [columnsReordered]
/// * [delimiterChanged]
/// * [contentTypeChanged]
/// * [sizeRatio]
/// * [renameCandidates]
/// * [htmlTitle] - `<title>` when HTML arrived instead of data
/// * [examples] - Path → up to 3 capped example values
@BuiltValue()
abstract class StructureDiff
    implements Built<StructureDiff, StructureDiffBuilder> {
  @BuiltValueField(wireName: r'format')
  StructureDiffFormatEnum get format;
  // enum formatEnum {  json,  csv,  tsv,  xml,  binary,  html,  text,  };

  @BuiltValueField(wireName: r'fixtureFile')
  String? get fixtureFile;

  @BuiltValueField(wireName: r'addedPaths')
  BuiltList<String> get addedPaths;

  @BuiltValueField(wireName: r'removedPaths')
  BuiltList<String> get removedPaths;

  @BuiltValueField(wireName: r'typeChanged')
  BuiltList<StructureDiffTypeChangedInner> get typeChanged;

  @BuiltValueField(wireName: r'presenceDropped')
  BuiltList<StructureDiffPresenceDroppedInner>? get presenceDropped;

  @BuiltValueField(wireName: r'arrayEmpty')
  BuiltList<String>? get arrayEmpty;

  @BuiltValueField(wireName: r'columnsReordered')
  bool? get columnsReordered;

  @BuiltValueField(wireName: r'delimiterChanged')
  StructureDiffDelimiterChanged? get delimiterChanged;

  @BuiltValueField(wireName: r'contentTypeChanged')
  StructureDiffContentTypeChanged? get contentTypeChanged;

  @BuiltValueField(wireName: r'sizeRatio')
  num? get sizeRatio;

  @BuiltValueField(wireName: r'renameCandidates')
  BuiltList<StructureDiffRenameCandidatesInner>? get renameCandidates;

  /// `<title>` when HTML arrived instead of data
  @BuiltValueField(wireName: r'htmlTitle')
  String? get htmlTitle;

  /// Path → up to 3 capped example values
  @BuiltValueField(wireName: r'examples')
  BuiltMap<String, BuiltList<String>>? get examples;

  StructureDiff._();

  factory StructureDiff([void updates(StructureDiffBuilder b)]) =
      _$StructureDiff;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiff> get serializer =>
      _$StructureDiffSerializer();
}

class _$StructureDiffSerializer implements PrimitiveSerializer<StructureDiff> {
  @override
  final Iterable<Type> types = const [StructureDiff, _$StructureDiff];

  @override
  final String wireName = r'StructureDiff';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiff object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(StructureDiffFormatEnum),
    );
    if (object.fixtureFile != null) {
      yield r'fixtureFile';
      yield serializers.serialize(
        object.fixtureFile,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'addedPaths';
    yield serializers.serialize(
      object.addedPaths,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'removedPaths';
    yield serializers.serialize(
      object.removedPaths,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'typeChanged';
    yield serializers.serialize(
      object.typeChanged,
      specifiedType: const FullType(BuiltList, [
        FullType(StructureDiffTypeChangedInner),
      ]),
    );
    if (object.presenceDropped != null) {
      yield r'presenceDropped';
      yield serializers.serialize(
        object.presenceDropped,
        specifiedType: const FullType(BuiltList, [
          FullType(StructureDiffPresenceDroppedInner),
        ]),
      );
    }
    if (object.arrayEmpty != null) {
      yield r'arrayEmpty';
      yield serializers.serialize(
        object.arrayEmpty,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.columnsReordered != null) {
      yield r'columnsReordered';
      yield serializers.serialize(
        object.columnsReordered,
        specifiedType: const FullType(bool),
      );
    }
    if (object.delimiterChanged != null) {
      yield r'delimiterChanged';
      yield serializers.serialize(
        object.delimiterChanged,
        specifiedType: const FullType.nullable(StructureDiffDelimiterChanged),
      );
    }
    if (object.contentTypeChanged != null) {
      yield r'contentTypeChanged';
      yield serializers.serialize(
        object.contentTypeChanged,
        specifiedType: const FullType.nullable(StructureDiffContentTypeChanged),
      );
    }
    if (object.sizeRatio != null) {
      yield r'sizeRatio';
      yield serializers.serialize(
        object.sizeRatio,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.renameCandidates != null) {
      yield r'renameCandidates';
      yield serializers.serialize(
        object.renameCandidates,
        specifiedType: const FullType(BuiltList, [
          FullType(StructureDiffRenameCandidatesInner),
        ]),
      );
    }
    if (object.htmlTitle != null) {
      yield r'htmlTitle';
      yield serializers.serialize(
        object.htmlTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.examples != null) {
      yield r'examples';
      yield serializers.serialize(
        object.examples,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [FullType(String)]),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructureDiff object, {
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
    required StructureDiffBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StructureDiffFormatEnum),
                  )
                  as StructureDiffFormatEnum;
          result.format = valueDes;
          break;
        case r'fixtureFile':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fixtureFile = valueDes;
          break;
        case r'addedPaths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.addedPaths.replace(valueDes);
          break;
        case r'removedPaths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.removedPaths.replace(valueDes);
          break;
        case r'typeChanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(StructureDiffTypeChangedInner),
                    ]),
                  )
                  as BuiltList<StructureDiffTypeChangedInner>;
          result.typeChanged.replace(valueDes);
          break;
        case r'presenceDropped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StructureDiffPresenceDroppedInner),
                    ]),
                  )
                  as BuiltList<StructureDiffPresenceDroppedInner>?;
          if (valueDes == null) continue;
          result.presenceDropped.replace(valueDes);
          break;
        case r'arrayEmpty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.arrayEmpty.replace(valueDes);
          break;
        case r'columnsReordered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.columnsReordered = valueDes;
          break;
        case r'delimiterChanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StructureDiffDelimiterChanged,
                    ),
                  )
                  as StructureDiffDelimiterChanged?;
          if (valueDes == null) continue;
          result.delimiterChanged.replace(valueDes);
          break;
        case r'contentTypeChanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StructureDiffContentTypeChanged,
                    ),
                  )
                  as StructureDiffContentTypeChanged?;
          if (valueDes == null) continue;
          result.contentTypeChanged.replace(valueDes);
          break;
        case r'sizeRatio':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.sizeRatio = valueDes;
          break;
        case r'renameCandidates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StructureDiffRenameCandidatesInner),
                    ]),
                  )
                  as BuiltList<StructureDiffRenameCandidatesInner>?;
          if (valueDes == null) continue;
          result.renameCandidates.replace(valueDes);
          break;
        case r'htmlTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.htmlTitle = valueDes;
          break;
        case r'examples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [FullType(String)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<String>>?;
          if (valueDes == null) continue;
          result.examples.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructureDiff deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffBuilder();
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

class StructureDiffFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'json')
  static const StructureDiffFormatEnum json = _$structureDiffFormatEnum_json;
  @BuiltValueEnumConst(wireName: r'csv')
  static const StructureDiffFormatEnum csv = _$structureDiffFormatEnum_csv;
  @BuiltValueEnumConst(wireName: r'tsv')
  static const StructureDiffFormatEnum tsv = _$structureDiffFormatEnum_tsv;
  @BuiltValueEnumConst(wireName: r'xml')
  static const StructureDiffFormatEnum xml = _$structureDiffFormatEnum_xml;
  @BuiltValueEnumConst(wireName: r'binary')
  static const StructureDiffFormatEnum binary =
      _$structureDiffFormatEnum_binary;
  @BuiltValueEnumConst(wireName: r'html')
  static const StructureDiffFormatEnum html = _$structureDiffFormatEnum_html;
  @BuiltValueEnumConst(wireName: r'text')
  static const StructureDiffFormatEnum text = _$structureDiffFormatEnum_text;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StructureDiffFormatEnum unknownDefaultOpenApi =
      _$structureDiffFormatEnum_unknownDefaultOpenApi;

  static Serializer<StructureDiffFormatEnum> get serializer =>
      _$structureDiffFormatEnumSerializer;

  const StructureDiffFormatEnum._(String name) : super(name);

  static BuiltSet<StructureDiffFormatEnum> get values =>
      _$structureDiffFormatEnumValues;
  static StructureDiffFormatEnum valueOf(String name) =>
      _$structureDiffFormatEnumValueOf(name);
}
