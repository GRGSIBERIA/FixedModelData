#-*- encoding: utf-8
require "./compiler/builder/json_filer.rb"

class RubyCompiler

	def compile
		filer = JSONFiler.new("fmd", "ruby", "rb")
		files = filer.created_files
	end
end