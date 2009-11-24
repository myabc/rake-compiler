Given %r{^I've installed the Java Development Kit$} do
  compilers = %w(javac javac.exe)
  paths = ENV['PATH'].split(File::PATH_SEPARATOR)
  compiler = compilers.find do |comp|
    paths.find do |path|
      javac = File.join(path, comp)
      File.exist?(javac) && File.executable?(javac)
    end
  end
  pending "Cannot locate suitable compiler in the PATH." unless compiler
end
