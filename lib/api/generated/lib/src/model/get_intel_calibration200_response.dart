//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_calibration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_intel_calibration200_response.g.dart';

/// GetIntelCalibration200Response
///
/// Properties:
/// * [scopes]
@BuiltValue()
abstract class GetIntelCalibration200Response
    implements
        Built<
          GetIntelCalibration200Response,
          GetIntelCalibration200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'scopes')
  BuiltList<IntelCalibration> get scopes;

  GetIntelCalibration200Response._();

  factory GetIntelCalibration200Response([
    void updates(GetIntelCalibration200ResponseBuilder b),
  ]) = _$GetIntelCalibration200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetIntelCalibration200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetIntelCalibration200Response> get serializer =>
      _$GetIntelCalibration200ResponseSerializer();
}

class _$GetIntelCalibration200ResponseSerializer
    implements PrimitiveSerializer<GetIntelCalibration200Response> {
  @override
  final Iterable<Type> types = const [
    GetIntelCalibration200Response,
    _$GetIntelCalibration200Response,
  ];

  @override
  final String wireName = r'GetIntelCalibration200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetIntelCalibration200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(IntelCalibration)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetIntelCalibration200Response object, {
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
    required GetIntelCalibration200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scopes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(IntelCalibration),
                    ]),
                  )
                  as BuiltList<IntelCalibration>;
          result.scopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetIntelCalibration200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIntelCalibration200ResponseBuilder();
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
