abstract interface class BaseDao<T extends String, E extends Object> {
  Future<void> create({required E dto});
  Future<void> delete({required T id});
  Future<void> update({required E dto});
  Future<E?> read({required T id});
  Future<List<E>> readAll();
}
