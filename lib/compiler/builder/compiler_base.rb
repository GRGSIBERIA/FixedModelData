#-*- encoding: utf-8
require "./compiler/builder/json_filer.rb"

class CompilerBase
	attr_reader :files

	def initialize(base_type, build_language, build_ext)
		filer = JSONFiler.new(base_type, build_language, build_ext)
		@files = filer.created_files
	end
end