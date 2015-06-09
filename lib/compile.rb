#-*- encoding: utf-8
require "json"
require "pp"

require "./compiler/fmd.rb"
require "./compiler/builder/file.rb"

jsons = Filer.OpenJsons("fmd", "rb")

files = Filer.CreateFiles(jsons, "ruby", "fmd")