# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :version => 2.13, :cli => "--drb --color --format nested" do
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }
end
