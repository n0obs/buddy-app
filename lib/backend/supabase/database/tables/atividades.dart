import '../database.dart';

class AtividadesTable extends SupabaseTable<AtividadesRow> {
  @override
  String get tableName => 'atividades';

  @override
  AtividadesRow createRow(Map<String, dynamic> data) => AtividadesRow(data);
}

class AtividadesRow extends SupabaseDataRow {
  AtividadesRow(super.data);

  @override
  SupabaseTable get table => AtividadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get textcompleted => getField<String>('textcompleted');
  set textcompleted(String? value) => setField<String>('textcompleted', value);

  String? get imgUrl => getField<String>('img_url');
  set imgUrl(String? value) => setField<String>('img_url', value);

  String? get imgUrlArtigo => getField<String>('img_url_artigo');
  set imgUrlArtigo(String? value) => setField<String>('img_url_artigo', value);
}
