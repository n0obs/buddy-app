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
}
