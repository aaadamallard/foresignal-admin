//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/investigation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_export.g.dart';

/// JSON export of an investigation
///
/// Properties:
/// * [header]
/// * [generatedAt]
/// * [investigation]
/// * [attributions]
@BuiltValue()
abstract class InvestigationExport
    implements Built<InvestigationExport, InvestigationExportBuilder> {
  @BuiltValueField(wireName: r'header')
  String get header;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'investigation')
  Investigation get investigation;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<String> get attributions;

  InvestigationExport._();

  factory InvestigationExport([void updates(InvestigationExportBuilder b)]) =
      _$InvestigationExport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationExportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationExport> get serializer =>
      _$InvestigationExportSerializer();
}

class _$InvestigationExportSerializer
    implements PrimitiveSerializer<InvestigationExport> {
  @override
  final Iterable<Type> types = const [
    InvestigationExport,
    _$InvestigationExport,
  ];

  @override
  final String wireName = r'InvestigationExport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationExport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'header';
    yield serializers.serialize(
      object.header,
      specifiedType: const FullType(String),
    );
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'investigation';
    yield serializers.serialize(
      object.investigation,
      specifiedType: const FullType(Investigation),
    );
    yield r'attributions';
    yield serializers.serialize(
      object.attributions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvestigationExport object, {
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
    required InvestigationExportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.header = valueDes;
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'investigation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Investigation),
                  )
                  as Investigation;
          result.investigation.replace(valueDes);
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.attributions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvestigationExport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationExportBuilder();
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
