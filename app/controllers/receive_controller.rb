class ReceiveController < ApplicationController

  soap_service namespace: 'urn:WashOut'


  soap_action "receive_opt10081",
              :args =>:string,
              :return =>:string 

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
