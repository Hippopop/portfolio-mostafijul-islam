extension ListHelper<T> on List<T> {
  T? rotatedIndexedItem(int currentIndex) {
    if (isEmpty) return null;
    final maxIndex = length - 1;
    if (currentIndex <= maxIndex) return this[currentIndex];
    final value = currentIndex % length;
    return this[value];
  }
}
