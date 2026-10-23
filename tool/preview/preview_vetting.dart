// The preview's fake answers for social vetting, media ratings, entity
// resolution and the ownership graph. Bodies follow their schemas in
// openapi/OpenAPI.json (SocialSettings, SocialPlatform, ClaimPage, Claim,
// NarrativePage, SocialCuePage, SocialComparisonPage, LeadTimeStats,
// RatingsImportResult, EntityPage, Entity, EntityKey, EntityRecordList,
// OwnershipChain, GraphResult).

/// A fake reply.
typedef VettingReply = ({int status, Object? body});

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

const String _narrative = '01JBK3Q8Z5N7W2X4Y6R9T1V3C5';
const String _manifest = '01JBK3Q8Z5N7W2X4Y6R9T1V3M1';

Map<String, Object?> _place(String name, String region, String precision) => <String, Object?>{
  'name': name,
  'regionCode': region,
  'precision': precision,
  'confidence': 0.86,
};

Map<String, Object?> _claim(
  String id,
  String type,
  String family,
  String restatement,
  String status,
  String grade, {
  required num confidence,
  required int support,
  required int groups,
  String? framing,
  num? framingScore,
  Map<String, Object?>? reputation,
  String polarity = 'asserted',
  bool hedged = false,
  String extraction = 'llm',
}) => <String, Object?>{
  'id': id,
  'ref': 'claim:$id',
  'narrativeId': _narrative,
  'type': type,
  'signalFamily': family,
  'polarity': polarity,
  'hedged': hedged,
  'place': _place('Port of Odesa', 'UA', 'locality'),
  'entityRefs': <String>['entity:01JBK3Q8Z5N7W2X4Y6R9T1E001'],
  'eventTime': <String, Object?>{'from': '2026-10-22T06:10:00Z', 'precision': 'hour'},
  'supportCount': support,
  'evidenceGroupCount': groups,
  'firstObservedAt': '2026-10-22T06:24:00Z',
  'extraction': extraction,
  'manifestId': _manifest,
  'confidence': confidence,
  'status': status,
  'sourceReliability': grade.substring(0, 1),
  'informationCredibility': int.parse(grade.substring(1)),
  'grade': grade,
  'restatement': restatement,
  'framingScore': ?framingScore,
  'framingLabel': ?framing,
  'reputation': ?reputation,
};

Map<String, Object?> _summary(int n, num median, num p25, num p75) => <String, Object?>{
  'n': n,
  'median': median,
  'p25': p25,
  'p75': p75,
};

Map<String, Object?> _key(
  int id,
  String entityId,
  String type,
  String value,
  String role,
  String origin,
) => <String, Object?>{
  'id': id,
  'entityId': entityId,
  'keyType': type,
  'keyValue': value,
  'role': role,
  'confidence': role == 'ANCHOR' ? 1.0 : 0.6,
  'origin': origin,
  'validFrom': '2025-03-01T00:00:00Z',
  'retracted': false,
};

/// The preview's mutable vetting state.
class PreviewVetting {
  /// SocialSettings as stored.
  Map<String, Object?> settings = <String, Object?>{
    'languages': <String>['en', 'uk', 'ru'],
    'minRegionBaseline': 20,
    'velocity': <String, Object?>{'minRatio': 5, 'minUniqueAuthors': 20, 'dedupHours': 6},
    'llmClaimMinPosts': 50,
    'llmClaimMinEvidenceGroups': 5,
    'keepMedia': false,
    'cues': <String, Object?>{'enabled': true, 'maxPerDay': 20, 'maxCostUsdPerCue': 2},
  };

  /// SocialPlatform objects, by wire id.
  final Map<String, Map<String, Object?>> platforms = <String, Map<String, Object?>>{
    'bluesky-jetstream': <String, Object?>{
      'id': 'bluesky-jetstream',
      'network': 'bluesky',
      'name': 'Bluesky Jetstream',
      'state': 'enabled',
      'type': 'stream',
      'paths': <Object?>[
        <String, Object?>{
          'path': 'stream',
          'collectionType': 'complete',
          'enabled': true,
          'feedsBaselines': true,
        },
        <String, Object?>{
          'path': 'replay',
          'collectionType': 'complete',
          'enabled': true,
          'feedsBaselines': false,
        },
      ],
      'credentials': <String, Object?>{'required': false, 'configured': false},
      'stream': <String, Object?>{'lagSeconds': 2.4, 'connectedSince': '2026-10-21T22:00:00Z'},
      'deletionSync': <String, Object?>{
        'enabled': true,
        'lastRunAt': '2026-10-22T12:00:00Z',
        'tombstonedLast30d': 412,
      },
      'terms': <String, Object?>{
        'summary': 'Public firehose; honor deletions.',
        'url': 'https://docs.bsky.app/',
      },
      'settings': <String, Object?>{
        'enabled': true,
        'deletionSync': true,
        'postRetention': 'P30D',
        'options': <String, Object?>{'replay': true},
      },
    },
    'reddit': <String, Object?>{
      'id': 'reddit',
      'network': 'reddit',
      'name': 'Reddit',
      'state': 'degraded',
      'stateReason': 'Rate limited at 15:20 UTC; backing off.',
      'type': 'poll',
      'paths': <Object?>[
        <String, Object?>{
          'path': 'channel-poll',
          'collectionType': 'paged',
          'enabled': true,
          'feedsBaselines': true,
        },
        <String, Object?>{
          'path': 'search',
          'collectionType': 'sampled',
          'enabled': true,
          'feedsBaselines': false,
        },
      ],
      'credentials': <String, Object?>{'required': true, 'configured': true},
      'quotas': <Object?>[
        <String, Object?>{
          'unit': 'requests',
          'limit': 100,
          'window': 'PT1M',
          'rolling': true,
          'used': 100,
        },
      ],
      'settings': <String, Object?>{
        'enabled': true,
        'channels': <String>['worldnews', 'ukraine'],
        'options': <String, Object?>{'comments': true},
      },
    },
    'x': <String, Object?>{
      'id': 'x',
      'network': 'x',
      'name': 'X',
      'state': 'credentials-required',
      'stateReason': 'No bearer token is set.',
      'type': 'paid',
      'mode': 'counts',
      'paths': <Object?>[
        <String, Object?>{
          'path': 'counts',
          'collectionType': 'complete',
          'enabled': false,
          'feedsBaselines': true,
        },
        <String, Object?>{
          'path': 'search',
          'collectionType': 'sampled',
          'enabled': false,
          'feedsBaselines': false,
        },
      ],
      'credentials': <String, Object?>{
        'required': true,
        'configured': false,
        'fields': <String>['bearerToken'],
      },
      'spend': <String, Object?>{'currency': 'USD', 'spentThisMonth': 0, 'monthlyCapUsd': 50},
      'terms': <String, Object?>{'costs': 'Pay per request; counts are cheapest.'},
      'settings': <String, Object?>{'enabled': false, 'mode': 'counts', 'monthlyCapUsd': 50},
    },
  };

  /// Entity objects, by id.
  final Map<String, Map<String, Object?>> entities = <String, Map<String, Object?>>{
    '01JBK3Q8Z5N7W2X4Y6R9T1E001': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1E001',
      'type': 'organization',
      'displayName': 'Black Sea Shipping Holdings Ltd',
      'provisional': false,
      'status': 'ACTIVE',
      'keys': <Object?>[
        _key(11, '01JBK3Q8Z5N7W2X4Y6R9T1E001', 'lei', '5493001KJTIIGC8Y1R12', 'ANCHOR', 'REGISTRY'),
        _key(
          12,
          '01JBK3Q8Z5N7W2X4Y6R9T1E001',
          'company-number',
          'CY:HE412233',
          'ANCHOR',
          'REGISTRY',
        ),
      ],
      'aliases': <Object?>[
        <String, Object?>{
          'id': 1,
          'alias': 'BSSH',
          'aliasType': 'NAME',
          'validFrom': '2025-03-01T00:00:00Z',
          'origin': 'REGISTRY',
        },
      ],
      'attributes': <String, Object?>{'jurisdiction': 'CY'},
      'openLinkCounts': <String, Object?>{'gleif': 1, 'opencorporates': 2},
      'createdAt': '2025-03-01T00:00:00Z',
      'updatedAt': '2026-10-20T09:00:00Z',
    },
    '01JBK3Q8Z5N7W2X4Y6R9T1E002': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1E002',
      'type': 'vessel',
      'displayName': 'MV Azov Star',
      'provisional': false,
      'status': 'ACTIVE',
      'keys': <Object?>[
        _key(21, '01JBK3Q8Z5N7W2X4Y6R9T1E002', 'imo', '9387421', 'ANCHOR', 'REGISTRY'),
        _key(22, '01JBK3Q8Z5N7W2X4Y6R9T1E002', 'mmsi', '271044590', 'WEAK', 'OBSERVED'),
      ],
      'aliases': <Object?>[
        <String, Object?>{
          'id': 2,
          'alias': 'Azov Star',
          'aliasType': 'NAME',
          'validFrom': '2025-03-01T00:00:00Z',
          'origin': 'OBSERVED',
        },
        <String, Object?>{
          'id': 3,
          'alias': 'Sea Falcon',
          'aliasType': 'FORMER_NAME',
          'validFrom': '2019-01-01T00:00:00Z',
          'validTo': '2025-02-28T00:00:00Z',
          'origin': 'REGISTRY',
        },
      ],
      'openLinkCounts': <String, Object?>{'ais': 3},
      'createdAt': '2025-03-01T00:00:00Z',
      'updatedAt': '2026-10-22T08:00:00Z',
    },
    '01JBK3Q8Z5N7W2X4Y6R9T1E003': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1E003',
      'type': 'person',
      'displayName': 'Andreas Kyriakou',
      'provisional': true,
      'status': 'ACTIVE',
      'keys': <Object?>[
        _key(
          31,
          '01JBK3Q8Z5N7W2X4Y6R9T1E003',
          'person-key',
          'kyriakou|1971|cy',
          'WEAK',
          'CO_ASSERTED',
        ),
      ],
      'createdAt': '2026-09-01T00:00:00Z',
      'updatedAt': '2026-09-01T00:00:00Z',
    },
  };

  int _nextKey = 100;
}

final List<Map<String, Object?>> _claims = <Map<String, Object?>>[
  _claim(
    '01JBK3Q8Z5N7W2X4Y6R9T1CL01',
    'port-closure',
    'maritime',
    'The Port of Odesa stopped accepting vessel arrivals on the morning of 22 October.',
    'corroborated',
    'B2',
    confidence: 0.82,
    support: 212,
    groups: 9,
    framing: 'charged',
    framingScore: 0.41,
    reputation: <String, Object?>{
      'outletId': 'kyivpost.com',
      'factuality': 'high',
      'lean': 'center',
      'stateAffiliated': false,
    },
  ),
  _claim(
    '01JBK3Q8Z5N7W2X4Y6R9T1CL02',
    'explosion',
    'thermal',
    'An explosion occurred near the grain terminal.',
    'pending',
    'C3',
    confidence: 0.55,
    support: 64,
    groups: 4,
    framing: 'inflammatory',
    framingScore: 0.78,
    hedged: true,
  ),
  _claim(
    '01JBK3Q8Z5N7W2X4Y6R9T1CL03',
    'vessel-seizure',
    'maritime',
    'A bulk carrier was boarded off Snake Island.',
    'unobserved',
    'D4',
    confidence: 0.31,
    support: 18,
    groups: 2,
    reputation: <String, Object?>{
      'outletId': 'rt.com',
      'factuality': 'low',
      'lean': 'right',
      'stateAffiliated': true,
    },
    extraction: 'deterministic',
  ),
  _claim(
    '01JBK3Q8Z5N7W2X4Y6R9T1CL04',
    'power-outage',
    'grid',
    'Power was cut across the southern districts.',
    'contradicted',
    'C3',
    confidence: 0.22,
    support: 40,
    groups: 3,
    framing: 'neutral',
    framingScore: 0.08,
    polarity: 'questioned',
  ),
];

Map<String, Object?> _comparison(String claimId, String status, num? lead) => <String, Object?>{
  'id': '01JBK3Q8Z5N7W2X4Y6R9T1CM${claimId.substring(claimId.length - 2)}',
  'ref': 'comparison:$claimId',
  'claimId': claimId,
  'narrativeId': _narrative,
  'signalFamily': 'maritime',
  'place': _place('Port of Odesa', 'UA', 'locality'),
  'window': <String, Object?>{'start': '2026-10-22T00:10:00Z', 'end': '2026-10-23T06:10:00Z'},
  'status': status,
  'physicalEvidence': <Object?>[
    if (status == 'corroborated')
      <String, Object?>{
        'ref': 'record:ais/odesa-arrivals/88412',
        'family': 'maritime',
        'originator': 'ais',
        'firstObservedAt': '2026-10-22T08:40:00Z',
        'distanceKm': 2.1,
      },
    if (status == 'contradicted')
      <String, Object?>{
        'ref': 'record:entsoe/ua-load/552',
        'family': 'grid',
        'originator': 'entsoe',
        'firstObservedAt': '2026-10-22T07:00:00Z',
        'negates': true,
      },
  ],
  'detectability': <String, Object?>{
    'p': status == 'unobserved' ? 0.42 : 0.91,
    'lo': 0.3,
    'hi': 0.97,
    'methods': <String>['coverage'],
    'ok': status != 'unobserved',
    'reason': status == 'unobserved' ? 'Sparse AIS coverage offshore.' : null,
  },
  'leadTimes': <String, Object?>{
    'socialFirst': '2026-10-22T06:24:00Z',
    'leadOverPhysicalSeconds': ?lead,
    'leadOverNewsSeconds': lead == null ? null : lead + 1800,
  },
  if (status == 'contradicted')
    'contradiction': <String, Object?>{
      'reason': 'negating-record',
      'ref': 'record:entsoe/ua-load/552',
    },
  'foundBy': 'organic',
  'revision': 2,
  'comparator': <String, Object?>{'name': 'social-compare', 'version': '1.4'},
  'manifestId': _manifest,
  'evaluatedAt': '2026-10-22T14:00:00Z',
};

final List<Map<String, Object?>> _comparisons = <Map<String, Object?>>[
  _comparison('01JBK3Q8Z5N7W2X4Y6R9T1CL01', 'corroborated', 8160),
  _comparison('01JBK3Q8Z5N7W2X4Y6R9T1CL03', 'unobserved', null),
  _comparison('01JBK3Q8Z5N7W2X4Y6R9T1CL04', 'contradicted', -2100),
];

final Map<String, Object?> _narratives = <String, Object?>{
  'items': <Object?>[
    <String, Object?>{
      'id': _narrative,
      'ref': 'narrative:$_narrative',
      'title': 'Odesa port closure',
      'canonicalEventId': '01JBK3Q8Z5N7W2X4Y6R9T1EV01',
      'platforms': <Object?>[
        <String, Object?>{
          'platform': 'bluesky',
          'posts': 640,
          'uniqueAuthors': 402,
          'firstObservedAt': '2026-10-22T06:24:00Z',
          'earliestPostRef': 'post:bluesky/3l6',
        },
        <String, Object?>{
          'platform': 'reddit',
          'posts': 112,
          'uniqueAuthors': 90,
          'firstObservedAt': '2026-10-22T07:02:00Z',
          'earliestPostRef': 'post:reddit/1g9',
        },
      ],
      'firstObservedAt': '2026-10-22T06:24:00Z',
      'lastActivityAt': '2026-10-22T15:58:00Z',
      'postCount': 752,
      'uniqueAuthors': 492,
      'evidenceGroupCount': 14,
      'originConcentration': 0.18,
      'status': 'corroborated',
      'state': 'active',
      'tlp': 'CLEAR',
    },
    <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1N002',
      'ref': 'narrative:01JBK3Q8Z5N7W2X4Y6R9T1N002',
      'title': 'Grain terminal explosion',
      'canonicalEventId': '01JBK3Q8Z5N7W2X4Y6R9T1EV02',
      'platforms': <Object?>[
        <String, Object?>{
          'platform': 'bluesky',
          'posts': 88,
          'uniqueAuthors': 21,
          'firstObservedAt': '2026-10-22T11:40:00Z',
          'earliestPostRef': 'post:bluesky/3l9',
        },
      ],
      'firstObservedAt': '2026-10-22T11:40:00Z',
      'lastActivityAt': '2026-10-22T14:10:00Z',
      'postCount': 88,
      'uniqueAuthors': 21,
      'evidenceGroupCount': 3,
      'originConcentration': 0.71,
      'status': 'mixed',
      'state': 'emerging',
      'coordinationIndicatorsPresent': true,
      'tlp': 'CLEAR',
    },
  ],
  'nextCursor': null,
};

final Map<String, Object?> _cues = <String, Object?>{
  'items': <Object?>[
    <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1CU01',
      'trigger': <String, Object?>{'type': 'situation-escalated', 'ref': 'situation:black-sea'},
      'backend': 'platform-apis',
      'queries': <Object?>[
        <String, Object?>{'platform': 'bluesky-search', 'query': 'odesa port'},
        <String, Object?>{'platform': 'reddit', 'query': 'odesa harbor closed'},
      ],
      'platforms': <String>['bluesky-search', 'reddit'],
      'window': <String, Object?>{'start': '2026-10-22T00:00:00Z'},
      'status': 'done',
      'results': <Object?>[
        <String, Object?>{'platform': 'bluesky-search', 'posts': 140},
        <String, Object?>{'platform': 'reddit', 'posts': 32},
      ],
      'narrativeIds': <String>[_narrative],
      'costUsd': 0,
      'createdBy': 'cue-engine',
      'createdAt': '2026-10-22T09:00:00Z',
    },
    <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1CU02',
      'trigger': <String, Object?>{'type': 'manual'},
      'backend': 'xai-x-search',
      'queries': <Object?>[
        <String, Object?>{'platform': 'x', 'query': 'snake island boarding'},
      ],
      'platforms': <String>['x'],
      'window': <String, Object?>{'start': '2026-10-22T00:00:00Z'},
      'status': 'budget-refused',
      'statusReason': 'The cue would exceed the \$2.00 cap.',
      'results': <Object?>[],
      'narrativeIds': <String>[],
      'costUsd': 0,
      'createdBy': 'admin',
      'createdAt': '2026-10-22T13:30:00Z',
    },
  ],
  'nextCursor': null,
};

final Map<String, Object?> _leadTimes = <String, Object?>{
  'generatedAt': '2026-10-22T16:00:00Z',
  'trainingCutoff': '2026-06-30T00:00:00Z',
  'groups': <Object?>[
    <String, Object?>{
      'claimType': 'port-closure',
      'platform': 'bluesky',
      'foundBy': 'organic',
      'comparisons': 41,
      'outOfSample': 12,
      'overPhysical': _summary(33, 5400, 1800, 9600),
      'overNews': _summary(38, 7800, 3600, 12600),
      'overOfficial': _summary(20, 14400, 7200, 21600),
    },
    <String, Object?>{
      'claimType': 'explosion',
      'platform': 'reddit',
      'regionCode': 'UA',
      'foundBy': 'cue',
      'comparisons': 9,
      'outOfSample': 4,
      'overPhysical': _summary(7, -900, -2700, 600),
      'overNews': _summary(9, 1200, 300, 2400),
      'overOfficial': <String, Object?>{'n': 0},
    },
  ],
  'caveats': <Object?>[
    <String, Object?>{
      'code': 'SMALL_SAMPLE',
      'text': 'Groups with fewer than 10 comparisons are indicative only.',
    },
  ],
};

Map<String, Object?> _envelope(String ref, String type, String title) => <String, Object?>{
  'ref': ref,
  'type': type,
  'title': title,
};

Map<String, Object?> _relation(
  String id,
  String from,
  String to,
  String type,
  num confidence,
  String label,
) => <String, Object?>{
  'id': id,
  'fromRef': from,
  'toRef': to,
  'type': type,
  'validFrom': '2025-03-01T00:00:00Z',
  'confidence': confidence,
  'label': label,
  'provenance': <String, Object?>{},
  'projected': false,
  'createdAt': '2025-03-01T00:00:00Z',
};

const String _holding = 'entity:01JBK3Q8Z5N7W2X4Y6R9T1E001';
const String _vessel = 'entity:01JBK3Q8Z5N7W2X4Y6R9T1E002';
const String _person = 'entity:01JBK3Q8Z5N7W2X4Y6R9T1E003';
const String _parent = 'entity:01JBK3Q8Z5N7W2X4Y6R9T1E004';

String _title(String ref) => switch (ref) {
  _holding => 'Black Sea Shipping Holdings Ltd',
  _vessel => 'MV Azov Star',
  _person => 'Andreas Kyriakou',
  _ => 'Meridian Maritime Trust',
};

Map<String, Object?> _chainFor(List<String> refs) {
  final seed = refs.first;
  Map<String, Object?> node(String ref, String label, List<String> hops, List<String> types) =>
      <String, Object?>{
        'node': _envelope(ref, 'organization', _title(ref)),
        'reachedFrom': <String>[seed],
        'weakestEdgeLabel': label,
        'paths': <Object?>[
          <String, Object?>{
            'from': seed,
            'hops': hops,
            'relationTypes': types,
            'weakestEdgeLabel': label,
          },
        ],
      };
  return <String, Object?>{
    'refs': refs,
    'direction': 'both',
    'generatedAt': '2026-10-22T16:00:00Z',
    'chains': <Object?>[
      if (seed != _holding) node(_holding, 'confirmed', <String>[_holding], <String>['owns']),
      node(
        _parent,
        'likely',
        <String>[if (seed != _holding) _holding, _parent],
        <String>['owns', 'controls'],
      ),
      node(
        _person,
        'possible',
        <String>[if (seed != _holding) _holding, _person],
        <String>['owns', 'officer-of'],
      ),
    ],
    'shared': <Object?>[
      if (refs.length > 1) node(_parent, 'likely', <String>[_parent], <String>['controls']),
    ],
  };
}

final Map<String, Object?> _graph = <String, Object?>{
  'nodes': <Object?>[
    _envelope(_holding, 'entity', _title(_holding)),
    _envelope(_vessel, 'entity', _title(_vessel)),
    _envelope(_person, 'entity', _title(_person)),
    _envelope(_parent, 'entity', _title(_parent)),
  ],
  'edges': <Object?>[
    _relation('01JBK3Q8Z5N7W2X4Y6R9T1R001', _holding, _vessel, 'owns', 0.97, 'confirmed'),
    _relation('01JBK3Q8Z5N7W2X4Y6R9T1R002', _parent, _holding, 'controls', 0.74, 'likely'),
    _relation('01JBK3Q8Z5N7W2X4Y6R9T1R003', _person, _holding, 'officer-of', 0.55, 'possible'),
  ],
  'truncated': false,
};

Map<String, Object?> _records(String entityId, bool closed) => <String, Object?>{
  'entityId': entityId,
  'items': <Object?>[
    <String, Object?>{
      'record': <String, Object?>{
        'id': 'ais:271044590',
        'source': 'ais',
        'externalId': '271044590',
        'kind': 'vessel.position',
        'version': 1,
        'seq': 88412,
        'observedAt': '2026-10-22T15:40:00Z',
        'payload': <String, Object?>{},
        'title': 'AZOV STAR at 46.49N 30.74E',
      },
      'link': <String, Object?>{
        'sourceId': 'ais',
        'externalId': '271044590',
        'keyType': 'mmsi',
        'keyValue': '271044590',
        'confidence': 0.6,
        'validFrom': '2025-03-01T00:00:00Z',
      },
    },
    if (closed)
      <String, Object?>{
        'record': <String, Object?>{
          'id': 'ais:271000001',
          'source': 'ais',
          'externalId': '271000001',
          'kind': 'vessel.position',
          'version': 1,
          'seq': 1022,
          'observedAt': '2025-02-20T10:00:00Z',
          'payload': <String, Object?>{},
          'title': 'SEA FALCON at 41.0N 29.0E',
        },
        'link': <String, Object?>{
          'sourceId': 'ais',
          'externalId': '271000001',
          'keyType': 'mmsi',
          'keyValue': '271000001',
          'confidence': 0.6,
          'validFrom': '2019-01-01T00:00:00Z',
          'validTo': '2025-02-28T00:00:00Z',
        },
      },
  ],
};

/// Answers a vetting request, or `null` when [path] is not one of these.
VettingReply? answerVetting(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewVetting v,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = path.split('/');
  const notFound = (
    status: 404,
    body: <String, Object?>{'title': 'Not found', 'status': 404, 'code': 'NOT_FOUND'},
  );
  if (path == '/v1/settings/social') {
    if (method == 'PUT') {
      v.settings = input;
    }
    return (status: 200, body: v.settings);
  }
  if (path == '/v1/social/platforms' && method == 'GET') {
    return (status: 200, body: v.platforms.values.toList());
  }
  if (parts.length == 5 && path.startsWith('/v1/social/platforms/')) {
    final p = v.platforms[parts[4]];
    if (p == null) {
      return notFound;
    }
    if (method == 'PUT') {
      p['settings'] = input;
    }
    return (status: 200, body: p);
  }
  if (path == '/v1/social/claims') {
    final statuses = query['status'] ?? const <String>[];
    final type = query['type']?.first;
    return (
      status: 200,
      body: <String, Object?>{
        'items': <Object?>[
          for (final c in _claims)
            if ((statuses.isEmpty || statuses.contains(c['status'])) &&
                (type == null || c['type'] == type))
              c,
        ],
        'nextCursor': null,
      },
    );
  }
  if (parts.length == 5 && path.startsWith('/v1/social/claims/')) {
    return _claims
            .where((c) => c['id'] == parts[4])
            .map((c) => (status: 200, body: c as Object?))
            .firstOrNull ??
        notFound;
  }
  if (path == '/v1/social/narratives') {
    return (status: 200, body: _narratives);
  }
  if (path == '/v1/social/cues' && method == 'GET') {
    return (status: 200, body: _cues);
  }
  if (path == '/v1/social/lead-times') {
    return (status: 200, body: _leadTimes);
  }
  if (path == '/v1/social/comparisons') {
    final claimId = query['claimId']?.first;
    return (
      status: 200,
      body: <String, Object?>{
        'items': <Object?>[
          for (final c in _comparisons)
            if (claimId == null || c['claimId'] == claimId) c,
        ],
        'nextCursor': null,
      },
    );
  }
  if (path == '/v1/media/ratings/import' && method == 'POST') {
    final text = body is String ? body : '';
    final lines = text
        .split('\n')
        .map((l) => l.trim())
        .where((l) => l.contains(',') && !l.startsWith('domain,') && !l.startsWith('Content-'))
        .toList();
    final bad = <int>[
      for (var i = 0; i < lines.length; i++)
        if (lines[i].split(',').length < 5) i + 2,
    ];
    return (
      status: 200,
      body: <String, Object?>{
        'provider': 'operator',
        'imported': lines.length - bad.length,
        'updated': 0,
        'rejected': bad.length,
        'outletsCreated': lines.length - bad.length,
        'errors': <Object?>[
          for (final row in bad) <String, Object?>{'row': row, 'message': 'Too few columns.'},
        ],
        'importedAt': '2026-10-22T16:30:00Z',
      },
    );
  }
  if (path == '/v1/graph/ownership-chain' && method == 'POST') {
    final refs = (input['refs'] as List<Object?>? ?? const <Object?>[]).cast<String>();
    return (status: 200, body: _chainFor(refs.isEmpty ? <String>[_vessel] : refs));
  }
  if (path == '/v1/graph' && method == 'POST') {
    return (status: 200, body: _graph);
  }
  if (path == '/v1/entities' && method == 'GET') {
    final q = query['q']?.first.toLowerCase();
    final key = query['key']?.first;
    final type = query['type']?.first;
    bool matches(Map<String, Object?> e) {
      if (type != null && e['type'] != type) {
        return false;
      }
      if (key != null) {
        return (e['keys']! as List<Object?>).cast<Map<String, Object?>>().any(
          (k) => '${k['keyType']}:${k['keyValue']}' == key && k['retracted'] != true,
        );
      }
      return q == null || (e['displayName'] as String? ?? '').toLowerCase().startsWith(q);
    }

    return (
      status: 200,
      body: <String, Object?>{
        'items': <Object?>[
          for (final e in v.entities.values)
            if (e['status'] == 'ACTIVE' && matches(e)) e,
        ],
      },
    );
  }
  if (path == '/v1/entities/resolve' && method == 'GET') {
    final key = query['key']?.first;
    for (final e in v.entities.values) {
      final keys = (e['keys'] as List<Object?>? ?? <Object?>[]).cast<Map<String, Object?>>();
      if (e['status'] == 'ACTIVE' &&
          keys.any((k) => '${k['keyType']}:${k['keyValue']}' == key && k['retracted'] != true)) {
        return (status: 200, body: e);
      }
    }
    return (status: 404, body: _problem(404, 'Entity not found', 'ENTITY_NOT_FOUND'));
  }
  if (parts.length >= 4 && parts[1] == 'v1' && parts[2] == 'entities') {
    var e = v.entities[parts[3]];
    if (e == null) {
      return (status: 404, body: _problem(404, 'Entity not found', 'ENTITY_NOT_FOUND'));
    }
    if (e['mergedInto'] case final String into) {
      e = v.entities[into]!;
    }
    final id = e['id']! as String;
    final keys = (e['keys'] as List<Object?>? ?? <Object?>[]).cast<Map<String, Object?>>();
    if (parts.length == 4 && method == 'GET') {
      return (status: 200, body: e);
    }
    if (parts.length == 5 && parts[4] == 'records') {
      return (status: 200, body: _records(id, query['includeClosed']?.first == 'true'));
    }
    if (parts.length == 5 && parts[4] == 'keys' && method == 'POST') {
      final type = input['keyType']! as String;
      final value = input['keyValue']! as String;
      for (final other in v.entities.values) {
        final otherKeys = (other['keys'] as List<Object?>? ?? <Object?>[])
            .cast<Map<String, Object?>>();
        final held = otherKeys.where(
          (k) => k['keyType'] == type && k['keyValue'] == value && k['retracted'] != true,
        );
        if (other['id'] != id && held.isNotEmpty) {
          if (input['force'] != true) {
            return (
              status: 409,
              body: _problem(
                409,
                'Key conflict',
                'ENTITY_KEY_CONFLICT',
                'The key is open on ${other['id']}.',
              ),
            );
          }
          for (final k in held) {
            k
              ..['retracted'] = true
              ..['validTo'] = '2026-10-22T16:30:00Z';
          }
        }
      }
      final added = _key(v._nextKey++, id, type, value, 'ANCHOR', 'OPERATOR')
        ..['confidence'] = input['confidence'] ?? 1.0;
      e['keys'] = <Object?>[...keys, added];
      return (status: 201, body: added);
    }
    if (parts.length == 6 && parts[4] == 'keys' && method == 'DELETE') {
      final k = keys.where((k) => '${k['id']}' == parts[5]).firstOrNull;
      if (k == null) {
        return notFound;
      }
      k
        ..['retracted'] = true
        ..['validTo'] = '2026-10-22T16:30:00Z';
      return (status: 200, body: k);
    }
    if (parts.length == 5 && parts[4] == 'merge' && method == 'POST') {
      final other = v.entities[input['otherId']];
      if (other == null) {
        return (status: 404, body: _problem(404, 'Entity not found', 'ENTITY_NOT_FOUND'));
      }
      other
        ..['status'] = 'MERGED'
        ..['mergedInto'] = id;
      e['keys'] = <Object?>[...keys, ...(other['keys'] as List<Object?>? ?? <Object?>[])];
      e['aliases'] = <Object?>[
        ...(e['aliases'] as List<Object?>? ?? <Object?>[]),
        ...(other['aliases'] as List<Object?>? ?? <Object?>[]),
      ];
      return (status: 200, body: e);
    }
  }
  return null;
}
