begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = 'rake-compiler'
    gem.platform    = Gem::Platform::RUBY
    gem.summary     = 'Rake-based Ruby C Extension task generator.'
    gem.description = "Provide a standard and simplified way to build and package\nRuby C extensions using Rake as glue."

    gem.required_ruby_version = ">= 1.8.6"
    gem.required_rubygems_version = ">= 1.3.5"

    gem.add_dependency  'rake', '>= 0.8.3', '< 0.9'
    gem.add_development_dependency 'rspec'
    gem.add_development_dependency 'rcov'
    gem.add_development_dependency 'cucumber'

    gem.files = FileList["features/**/*.{feature,rb}", "bin/rake-compiler",
                        "lib/**/*.rb", "spec/**/*.rb", "tasks/**/*.rake",
                        "Rakefile", "*.{rdoc,txt,yml}"]

    gem.bindir       = 'bin'
    gem.executables  = ['rake-compiler']
    gem.has_rdoc     = true
    gem.rdoc_options << '--main'  << 'README.rdoc' << '--title' << 'rake-compiler -- Documentation'

    gem.homepage     = 'http://github.com/luislavena/rake-compiler'
    gem.licenses     = ['MIT']
    gem.author       = 'Luis Lavena'
    gem.email        = 'luislavena@gmail.com'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
