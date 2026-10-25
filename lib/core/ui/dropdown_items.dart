import 'package:flutter/material.dart';

/// [items], plus one for [current] when no item holds it, labeled as the
/// value itself.
///
/// A dropdown asserts that its value is null or exactly one item's value,
/// so a value a newer server sends that the app's list does not know would
/// fail the whole form. With this it stays shown and selected, as sent, and
/// the other choices still work.
List<DropdownMenuItem<T>> withCurrentItem<T>(List<DropdownMenuItem<T>> items, T? current) {
  if (current == null || items.any((i) => i.value == current)) {
    return items;
  }
  return <DropdownMenuItem<T>>[
    ...items,
    DropdownMenuItem<T>(
      key: const Key('dropdown.unlisted'),
      value: current,
      child: Text('$current', overflow: TextOverflow.ellipsis),
    ),
  ];
}
