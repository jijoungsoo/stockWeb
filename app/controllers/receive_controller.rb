class ReceiveController < ApplicationController

  soap_service namespace: 'urn:WashOut'


  soap_action "receive_opt10081",
              :args =>:string,
              :return =>:string

  soap_action "receive_opw00003",
                          :args =>:string

  soap_action "receive_opt10085",
                          :args =>:string
  #주식일봉차트조회요청
  def receive_opt10081
     #일자:20130829|종목코드:181710|현재가:123305|거래량:34493|거래대금:4420|시가:144581|고가:144581|저가:123305

     tmp = params[:value].to_s
     h =[]
     if tmp!=nil
          tmp=tmp.split("\n").map { |s| s.to_s }
          tmp.map do |s|
               h1 = {}
               tmp1= s.split("|").map {|t| t.to_s}
               tmp1.map do |t|
                    k,v=t.split(":")
                    h1[k]=v
               end
               h.push(h1)
          end
     end
# puts h
#=begin
     h.each do |stock|
          Opt10081.create(
             :stock_date=>stock['stock_date'],
             :stock_code=>stock['stock_code'],
             :current_price=>stock['current_price'],
             :trade_quantity=>stock['trade_quantity'],
             :trade_price=>stock['trade_price'],
             :start_price=>stock['start_price'],
             :high_price=>stock['high_price'],
             :low_price=>stock['low_price']
          )
     end
#=end


     render :soap =>"test"
  end

  #추정자산조회요청
  def receive_opw00003
     #조회일자:20130829 02:55:33|계좌번호:1234567890|추정예탁자산:123
     tmp = params[:value].to_s
     Opw00003.delete_all
     puts "receive_opw00003 tmp #{tmp}";
     if tmp!=nil
          tmp=tmp.split("|")
          Opw00003.create(
            :search_date=>tmp[0],
            :account_number=>tmp[1],
            :estimation_deposition_property=>tmp[2]
          )
     end
     render :soap =>"test"
  end

  #계좌수익률요청
  def receive_opt10085
     #조회일자:20130829 02:55:33|계좌번호:1234567890|추정예탁자산:123
     tmp = params[:value].to_s
     Opt10085.delete_all
     puts "receive_opt10085 tmp #{tmp}";
     h =[]
     if tmp!=nil
          tmp=tmp.split("\n").map { |s| s.to_s }
          tmp.map do |s|
               tmp1= s.split("|").map {|t| t.to_s}
               h.push(tmp1)
          end
     end
     h.each do |rs|
          Opt10085.create(
             :date_of_purchase=>rs[0], #구매일
             :account_number=>rs[1],  #"계좌번호"
             :stock_code=>rs[2], #종목코드
             :stock_name=>rs[3], #종목이름
             :current_price=>rs[4], #현재가
             :purchase_price=>rs[5], #매입가
             :total_amount_of_purchase=>rs[6], #매입금액
             :possession_quantity=>rs[7], #보유수량
             :today_sell_profit_and_loss=>rs[8], #당일매도손익
             :today_commission=>rs[9], #당일매매수수료
             :today_tax=>rs[10], #당일매매세금
             :credit_gubun=>rs[11],#신용구분
             :loan_date=>rs[12], #대출일
             :payment_balance=>rs[13], #결제잔고
             :sellable_quantity=>rs[14], #청산가능수량
             :credit_amount=>rs[15], #신용금액
             :credit_interest=>rs[16], #신용이자
             :expiration_date=>rs[17], #만기일
             :valuation_profit_and_loss=>rs[18], #평가손익
             :earnings_rate=>rs[19], #수익률
             :evaluated_price=>rs[20], #평가금액
             :commission=>rs[21], #수수료
             :buying_commission=>rs[22], #매입수수료
             :selling_commission=>rs[23], #매도수수료
             :selling_tax=>rs[24], #매도세금
             :will_profit_price=>rs[25], #손익분기매입가
             :not_commission_profit_and_loss=>rs[26], #손익금액
             :not_commission_profit_and_loss_rate=>rs[27] #손익율
          )
     end
     render :soap =>"test"
  end

=begin
  # Simple case
  soap_action "integer_to_string",
              :args   => :integer,
              :return => :string


  def integer_to_string
    render :soap => params[:value].to_s
  end

  soap_action "concat",
              :args   => { :a => :string, :b => :string },
              :return => :string
  def concat
    render :soap => (params[:a] + params[:b])
  end

  # Complex structures
  soap_action "AddCircle",
              :args   => { :circle => { :center => { :x => :integer,
                                                     :y => :integer },
                                        :radius => :double } },
              :return => nil, # [] for wash_out below 0.3.0
              :to     => :add_circle
  def add_circle
    circle = params[:circle]

    raise SOAPError, "radius is too small" if circle[:radius] < 3.0

    Circle.new(circle[:center][:x], circle[:center][:y], circle[:radius])

    render :soap => nil
  end

  # Arrays
  soap_action "integers_to_boolean",
              :args => { :data => [:integer] },
              :return => [:boolean]
  def integers_to_boolean
    render :soap => params[:data].map{|x| x ? 1 : 0}
  end



  # Params from XML attributes;
  # e.g. for a request to the 'AddCircle' action:
  #   <soapenv:Envelope>
  #     <soapenv:Body>
  #       <AddCircle>
  #         <Circle radius="5.0">
  #           <Center x="10" y="12" />
  #         </Circle>
  #       </AddCircle>
  #     </soapenv:Body>
  #   </soapenv:Envelope>
  soap_action "AddCircle",
              :args   => { :circle => { :center => { :@x => :integer,
                                                     :@y => :integer },
                                        :@radius => :double } },
              :return => nil, # [] for wash_out below 0.3.0
              :to     => :add_circle
  def add_circle
    circle = params[:circle]
    Circle.new(circle[:center][:x], circle[:center][:y], circle[:radius])

    render :soap => nil
  end

  # With a customised input tag name, in case params are wrapped;
  # e.g. for a request to the 'IntegersToBoolean' action:
  #   <soapenv:Envelope>
  #     <soapenv:Body>
  #       <MyRequest>  <!-- not <IntegersToBoolean> -->
  #         <Data>...</Data>
  #       </MyRequest>
  #     </soapenv:Body>
  #   </soapenv:Envelope>
  soap_action "integers_to_boolean",
              :args => { :my_request => { :data => [:integer] } },
              :as => 'MyRequest',
              :return => [:boolean]

  # You can use all Rails features like filtering, too. A SOAP controller
  # is just like a normal controller with a special routing.
  before_filter :dump_parameters
  def dump_parameters
    Rails.logger.debug params.inspect
  end
=end

end
