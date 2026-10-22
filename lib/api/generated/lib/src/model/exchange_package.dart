//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/package_manifest.dart';
import 'package:foresignal_api/src/model/exchange_package_deliveries_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_package.g.dart';

/// A package built by this instance and its delivery state
///
/// Properties:
/// * [id] - ULID identifier
/// * [manifest]
/// * [status]
/// * [sizeBytes]
/// * [deliveries]
/// * [reductions] - LOCAL_ONLY or private data excluded or reduced to derived statistics
/// * [createdBy]
/// * [createdAt]
/// * [downloadHref]
/// * [error]
@BuiltValue()
abstract class ExchangePackage
    implements Built<ExchangePackage, ExchangePackageBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'manifest')
  PackageManifest get manifest;

  @BuiltValueField(wireName: r'status')
  ExchangePackageStatusEnum get status;
  // enum statusEnum {  building,  ready,  delivering,  delivered,  failed,  };

  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'deliveries')
  BuiltList<ExchangePackageDeliveriesInner>? get deliveries;

  /// LOCAL_ONLY or private data excluded or reduced to derived statistics
  @BuiltValueField(wireName: r'reductions')
  BuiltList<Caveat>? get reductions;

  @BuiltValueField(wireName: r'createdBy')
  PrincipalSummary get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'downloadHref')
  String? get downloadHref;

  @BuiltValueField(wireName: r'error')
  String? get error;

  ExchangePackage._();

  factory ExchangePackage([void updates(ExchangePackageBuilder b)]) =
      _$ExchangePackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangePackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangePackage> get serializer =>
      _$ExchangePackageSerializer();
}

class _$ExchangePackageSerializer
    implements PrimitiveSerializer<ExchangePackage> {
  @override
  final Iterable<Type> types = const [ExchangePackage, _$ExchangePackage];

  @override
  final String wireName = r'ExchangePackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangePackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'manifest';
    yield serializers.serialize(
      object.manifest,
      specifiedType: const FullType(PackageManifest),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExchangePackageStatusEnum),
    );
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.deliveries != null) {
      yield r'deliveries';
      yield serializers.serialize(
        object.deliveries,
        specifiedType: const FullType(
            BuiltList, [FullType(ExchangePackageDeliveriesInner)]),
      );
    }
    if (object.reductions != null) {
      yield r'reductions';
      yield serializers.serialize(
        object.reductions,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.downloadHref != null) {
      yield r'downloadHref';
      yield serializers.serialize(
        object.downloadHref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangePackage object, {
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
    required ExchangePackageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'manifest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PackageManifest),
          ) as PackageManifest;
          result.manifest.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExchangePackageStatusEnum),
          ) as ExchangePackageStatusEnum;
          result.status = valueDes;
          break;
        case r'sizeBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'deliveries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ExchangePackageDeliveriesInner)]),
          ) as BuiltList<ExchangePackageDeliveriesInner>?;
          if (valueDes == null) continue;
          result.deliveries.replace(valueDes);
          break;
        case r'reductions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.reductions.replace(valueDes);
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrincipalSummary),
          ) as PrincipalSummary;
          result.createdBy.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'downloadHref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadHref = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangePackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangePackageBuilder();
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

class ExchangePackageStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'building')
  static const ExchangePackageStatusEnum building =
      _$exchangePackageStatusEnum_building;
  @BuiltValueEnumConst(wireName: r'ready')
  static const ExchangePackageStatusEnum ready =
      _$exchangePackageStatusEnum_ready;
  @BuiltValueEnumConst(wireName: r'delivering')
  static const ExchangePackageStatusEnum delivering =
      _$exchangePackageStatusEnum_delivering;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const ExchangePackageStatusEnum delivered =
      _$exchangePackageStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ExchangePackageStatusEnum failed =
      _$exchangePackageStatusEnum_failed;

  static Serializer<ExchangePackageStatusEnum> get serializer =>
      _$exchangePackageStatusEnumSerializer;

  const ExchangePackageStatusEnum._(String name) : super(name);

  static BuiltSet<ExchangePackageStatusEnum> get values =>
      _$exchangePackageStatusEnumValues;
  static ExchangePackageStatusEnum valueOf(String name) =>
      _$exchangePackageStatusEnumValueOf(name);
}
