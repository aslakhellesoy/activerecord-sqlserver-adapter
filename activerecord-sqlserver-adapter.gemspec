spec = Gem::Specification.new do |s|
  s.name = "activerecord-sqlserver-adapter"
  s.summary = 'SQL Server adapter for Active Record'
  s.version = "1.1.1"

  s.add_dependency 'activerecord', '>= 1.15.5.7843'
  s.require_path = 'lib'

  s.files = ["activerecord-sqlserver-adapter.gemspec", "lib", "lib/active_record", "lib/active_record/connection_adapters", "lib/active_record/connection_adapters/sqlserver_adapter.rb", "lib/activerecord-sqlserver-adapter.rb", "lib/dbd", "lib/dbd/ADO.rb", "lib/dbi", "lib/dbi/columninfo.rb", "lib/dbi/row.rb", "lib/dbi/sql.rb", "lib/dbi/trace.rb", "lib/dbi/utils.rb", "lib/dbi/version.rb", "lib/dbi.rb", "lib/rails_fcgi", "lib/rails_fcgi/fixes.rb", "lib/rails_fcgi.rb", "Rakefile", "README", "RUNNING_UNIT_TESTS", "test", "test/aaaa_create_tables_test_sqlserver.rb", "test/affected_rows_test_sqlserver.rb", "test/connections", "test/connections/native_sqlserver", "test/connections/native_sqlserver/connection.rb", "test/connections/native_sqlserver_odbc", "test/connections/native_sqlserver_odbc/connection.rb", "test/fixtures", "test/fixtures/db_definitions", "test/fixtures/db_definitions/sqlserver.drop.sql", "test/fixtures/db_definitions/sqlserver.sql", "test/fixtures/db_definitions/sqlserver2.drop.sql", "test/fixtures/db_definitions/sqlserver2.sql"]

  s.author = 'Tom Ward'
  s.email = 'tom@popdog.net'
  s.homepage = 'http://wiki.rubyonrails.org/rails/pages/SQL+Server'
  s.rubyforge_project = 'activerecord'
end
