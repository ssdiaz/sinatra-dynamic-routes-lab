require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do 
    @user_number = params[:number].to_i
    (@user_number**2).to_s
  end

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    answer = '' 

    number.times do 
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer =num1+num2
    when 'subtract'
      answer =num1-num2
    when 'multiply'
      answer =num1*num2
    when 'divide'
      answer = num1/num2
    end
    answer.to_s
  end

end