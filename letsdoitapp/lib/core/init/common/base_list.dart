
import 'package:LetsDoIt/core/init/common/binary_search.dart';

class BaseList<T> extends BinarySearch with ObjectComparator {
  List<T> items = [];
  List<T> get getItems => items;
  int get getCount => items.length;
  bool sorted = false;

  BaseList();
  BaseList.withItems(items) {
    this.items = items;
  }

  addItem(T item) {
    items.add(item);
  }

  removeItem(int index) {
    items.removeAt(index);
  }

  /*
     * Finds item index
     *
     * @param AVal
     * @return
     */
  int findIndex(val) {
    int res;
    if (sorted) {
      res = BinarySearch.searchIndex(items, this, val);
    } else {
      int i; 
      for (i = items.length - 1; i >= 0; --i) {
    
        if (compare(items[i], val) == 0) return i;
      }
      res = -1;
    }
    return res;
  }

  _removebyIndex(int index) {
    items.removeAt(index);
  }

  /*
     * Removes item from array
     *
     * @param AItem
     */
  _removeByItem(T item) {
    int index = findIndex(item);
    if (index >= 0) items.remove(index);
  }

  remove({int? index, required T item}) {
    if (item != null)
      _removeByItem(item);
    else
      _removebyIndex(index!);
  }

  int findFirst(val) {
    int index, i;
    index = BinarySearch.searchIndex(items, this, val);
    if (index < 0) return -1;
    for (i = index - 1; i >= 0; --i) {
      if (compare(items[i], val) != 0) break;
    }
    return i + 1;
  }

  int findLast(val) {
    int index, i, cnt;
    index = BinarySearch.searchIndex(items, this, val);
    if (index < 0) return -1;
    cnt = items.length;
    for (i = index + 1; i < cnt; ++i) {
      if (compare(items[i], val) != 0) break;
    }
    return i - 1;
  }

  findRange(List array, val) {
    int index, i, cnt;
    index = BinarySearch.searchIndex(items, this, val);
    if (index < 0) {
      array[0] = -1;
      array[1] = -1;
    } else {
      for (i = index - 1; i >= 0; --i) {
        if (compare(items[i], val) != 0) break;
      }
      array[0] = i + 1;
      cnt = items.length;
      for (i = index + 1; i < cnt; ++i) {
        if (compare(items[i], val) != 0) break;
      }
      array[1] = i;
    }
  }

  List<T> findMultiItems(val) {
    int i;
    List<T> res = [];
    if (sorted) {
      List<int> array = [];
      findRange(array, val);
      for (i = array[0]; i < array[1]; ++i) res.add(items[i]);
    } else {
      int cnt = items.length;
      for (i = 0; i < cnt; ++i) {
        if (compare(items[i], val) == 0) res.add(items[i]);
      }
    }
    return res;
  }

  addAll(List<T> items) {
    this.items.addAll(items);
  }

  sort() {
    items.sort(this.fullCompare);
    sorted = true;
  }

  @override
  int compare(object, value) {
    return -1;
  }

  @override
  int fullCompare(object, value) {
    return  -1;
  }
}
