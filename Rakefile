desc "nuke, build and compass"
task :generate do
  sh 'rm -rf _site'
  jekyll
end

def jekyll
  #outputs time
  sh 'time jekyll'
  #sass configured in config.rb
  sh 'compass compile'
end
