extension ExtendedList on List {
  T indexOrNull<T>(int index) => index + 1 <= this.length ? this[index] : null;
  T firstOrNull<T>() => this.isEmpty ? null : this.first;
  T lastOrNull<T>() => this.isEmpty ? null : this.last;
}

extension ExtendedIterable on Iterable {
  T indexOrNull<T>(int index) =>
      index + 1 <= this.length ? toList()[index] : null;
  T firstOrNull<T>() => this.isEmpty ? null : this.first;
  T lastOrNull<T>() => this.isEmpty ? null : this.last;
}
