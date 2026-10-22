//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_raster_bundle_meta.g.dart';

/// Metadata part of a remote pass bundle
///
/// Properties:
/// * [passFolder] - Pass folder name: one safe path segment (no separators, no `..`, no leading dot), at most 128 characters
/// * [files] - Filenames of the file parts (no separators, no `..`)
/// * [product] - Product directory for every file except `dataset.json` (one safe path segment, for example `MSU-MR`); default: the single product `dataset.json` lists, else the pass folder. Send one bundle per product for a multi-instrument pass.
@BuiltValue()
abstract class RemoteRasterBundleMeta
    implements Built<RemoteRasterBundleMeta, RemoteRasterBundleMetaBuilder> {
  /// Pass folder name: one safe path segment (no separators, no `..`, no leading dot), at most 128 characters
  @BuiltValueField(wireName: r'passFolder')
  String get passFolder;

  /// Filenames of the file parts (no separators, no `..`)
  @BuiltValueField(wireName: r'files')
  BuiltList<String> get files;

  /// Product directory for every file except `dataset.json` (one safe path segment, for example `MSU-MR`); default: the single product `dataset.json` lists, else the pass folder. Send one bundle per product for a multi-instrument pass.
  @BuiltValueField(wireName: r'product')
  String? get product;

  RemoteRasterBundleMeta._();

  factory RemoteRasterBundleMeta(
          [void updates(RemoteRasterBundleMetaBuilder b)]) =
      _$RemoteRasterBundleMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoteRasterBundleMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoteRasterBundleMeta> get serializer =>
      _$RemoteRasterBundleMetaSerializer();
}

class _$RemoteRasterBundleMetaSerializer
    implements PrimitiveSerializer<RemoteRasterBundleMeta> {
  @override
  final Iterable<Type> types = const [
    RemoteRasterBundleMeta,
    _$RemoteRasterBundleMeta
  ];

  @override
  final String wireName = r'RemoteRasterBundleMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoteRasterBundleMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'passFolder';
    yield serializers.serialize(
      object.passFolder,
      specifiedType: const FullType(String),
    );
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoteRasterBundleMeta object, {
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
    required RemoteRasterBundleMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passFolder = valueDes;
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.files.replace(valueDes);
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.product = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoteRasterBundleMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoteRasterBundleMetaBuilder();
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
