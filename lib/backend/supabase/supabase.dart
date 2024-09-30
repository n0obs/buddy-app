import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://jlnnmrzdadkuogoueuni.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Impsbm5tcnpkYWRrdW9nb3VldW5pIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ4NDIzNzQsImV4cCI6MjA0MDQxODM3NH0.pHpi35pEAH6A42qsBy6CzuuCJbtKd_qr8LWqn6e0sBE';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );

  static Future<void> insertAgendaEvent({
    required String title,
    required DateTime startTime,
    required DateTime endTime,
    String? description,
    required String userId,
  }) async {
    await client.from('agenda').insert({
      'title': title,
      'start_time': startTime.toIso8601String(),
      'end_time': endTime.toIso8601String(),
      'description': description,
      'user_id': userId,
    });
  }
}
