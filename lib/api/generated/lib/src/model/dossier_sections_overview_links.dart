//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_overview_links.g.dart';

/// Links to the full data
///
/// Properties:
/// * [full]
@BuiltValue()
abstract class DossierSectionsOverviewLinks
    implements
        Built<
          DossierSectionsOverviewLinks,
          DossierSectionsOverviewLinksBuilder
        > {
  @BuiltValueField(wireName: r'full')
  String? get full;

  DossierSectionsOverviewLinks._();

  factory DossierSectionsOverviewLinks([
    void updates(DossierSectionsOverviewLinksBuilder b),
  ]) = _$DossierSectionsOverviewLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsOverviewLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsOverviewLinks> get serializer =>
      _$DossierSectionsOverviewLinksSerializer();
}

class _$DossierSectionsOverviewLinksSerializer
    implements PrimitiveSerializer<DossierSectionsOverviewLinks> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsOverviewLinks,
    _$DossierSectionsOverviewLinks,
  ];

  @override
  final String wireName = r'DossierSectionsOverviewLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsOverviewLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.full != null) {
      yield r'full';
      yield serializers.serialize(
        object.full,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsOverviewLinks object, {
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
    required DossierSectionsOverviewLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'full':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.full = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsOverviewLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsOverviewLinksBuilder();
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
