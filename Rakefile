require 'bundler/gem_tasks'
require 'rake/testtask'

namespace :test do
  desc 'Run the tests'
  Rake::TestTask.new(:spec) do |t|
    t.libs = ['lib', 'spec']
    t.warning = false
    t.verbose = true
    t.test_files = FileList['spec/**/*_spec.rb']
  end
end

task :default => "test:spec"