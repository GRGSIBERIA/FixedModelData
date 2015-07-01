#-*- encoding: utf-8
require "./compiler/builder/compiler_base.rb"

class RubyCompiler

	def initialize
		fmd = CompilerBase.new("fmd", "ruby", "rb")

		puts fmd.files
	end
end