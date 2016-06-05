stylesheets_path = File.join(File.dirname(__FILE__), '..')

if (defined? Compass)
  Compass::Frameworks.register(
    'sass-burger',
    :stylesheets_directory => stylesheets_path
  )
else
  if ENV.has_key?('SASS_PATH')
    ENV['SASS_PATH'] = ENV['SASS_PATH'] + File::PATH_SEPARATOR + stylesheets_path
  else
    ENV['SASS_PATH'] = stylesheets_path
  end
end