//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_timeline_items_inner.g.dart';

/// Timeline item
///
/// Properties:
/// * [at]
/// * [kind]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [severity]
@BuiltValue()
abstract class DossierSectionsTimelineItemsInner
    implements
        Built<
          DossierSectionsTimelineItemsInner,
          DossierSectionsTimelineItemsInnerBuilder
        > {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'kind')
  DossierSectionsTimelineItemsInnerKindEnum get kind;
  // enum kindEnum {  version,  alert,  finding,  situation-log,  annotation,  other,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'severity')
  String? get severity;

  DossierSectionsTimelineItemsInner._();

  factory DossierSectionsTimelineItemsInner([
    void updates(DossierSectionsTimelineItemsInnerBuilder b),
  ]) = _$DossierSectionsTimelineItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsTimelineItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsTimelineItemsInner> get serializer =>
      _$DossierSectionsTimelineItemsInnerSerializer();
}

class _$DossierSectionsTimelineItemsInnerSerializer
    implements PrimitiveSerializer<DossierSectionsTimelineItemsInner> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsTimelineItemsInner,
    _$DossierSectionsTimelineItemsInner,
  ];

  @override
  final String wireName = r'DossierSectionsTimelineItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsTimelineItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(DossierSectionsTimelineItemsInnerKindEnum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsTimelineItemsInner object, {
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
    required DossierSectionsTimelineItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DossierSectionsTimelineItemsInnerKindEnum,
                    ),
                  )
                  as DossierSectionsTimelineItemsInnerKindEnum;
          result.kind = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
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
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsTimelineItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsTimelineItemsInnerBuilder();
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

class DossierSectionsTimelineItemsInnerKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'version')
  static const DossierSectionsTimelineItemsInnerKindEnum version =
      _$dossierSectionsTimelineItemsInnerKindEnum_version;
  @BuiltValueEnumConst(wireName: r'alert')
  static const DossierSectionsTimelineItemsInnerKindEnum alert =
      _$dossierSectionsTimelineItemsInnerKindEnum_alert;
  @BuiltValueEnumConst(wireName: r'finding')
  static const DossierSectionsTimelineItemsInnerKindEnum finding =
      _$dossierSectionsTimelineItemsInnerKindEnum_finding;
  @BuiltValueEnumConst(wireName: r'situation-log')
  static const DossierSectionsTimelineItemsInnerKindEnum situationLog =
      _$dossierSectionsTimelineItemsInnerKindEnum_situationLog;
  @BuiltValueEnumConst(wireName: r'annotation')
  static const DossierSectionsTimelineItemsInnerKindEnum annotation =
      _$dossierSectionsTimelineItemsInnerKindEnum_annotation;
  @BuiltValueEnumConst(wireName: r'other')
  static const DossierSectionsTimelineItemsInnerKindEnum other =
      _$dossierSectionsTimelineItemsInnerKindEnum_other;

  static Serializer<DossierSectionsTimelineItemsInnerKindEnum> get serializer =>
      _$dossierSectionsTimelineItemsInnerKindEnumSerializer;

  const DossierSectionsTimelineItemsInnerKindEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsTimelineItemsInnerKindEnum> get values =>
      _$dossierSectionsTimelineItemsInnerKindEnumValues;
  static DossierSectionsTimelineItemsInnerKindEnum valueOf(String name) =>
      _$dossierSectionsTimelineItemsInnerKindEnumValueOf(name);
}
