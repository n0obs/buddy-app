import '../database.dart';

class AgendaTable extends SupabaseTable<AgendaRow> {
  @override
  String get tableName => 'agenda';

  @override
  AgendaRow createRow(Map<String, dynamic> data) => AgendaRow(data);
}

class AgendaRow extends SupabaseDataRow {
  AgendaRow(super.data);

  @override
  SupabaseTable get table => AgendaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
