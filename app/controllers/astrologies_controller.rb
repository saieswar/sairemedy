class AstrologiesController < ApplicationController
	def index
		
	end

	def create
	 first_sign = params["first_sign"]
    second_sign = params["second_sign"]
    astrology = Astrology.find_by(first_sign: first_sign, second_sign: second_sign)
    @msg = astrology.remedy
    respond_to do|format|
      format.js
    end
	end
	
 def download_atro_pdf
  send_file(
    "#{current_user.astro_pdfs.last.avatar.url}",
    filename: "your_custom_file_name.pdf",
    type: "application/pdf"
  )	
  end

	
end
