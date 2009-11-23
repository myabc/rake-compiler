Given %r{^I've installed the Java Development Kit$} do
  compilers = %w(javac)
  paths = ENV['PATH'].split(File::PATH_SEPARATOR)
  compiler = compilers.find do |comp|
    paths.find do |path|
      File.exist? File.join(path, comp)
    end
  end
  pending "Cannot locate suitable compiler in the PATH." unless compiler
end
