//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_report.g.dart';

/// ImportReport
///
/// Properties:
/// * [sourcesApplied]
/// * [sourcesUnknown]
/// * [triggersUpserted]
/// * [channelsUpserted]
/// * [briefingsUpserted]
/// * [customSourcesUpserted]
/// * [llmProvidersUpserted]
/// * [warnings]
/// * [placesUpserted]
/// * [viewsUpserted]
/// * [watchlistsUpserted]
/// * [pushProvidersUpserted]
@BuiltValue()
abstract class ImportReport
    implements Built<ImportReport, ImportReportBuilder> {
  @BuiltValueField(wireName: r'sourcesApplied')
  BuiltList<String> get sourcesApplied;

  @BuiltValueField(wireName: r'sourcesUnknown')
  BuiltList<String> get sourcesUnknown;

  @BuiltValueField(wireName: r'triggersUpserted')
  int? get triggersUpserted;

  @BuiltValueField(wireName: r'channelsUpserted')
  int? get channelsUpserted;

  @BuiltValueField(wireName: r'briefingsUpserted')
  int? get briefingsUpserted;

  @BuiltValueField(wireName: r'customSourcesUpserted')
  int? get customSourcesUpserted;

  @BuiltValueField(wireName: r'llmProvidersUpserted')
  int? get llmProvidersUpserted;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'placesUpserted')
  int? get placesUpserted;

  @BuiltValueField(wireName: r'viewsUpserted')
  int? get viewsUpserted;

  @BuiltValueField(wireName: r'watchlistsUpserted')
  int? get watchlistsUpserted;

  @BuiltValueField(wireName: r'pushProvidersUpserted')
  int? get pushProvidersUpserted;

  ImportReport._();

  factory ImportReport([void updates(ImportReportBuilder b)]) = _$ImportReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportReport> get serializer => _$ImportReportSerializer();
}

class _$ImportReportSerializer implements PrimitiveSerializer<ImportReport> {
  @override
  final Iterable<Type> types = const [ImportReport, _$ImportReport];

  @override
  final String wireName = r'ImportReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourcesApplied';
    yield serializers.serialize(
      object.sourcesApplied,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'sourcesUnknown';
    yield serializers.serialize(
      object.sourcesUnknown,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.triggersUpserted != null) {
      yield r'triggersUpserted';
      yield serializers.serialize(
        object.triggersUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.channelsUpserted != null) {
      yield r'channelsUpserted';
      yield serializers.serialize(
        object.channelsUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.briefingsUpserted != null) {
      yield r'briefingsUpserted';
      yield serializers.serialize(
        object.briefingsUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.customSourcesUpserted != null) {
      yield r'customSourcesUpserted';
      yield serializers.serialize(
        object.customSourcesUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.llmProvidersUpserted != null) {
      yield r'llmProvidersUpserted';
      yield serializers.serialize(
        object.llmProvidersUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placesUpserted != null) {
      yield r'placesUpserted';
      yield serializers.serialize(
        object.placesUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.viewsUpserted != null) {
      yield r'viewsUpserted';
      yield serializers.serialize(
        object.viewsUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.watchlistsUpserted != null) {
      yield r'watchlistsUpserted';
      yield serializers.serialize(
        object.watchlistsUpserted,
        specifiedType: const FullType(int),
      );
    }
    if (object.pushProvidersUpserted != null) {
      yield r'pushProvidersUpserted';
      yield serializers.serialize(
        object.pushProvidersUpserted,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportReport object, {
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
    required ImportReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourcesApplied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sourcesApplied.replace(valueDes);
          break;
        case r'sourcesUnknown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sourcesUnknown.replace(valueDes);
          break;
        case r'triggersUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.triggersUpserted = valueDes;
          break;
        case r'channelsUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.channelsUpserted = valueDes;
          break;
        case r'briefingsUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.briefingsUpserted = valueDes;
          break;
        case r'customSourcesUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.customSourcesUpserted = valueDes;
          break;
        case r'llmProvidersUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.llmProvidersUpserted = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'placesUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.placesUpserted = valueDes;
          break;
        case r'viewsUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.viewsUpserted = valueDes;
          break;
        case r'watchlistsUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watchlistsUpserted = valueDes;
          break;
        case r'pushProvidersUpserted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pushProvidersUpserted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportReportBuilder();
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
