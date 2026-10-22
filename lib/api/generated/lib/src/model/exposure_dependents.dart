//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/exposure_dependents_by_label.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_dependents.g.dart';

/// Infrastructure dependents summary (104)
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [buildId] - ULID identifier
/// * [byLabel]
/// * [byType]
@BuiltValue()
abstract class ExposureDependents
    implements Built<ExposureDependents, ExposureDependentsBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposureDependentsStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  /// ULID identifier
  @BuiltValueField(wireName: r'buildId')
  String? get buildId;

  @BuiltValueField(wireName: r'byLabel')
  ExposureDependentsByLabel? get byLabel;

  @BuiltValueField(wireName: r'byType')
  BuiltMap<String, int>? get byType;

  ExposureDependents._();

  factory ExposureDependents([void updates(ExposureDependentsBuilder b)]) =
      _$ExposureDependents;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureDependentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureDependents> get serializer =>
      _$ExposureDependentsSerializer();
}

class _$ExposureDependentsSerializer
    implements PrimitiveSerializer<ExposureDependents> {
  @override
  final Iterable<Type> types = const [ExposureDependents, _$ExposureDependents];

  @override
  final String wireName = r'ExposureDependents';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureDependents object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposureDependentsStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.buildId != null) {
      yield r'buildId';
      yield serializers.serialize(
        object.buildId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.byLabel != null) {
      yield r'byLabel';
      yield serializers.serialize(
        object.byLabel,
        specifiedType: const FullType(ExposureDependentsByLabel),
      );
    }
    if (object.byType != null) {
      yield r'byType';
      yield serializers.serialize(
        object.byType,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureDependents object, {
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
    required ExposureDependentsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureDependentsStatusEnum),
                  )
                  as ExposureDependentsStatusEnum;
          result.status = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'buildId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.buildId = valueDes;
          break;
        case r'byLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExposureDependentsByLabel,
                    ),
                  )
                  as ExposureDependentsByLabel?;
          if (valueDes == null) continue;
          result.byLabel.replace(valueDes);
          break;
        case r'byType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureDependents deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureDependentsBuilder();
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

class ExposureDependentsStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposureDependentsStatusEnum ok =
      _$exposureDependentsStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposureDependentsStatusEnum unavailable =
      _$exposureDependentsStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposureDependentsStatusEnum notInstalled =
      _$exposureDependentsStatusEnum_notInstalled;

  static Serializer<ExposureDependentsStatusEnum> get serializer =>
      _$exposureDependentsStatusEnumSerializer;

  const ExposureDependentsStatusEnum._(String name) : super(name);

  static BuiltSet<ExposureDependentsStatusEnum> get values =>
      _$exposureDependentsStatusEnumValues;
  static ExposureDependentsStatusEnum valueOf(String name) =>
      _$exposureDependentsStatusEnumValueOf(name);
}
