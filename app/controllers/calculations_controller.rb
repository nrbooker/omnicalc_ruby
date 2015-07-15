class CalculationsController < ApplicationController

  def word_count
    @text = params[:user_text]
    @special_word = params[:user_word]

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================


    @character_count_with_spaces = @text.length

    @character_count_without_spaces = @text.gsub(" ", "").length

    @word_count = @text.split.length

    @occurrences = a = @text.split.count(@special_word)


end

def loan_payment
    @apr = params[:annual_percentage_rate].to_f
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

    a = @apr/100
    y = @years*12
    p = @principal*(1 + a)

    @monthly_payment = p/y
end

def time_between
    @starting = Chronic.parse(params[:starting_time])
    @ending = Chronic.parse(params[:ending_time])

    # ================================================================================
    # Your code goes below.
    # The start time is in the Time @starting.
    # The end time is in the Time @ending.
    # Note: Ruby stores Times in terms of seconds since Jan 1, 1970.
    #   So if you subtract one time from another, you will get an integer
    #   number of seconds as a result.
    # ================================================================================

    s = @starting
    e = @ending

    @seconds = e-s
    @minutes = @seconds/60
    @hours = @seconds/3600
    @days = @seconds/86400
    @weeks = @days/7
    @years = @weeks/52.1785714286
end

def descriptive_statistics
    @numbers = params[:list_of_numbers].gsub(',', '').split.map(&:to_f)

    # ================================================================================
    # Your code goes below.
    # The numbers the user input are in the array @numbers.
    # ================================================================================
m=@numbers.length/2


    @sorted_numbers = @numbers.sort

    @count = @numbers.length

    @minimum = @numbers.sort[0]

    @maximum = @numbers.sort.reverse[0]

    @range = @maximum-@minimum

    @median = @numbers.sort[m].to_f

#     @sum = def sum(list_of_numbers)


#     running_total = 0
#   @numbers.each do |number|
#     running_total = running_total + number

#   return 
#   running_total
# end


#     = sum(list_of_numbers)
#     running_total=0
#       list_of_numbers.each do |number|
#         running_total = running_total + number
#     return
#     running_total
# end

#     @mean = def mean(list_of_numbers)
#     running_total = 0
#     count_for_mean = list_of_numbers.count
#     list_of_numbers.each do |number|
#         running_total = running_total + number
#     return 
#     running_total / count_for_mean
# end
# end

    @sum = @numbers.inject{ |sum, el| sum + el }.to_f

    @mean = @numbers.inject{ |sum, el| sum + el }.to_f / @numbers.size

    @variance = "insert"

    @standard_deviation = "insert"

    @mode = "insert"

#     @sorted_numbers = @numbers.sort

#     @count = @numbers.length

#     @minimum = @numbers.sort[0]

#     @maximum = @numbers.sort.reverse[0]

#     @range = @maximum-@minimum 

#     @median = (@maximum-@minimum)/@count

#     @sum = @sum =
#  def sum(list_of_numbers)
#     running_total = 0
#     list_of_numbers.each do |number|
#     running_total = running_total + number
#     end


    # @sum = def sum(list_of_numbers)
    # running_total=0
    # @numbers.each do |number|
    # sum_total=sum_total + number
    # end
    # return sum_total
    # end
    

#     return running_total
#     end

#     @mean = arr = @numbers
#     arr.inject{ |sum, el| sum+el }.to_f / arr.size

#     @variance = (@sum-@mean)**2

#     OR = def variance(list_of_numbers)
#       average_dataset= mean(list_of_numbers)
#         running_total = 0
#           list_of_numbers.each do |number|
#              running_total = running_total + ((number - average_dataset)**2)
# end   
#     vari = running_total/list_of_numbers.length
# return vari
# end

# @variance = def variance(list_of_numbers)
#     running_total=0
#     count_for_mean=@numbers.count
#     @numbers.each  |number|
#         running_total=running_total + (((@mean - numbers) **2))
#     end 
#     return running_total/@mean
# end


#     @standard_deviation = sqrt(@variance)

#     @mode = "Replace this string with your answer."



end
end
