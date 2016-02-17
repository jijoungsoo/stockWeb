class WelcomeController < ApplicationController
  def index
	#원래 자동으로 이렇게 간다.
        #그리고 사실 이함수가 없어도 알아서 뷰를 찾아감.
        #그런데 내가 이걸 넣어주는이유는 상당엔 들어가는 디폴트 레이아웃을 빼는 방법을
        #알고 싶기 때문이다.
	render "welcome/index",:layout=>false
  end
end
