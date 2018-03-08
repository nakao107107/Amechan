class FormController < ApplicationController
  def show
    @error_message
  end

  def submit
    @content=params[:content]
    claim=Claim.new(number:params[:id],content:@content,age:params[:age],sex:params[:sex],submit:params[:submit])


    if claim.save
      redirect_to("/form/complite")
    else
      @error_message="必須項目は全部入力してな！"
      render("form/show")
    end
  end

  def test

    human = {"claim":[name: 'Tom', age: 20]}
    render :json => human
  end

  


end
