require 'rake'

task :default => [:spec]

desc "Run all module spec tests (Requires rspec-puppet gem)"
task :spec do
  system("rspec spec/**/*_spec.rb")
end

