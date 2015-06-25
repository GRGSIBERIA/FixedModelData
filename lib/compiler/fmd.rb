#-*- encoding: utf-8

require "./compiler/builder/json_filer.rb"
require "./compiler/builder/ruby/compile.rb"

ruby = RubyCompiler.new
puts ruby.compile