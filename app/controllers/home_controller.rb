class HomeController < ApplicationController
  def index
    # render 'home/index'

    # ここにインスタンス変数を宣言すると、index.html.erbで使える
    @title = 'みったに'
  end

  def about
    render 'home/about'
  end
end