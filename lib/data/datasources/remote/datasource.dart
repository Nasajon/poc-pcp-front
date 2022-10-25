abstract class IDatasource<Model, ListModel> {
  Future<ListModel> getList();
  Future<Model> getItem(String id);
  Future<void> insertItem(Model item);
  Future<void> updateItem(String id, Model item);
}
