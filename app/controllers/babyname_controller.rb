class BabynameController < ApplicationController
  def index
  end

  def namecorrection
  #params dob and fullname
  # 	@date = params[:your_dob][:day].to_i
  #   @birth,@fate = luckynum
  #   @hash = {"A" => 1, "I" => 1, "J" => 1, "Q" => 1, "Y" => 1, "B" => 2, "K" => 2, "R" => 2, "c" => 3, "G" => 3, "L" => 3, "S" => 3, "D" => 4, "M" => 4, "T" => 4,"E" => 5, "H" => 5, "N" => 5, "X" => 5, "U" => 6, "V" => 6, "W" => 6, "O" => 7, "Z" => 7, "P" => 8, "F" => 9}
     
  #  # hash = {"A" => 1, "I" => 1, "J" => 1, "Q" => 1, "Y" => 1, "B" => 2, "K" => 2, "R" => 2, "c" => 3, "G" => 3, "L" => 3, "S" => 3, "D" => 4, "M" => 4, "T" => 4,"E" => 5, "H" => 5, "N" => 5, "X" => 5, "U" => 6, "V" => 6, "W" => 6, "O" => 7, "Z" => 7, "P" => 8, "F" => 9}
  #  arr1 = []
  #  arr2 = []
  #  fullname = params[:fullname]
  #  va = params[:fullname].gsub(/[^a-zA-Z]/, '')
  #  va.each_char do|e|  
  #    arr1 << hash["#{e}"]
  #  end
  #  arr2 << fullname.split("").map{|x| x.to_i}
   
  #  @result =  arr1.zip(arr2).flatten.compact.inject(0, :+)
  #  while result > 10
  #    @result = result.to_s.split("").map(&:to_i).inject(0, :+)
  #  end
   
  # end

  # if @birth == @result == @fate
  #   @report = "matched"

  # elsif @birth
    
  # else
    
  # end
  

  # end



  #   case @birth
  #     when 1,10,19,28
    	  
  #     when 2,11,20,29
        
  #     when 3,12,21,30

  #     when 4,13,22,31

  #     when 5,14,23

  #     when 6,15,24

  #     when 7,16,25

  #     when 8,17,26
        
  #     when 9,18,27  
         
  #   end
  end

private 
  def luckynum
  	# raise params[:your_dob][:month].to_i.inspect
    @lucky1 = @date
    while @lucky1>9
     tmp=@lucky1.to_s.split('').map { |e| e.to_i  }
      @lucky1=tmp.inject(0, :+)
    end
    arr = []
    arr << params[:your_dob][:day].to_i
    arr << params[:your_dob][:month].to_i
    arr << params[:your_dob][:year].to_i
    @lucky2 = arr.inject(0, :+)

   while @lucky2 >=10
      tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
      @lucky2=tmp.inject(0, :+)
   end
   return @lucky1,@lucky2

  end



end
