spec = Gem::Specification.new do |s|
  s.name = "activerecord-sqlserver-adapter"
  s.summary = 'SQL Server adapter for Active Record'
  s.version = "1.1.0"

  s.add_dependency 'activerecord', '>= 1.15.5.7843'
  s.require_path = 'lib'

  s.files = %w(lib/active_record/connection_adapters/sqlserver_adapter.rb)

  s.author = 'Tom Ward'
  s.email = 'tom@popdog.net'
  s.homepage = 'http://wiki.rubyonrails.org/rails/pages/SQL+Server'
  s.rubyforge_project = 'activerecord'
end
