project_path = File.join(File.dirname(__FILE__), '..')

if (defined? Compass)
  Compass::Frameworks.register(
    'sass-burger',
    :path => project_path,
    :stylesheets_directory => project_path
  )
else
  if ENV.has_key?('SASS_PATH')
    ENV['SASS_PATH'] = ENV['SASS_PATH'] + File::PATH_SEPARATOR + project_path
  else
    ENV['SASS_PATH'] = project_path
  end
end
