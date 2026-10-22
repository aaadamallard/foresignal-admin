//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxii_discovery.g.dart';

/// TAXII 2.1 discovery resource (member names per TAXII)
///
/// Properties:
/// * [title]
/// * [description]
/// * [contact]
/// * [default_]
/// * [apiRoots]
@BuiltValue()
abstract class TaxiiDiscovery
    implements Built<TaxiiDiscovery, TaxiiDiscoveryBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  @BuiltValueField(wireName: r'default')
  String? get default_;

  @BuiltValueField(wireName: r'api_roots')
  BuiltList<String>? get apiRoots;

  TaxiiDiscovery._();

  factory TaxiiDiscovery([void updates(TaxiiDiscoveryBuilder b)]) =
      _$TaxiiDiscovery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaxiiDiscoveryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaxiiDiscovery> get serializer =>
      _$TaxiiDiscoverySerializer();
}

class _$TaxiiDiscoverySerializer
    implements PrimitiveSerializer<TaxiiDiscovery> {
  @override
  final Iterable<Type> types = const [TaxiiDiscovery, _$TaxiiDiscovery];

  @override
  final String wireName = r'TaxiiDiscovery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaxiiDiscovery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.apiRoots != null) {
      yield r'api_roots';
      yield serializers.serialize(
        object.apiRoots,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaxiiDiscovery object, {
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
    required TaxiiDiscoveryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contact = valueDes;
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'api_roots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.apiRoots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaxiiDiscovery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaxiiDiscoveryBuilder();
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
