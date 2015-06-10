#-*- encoding: utf-8

module Filer
	extend self

	def JsonPathes(type, ext)
		jsons = Dir::open("./template/#{type}").entries[2..-1]

		retval = []

		for i in 0...jsons.size
			# ライセンスだけは拡張子そのまま
			if jsons[i] != "license.txt" then
				retval << jsons[i].split(".")[0] + ".#{ext}"
			end
		end

		retval << "common.#{ext}"
	end

	def CreateFiles(jsons, build_language, type)
		basis = "./#{build_language}"
		common = "#{basis}/common.json"

		if not Dir::exists?("#{basis}/#{type}") then
			Dir::mkdir("#{basis}/#{type}")
		end

		# ファイルを開いておく
		files = []
		for i in 0...jsons.size-1
			files << File.open("#{basis}/#{type}/" + jsons[i], "w")
		end
		files << File.open("#{basis}/" + jsons[-1], "w")
	end
end