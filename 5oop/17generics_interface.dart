abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key, String value);
}

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

//文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("文件缓存,key=$key value=$value");
  }
}

//文件缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("内存缓存,key=$key value=$value");
  }
}

void main(List<String> args) {
  FileCache fc = new FileCache<String>();
  fc.setByKey("foo", "bar"); //文件缓存,key=foo value=bar
  // fc.setByKey('f', 2);//wrong type 'int' is not a subtype of type 'String' of 'value'
  //文件缓存 缓存Map
  FileCache fc1 = new FileCache<Map>();
  fc1.setByKey("index",
      {"name": "章三", "age": 28}); //文件缓存,key=index value={name: 章三, age: 28}
  MemoryCache mc = new MemoryCache<String>();
  mc.setByKey("foo", "bar"); //内存缓存,key=foo value=bar

  //内存缓存 缓存集合
  MemoryCache mc1 = new MemoryCache<Set>();
  mc1.setByKey("home", {1, 2, 3}); //内存缓存,key=home value={1, 2, 3}
}
