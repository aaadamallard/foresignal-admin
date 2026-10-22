//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_source.g.dart';

/// What a report is built from
///
/// Properties:
/// * [type]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [refs] - For `selection`
@BuiltValue()
abstract class ReportSource
    implements Built<ReportSource, ReportSourceBuilder> {
  @BuiltValueField(wireName: r'type')
  ReportSourceTypeEnum get type;
  // enum typeEnum {  selection,  tag,  investigation,  chronicle,  situation,  workspace,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// For `selection`
  @BuiltValueField(wireName: r'refs')
  BuiltList<String>? get refs;

  ReportSource._();

  factory ReportSource([void updates(ReportSourceBuilder b)]) = _$ReportSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportSource> get serializer => _$ReportSourceSerializer();
}

class _$ReportSourceSerializer implements PrimitiveSerializer<ReportSource> {
  @override
  final Iterable<Type> types = const [ReportSource, _$ReportSource];

  @override
  final String wireName = r'ReportSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportSourceTypeEnum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportSource object, {
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
    required ReportSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportSourceTypeEnum),
          ) as ReportSourceTypeEnum;
          result.type = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportSourceBuilder();
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

class ReportSourceTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'selection')
  static const ReportSourceTypeEnum selection =
      _$reportSourceTypeEnum_selection;
  @BuiltValueEnumConst(wireName: r'tag')
  static const ReportSourceTypeEnum tag = _$reportSourceTypeEnum_tag;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const ReportSourceTypeEnum investigation =
      _$reportSourceTypeEnum_investigation;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const ReportSourceTypeEnum chronicle =
      _$reportSourceTypeEnum_chronicle;
  @BuiltValueEnumConst(wireName: r'situation')
  static const ReportSourceTypeEnum situation =
      _$reportSourceTypeEnum_situation;
  @BuiltValueEnumConst(wireName: r'workspace')
  static const ReportSourceTypeEnum workspace =
      _$reportSourceTypeEnum_workspace;

  static Serializer<ReportSourceTypeEnum> get serializer =>
      _$reportSourceTypeEnumSerializer;

  const ReportSourceTypeEnum._(String name) : super(name);

  static BuiltSet<ReportSourceTypeEnum> get values =>
      _$reportSourceTypeEnumValues;
  static ReportSourceTypeEnum valueOf(String name) =>
      _$reportSourceTypeEnumValueOf(name);
}
