class DemoController < ApplicationController

  layout false

  DEFAULT_PHONE_NUMBER = '+1 (987) 654-3210'
  UK_PHONE_NUMBER = '(020) 7946 1234'
  NA_PHONE_NUMBER = '(800) 555-6789'
  def index
  end

  def hello
    # render('index')
    # redirect_to(:controller => 'demo', :action => 'index')
    # redirect_to('https://google.com ')
    @array = [1,2,3,4]

    @id = params[:id]

    @page = params[:page] #or ['page']

  end


  def about
    render('about_us')
  end

  def contact_us
    @phone_number = DEFAULT_PHONE_NUMBER
    if ['ca', 'us'].include? params[:country]
      @phone_number = NA_PHONE_NUMBER
    elsif params[:country] == 'uk'
      @phone_number = UK_PHONE_NUMBER
    end

    render('contact_us')

  end



end
