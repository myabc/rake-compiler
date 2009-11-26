# "javac shim"
#
# Provide a similar (subset) API to Pangolin, but shell out to java and jar on
# MRI. This implementation is quick-and-dirty and should be refactored to handle
# options more elegantly (we could actually reuse a lot of the Pangolin code,
# but there it is under a different license).

def javac( source_files, options = nil, &block )
  #destination = 'build'

  classpath   = options[:class_path]  if options && options[:class_path]
  destination = options[:destination] if options && options[:destination]
  verbose     = '-verbose'            if options && options[:verbose]

  sh "javac #{verbose} -target 1.5 -source 1.5 -Xlint:unchecked #{classpath} -d #{destination} #{source_files.join(' ')}"
end

def jar( output, files = nil, options = nil, &block )
  base_dir    = options[:base_dir]    if options && options[:base_dir]
  verbose     = 'v'                   if options && options[:verbose]

  sh "jar cf#{verbose}  #{output} -C #{base_dir} ."
end
