#-*- encoding: utf-8
require "json"
require "pp"

f = File.open("fmd/geometory.json", "r:utf-8")
j = JSON.parse(f.read)
for k,v in j
	puts k
end