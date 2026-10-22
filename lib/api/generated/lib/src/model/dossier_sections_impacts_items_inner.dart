//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/impact_rate_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_impacts_items_inner.g.dart';

/// Projected impact summary
///
/// Properties:
/// * [findingId] - ULID identifier
/// * [impactFamily]
/// * [admin1]
/// * [pImpact]
/// * [interval]
/// * [dependencyPaths]
/// * [labels]
/// * [questionId] - ULID identifier
@BuiltValue()
abstract class DossierSectionsImpactsItemsInner
    implements
        Built<
          DossierSectionsImpactsItemsInner,
          DossierSectionsImpactsItemsInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  @BuiltValueField(wireName: r'impactFamily')
  String get impactFamily;

  @BuiltValueField(wireName: r'admin1')
  String? get admin1;

  @BuiltValueField(wireName: r'pImpact')
  num get pImpact;

  @BuiltValueField(wireName: r'interval')
  ImpactRateInterval? get interval;

  @BuiltValueField(wireName: r'dependencyPaths')
  int? get dependencyPaths;

  @BuiltValueField(wireName: r'labels')
  BuiltList<String> get labels;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  DossierSectionsImpactsItemsInner._();

  factory DossierSectionsImpactsItemsInner([
    void updates(DossierSectionsImpactsItemsInnerBuilder b),
  ]) = _$DossierSectionsImpactsItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsImpactsItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsImpactsItemsInner> get serializer =>
      _$DossierSectionsImpactsItemsInnerSerializer();
}

class _$DossierSectionsImpactsItemsInnerSerializer
    implements PrimitiveSerializer<DossierSectionsImpactsItemsInner> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsImpactsItemsInner,
    _$DossierSectionsImpactsItemsInner,
  ];

  @override
  final String wireName = r'DossierSectionsImpactsItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsImpactsItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'impactFamily';
    yield serializers.serialize(
      object.impactFamily,
      specifiedType: const FullType(String),
    );
    if (object.admin1 != null) {
      yield r'admin1';
      yield serializers.serialize(
        object.admin1,
        specifiedType: const FullType(String),
      );
    }
    yield r'pImpact';
    yield serializers.serialize(
      object.pImpact,
      specifiedType: const FullType(num),
    );
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType.nullable(ImpactRateInterval),
      );
    }
    if (object.dependencyPaths != null) {
      yield r'dependencyPaths';
      yield serializers.serialize(
        object.dependencyPaths,
        specifiedType: const FullType(int),
      );
    }
    yield r'labels';
    yield serializers.serialize(
      object.labels,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsImpactsItemsInner object, {
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
    required DossierSectionsImpactsItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingId = valueDes;
          break;
        case r'impactFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.impactFamily = valueDes;
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1 = valueDes;
          break;
        case r'pImpact':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pImpact = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImpactRateInterval),
                  )
                  as ImpactRateInterval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        case r'dependencyPaths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dependencyPaths = valueDes;
          break;
        case r'labels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.labels.replace(valueDes);
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsImpactsItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsImpactsItemsInnerBuilder();
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
