if Rails.env.development?
  Refile.backends['store'] = Refile::Backend::FileSystem.new('/tmp/uploads/')
end
