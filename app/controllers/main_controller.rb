class MainController < ApplicationController
  def test
    @amount= params[:amount].to_i
    @subject_check = params[:subject_check]
    @score_check = params[:score_check]
  end

  def test1
   
   
   
    @total= params[:total]
    @subject= params[:sub]
   
  
  end

  def test2
    
    @subject= params[:subject]
    @score= params[:score]
    @z=0
    check=false
    @score_check=Array.new
    @subject_check=Array.new
    
    while @z < @score.length
      if(@score[@z]=="")
        check=true
        @score_check.append(@z+1)
        
      end
      if(@subject[@z]=="")
        check=true 
        @subject_check.append(@z+1) 
        
        
      end
      @z+=1
    end
    if(check) 
      redirect_to("/main/test/?amount=#{@subject.length()}&subject_check=#{@subject_check}&score_check=#{@score_check}")
    else
      @total = 0
   @x = 0 
   @max = @score[0].to_i
   @max_sub=@subject[0]
   
   while @x < @score.length
    @total=@total+@score[@x].to_i  
    @x+=1
    
    
   end
   @y=1
   while @y < @score.length
    
    
    if(@max<@score[@y].to_i)
      @max=@score[@y].to_i
      @max_sub=@subject[@y]
    end
    @y+=1
    
    
   end
      redirect_to("/main/test1/?sub=#{@max_sub}&total=#{@total}")
       
    
    end
  end

  def test3
    
  end
end