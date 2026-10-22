//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_dependencies_request.g.dart';

/// Objects whose shared dependencies to find
///
/// Properties:
/// * [refs]
/// * [asOf]
@BuiltValue()
abstract class CommonDependenciesRequest
    implements
        Built<CommonDependenciesRequest, CommonDependenciesRequestBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  CommonDependenciesRequest._();

  factory CommonDependenciesRequest([
    void updates(CommonDependenciesRequestBuilder b),
  ]) = _$CommonDependenciesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommonDependenciesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonDependenciesRequest> get serializer =>
      _$CommonDependenciesRequestSerializer();
}

class _$CommonDependenciesRequestSerializer
    implements PrimitiveSerializer<CommonDependenciesRequest> {
  @override
  final Iterable<Type> types = const [
    CommonDependenciesRequest,
    _$CommonDependenciesRequest,
  ];

  @override
  final String wireName = r'CommonDependenciesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonDependenciesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesRequest object, {
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
    required CommonDependenciesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommonDependenciesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonDependenciesRequestBuilder();
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
