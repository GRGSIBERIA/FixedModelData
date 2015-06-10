#-*- encoding: utf-8

require "./compiler/builder/filer.rb"

jsons = Filer.JsonPathes("fmd", "rb")

files = Filer.CreateFiles(jsons, "ruby", "fmd")

