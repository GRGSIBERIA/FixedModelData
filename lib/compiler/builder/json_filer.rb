#-*- encoding: utf-8

class JSONFiler
	
	def initialize(type, build_language, ext)
		@type = type
		@build_language = build_language
		@ext = ext
		
		@jsons = CreateFiles
		@files = CreateFiles
	end
	
	# JSONのパスを取得
	def json_pathes
		@jsons
	end
	
	# 自動生成されたファイルを取得
	def created_files
		@files
	end

	def JsonPathes
		jsons = Dir::open("./template/#{@type}").entries[2..-1]

		retval = []

		for i in 0...jsons.size
			# ライセンスだけは拡張子そのまま
			if jsons[i] != "license.txt" then
				retval << jsons[i].split(".")[0] + ".#{@ext}"
			end
		end

		retval << "common.#{@ext}"
	end

	def CreateFiles
		basis = "./#{@build_language}"
		common = "#{basis}/common.json"

		if not Dir::exists?("#{basis}/#{@type}") then
			Dir::mkdir("#{basis}/#{@type}")
		end

		# ファイルを開いておく
		files = []
		for i in 0...@jsons.size-1
			files << File.open("#{basis}/#{@type}/" + @jsons[i], "w")
		end
		files << File.open("#{basis}/" + @jsons[-1], "w")
	end
	
	
end