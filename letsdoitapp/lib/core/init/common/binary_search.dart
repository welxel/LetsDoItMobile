class BinarySearch {
  /* 
     * Binary search from ArrayList
     *
     * @param AList
     * @param AComparator
     * @param AValue
     * @param <T>
     * @return If found index of item. Otherwise negative index (use ~ operator to find correct position to insert)
     */
  static int searchIndex<T>(
      List<T> list, ObjectComparator<T> comparator, value) {
    int r, n, n1 = 0, n2 = list.length;
    T middle;
    while (n1 < n2) {
      n = (n1 + n2) >> 1;
      middle = list[n];
      r = comparator.compare(middle, value);
      if (r > 0)
        n2 = n;
      else if (r < 0)
        n1 = n + 1;
      else
        return n;
    }
    return ~n1;
  }

  /*
     * Binary search from ArrayList
     *
     * @param AList
     * @param AComparator
     * @param AValue
     * @param <T>
     * @return If not found returns null
     */
  static search<T>(List<T> list, ObjectComparator<T> comparator, value) {
    int index = searchIndex(list, comparator, value);
    return index >= 0 ? list[index] : null;
  }
}

abstract class ObjectComparator<T> {
  int compare(T object, value);
  int fullCompare(T object, T object2);
}
