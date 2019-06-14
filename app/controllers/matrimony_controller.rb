class MatrimonyController < ApplicationController

	def index
		file = 'parsed_nakastra.txt'
		data = File.open(file, "rb") {|io| io.read}
		data = Kernel.eval(data)
		@keys = data.map(&:keys)
		nakshetras = data.reduce Hash.new, :merge
		if params[:f_nakshatra].present? && params[:m_nakshatra].present?
			@value = nakshetras[params[:f_nakshatra].to_sym][params[:m_nakshatra].to_sym].inspect
		else
		end
	end

	def get_data
		# raise params.inspect
		file = 'parsed_nakastra.txt'
		data = File.open(file, "rb") {|io| io.read}
		data = Kernel.eval(data)
		@keys = data.map(&:keys)
		nakshetras = data.reduce Hash.new, :merge
		if params[:f_nakshatra].present? && params[:m_nakshatra].present?
			@value = nakshetras[params[:f_nakshatra].to_sym][params[:m_nakshatra].to_sym].inspect
		else
		end
	end

end

