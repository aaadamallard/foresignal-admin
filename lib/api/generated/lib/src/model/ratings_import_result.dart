//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ratings_import_result_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ratings_import_result.g.dart';

/// Outcome of a ratings import
///
/// Properties:
/// * [provider]
/// * [imported]
/// * [updated]
/// * [rejected]
/// * [outletsCreated]
/// * [errors]
/// * [importedAt]
@BuiltValue()
abstract class RatingsImportResult
    implements Built<RatingsImportResult, RatingsImportResultBuilder> {
  @BuiltValueField(wireName: r'provider')
  RatingsImportResultProviderEnum get provider;
  // enum providerEnum {  wikidata,  partisan-web,  allsides,  mbfc,  operator,  };

  @BuiltValueField(wireName: r'imported')
  int get imported;

  @BuiltValueField(wireName: r'updated')
  int get updated;

  @BuiltValueField(wireName: r'rejected')
  int get rejected;

  @BuiltValueField(wireName: r'outletsCreated')
  int? get outletsCreated;

  @BuiltValueField(wireName: r'errors')
  BuiltList<RatingsImportResultErrorsInner>? get errors;

  @BuiltValueField(wireName: r'importedAt')
  DateTime get importedAt;

  RatingsImportResult._();

  factory RatingsImportResult([void updates(RatingsImportResultBuilder b)]) =
      _$RatingsImportResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingsImportResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingsImportResult> get serializer =>
      _$RatingsImportResultSerializer();
}

class _$RatingsImportResultSerializer
    implements PrimitiveSerializer<RatingsImportResult> {
  @override
  final Iterable<Type> types = const [
    RatingsImportResult,
    _$RatingsImportResult,
  ];

  @override
  final String wireName = r'RatingsImportResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingsImportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(RatingsImportResultProviderEnum),
    );
    yield r'imported';
    yield serializers.serialize(
      object.imported,
      specifiedType: const FullType(int),
    );
    yield r'updated';
    yield serializers.serialize(
      object.updated,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(int),
    );
    if (object.outletsCreated != null) {
      yield r'outletsCreated';
      yield serializers.serialize(
        object.outletsCreated,
        specifiedType: const FullType(int),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [
          FullType(RatingsImportResultErrorsInner),
        ]),
      );
    }
    yield r'importedAt';
    yield serializers.serialize(
      object.importedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingsImportResult object, {
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
    required RatingsImportResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      RatingsImportResultProviderEnum,
                    ),
                  )
                  as RatingsImportResultProviderEnum;
          result.provider = valueDes;
          break;
        case r'imported':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.imported = valueDes;
          break;
        case r'updated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.updated = valueDes;
          break;
        case r'rejected':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rejected = valueDes;
          break;
        case r'outletsCreated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.outletsCreated = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RatingsImportResultErrorsInner),
                    ]),
                  )
                  as BuiltList<RatingsImportResultErrorsInner>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'importedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.importedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatingsImportResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingsImportResultBuilder();
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

class RatingsImportResultProviderEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wikidata')
  static const RatingsImportResultProviderEnum wikidata =
      _$ratingsImportResultProviderEnum_wikidata;
  @BuiltValueEnumConst(wireName: r'partisan-web')
  static const RatingsImportResultProviderEnum partisanWeb =
      _$ratingsImportResultProviderEnum_partisanWeb;
  @BuiltValueEnumConst(wireName: r'allsides')
  static const RatingsImportResultProviderEnum allsides =
      _$ratingsImportResultProviderEnum_allsides;
  @BuiltValueEnumConst(wireName: r'mbfc')
  static const RatingsImportResultProviderEnum mbfc =
      _$ratingsImportResultProviderEnum_mbfc;
  @BuiltValueEnumConst(wireName: r'operator')
  static const RatingsImportResultProviderEnum operator_ =
      _$ratingsImportResultProviderEnum_operator_;

  static Serializer<RatingsImportResultProviderEnum> get serializer =>
      _$ratingsImportResultProviderEnumSerializer;

  const RatingsImportResultProviderEnum._(String name) : super(name);

  static BuiltSet<RatingsImportResultProviderEnum> get values =>
      _$ratingsImportResultProviderEnumValues;
  static RatingsImportResultProviderEnum valueOf(String name) =>
      _$ratingsImportResultProviderEnumValueOf(name);
}
