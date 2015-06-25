#-*- encoding: utf-8

module Ruby
	extend self

	def header
		"\#-*- encoding: utf-8\n"
	end

	def requires(json, extension)
		require_str = ""

		# 自分を継承しているクラスを取得
		if not json["extends"].nil? then
			require_str += "require \"./template/#{extension}/#{json["extends"]}.rb\"\n"
		end

		# 変数から型を取得
		variable_types = []
		if not json["variables"].nil? then
			for var_name, values in json["variables"]
				variable_types << values["type"]
			end

			for type_name in variable_types.uniq then
				require_str += "require \"./template/#{extension}/#{type_name}.rb\"\n"
			end
		end
		require_str
	end
end