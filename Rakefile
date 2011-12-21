require 'rubygems'
require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = Dir['test/**/*_test.rb']
  t.verbose = true
end 
