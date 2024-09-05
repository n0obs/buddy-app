import '../database.dart';

class GuiaTable extends SupabaseTable<GuiaRow> {
  @override
  String get tableName => 'guia';

  @override
  GuiaRow createRow(Map<String, dynamic> data) => GuiaRow(data);
}

class GuiaRow extends SupabaseDataRow {
  GuiaRow(super.data);

  @override
  SupabaseTable get table => GuiaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get textcomplete => getField<String>('textcomplete');
  set textcomplete(String? value) => setField<String>('textcomplete', value);

  String? get subtitle => getField<String>('subtitle');
  set subtitle(String? value) => setField<String>('subtitle', value);

  String? get tempoartigo => getField<String>('tempo(artigo)');
  set tempoartigo(String? value) => setField<String>('tempo(artigo)', value);

  String? get imgUrl => getField<String>('img_url');
  set imgUrl(String? value) => setField<String>('img_url', value);
}
