require 'savon'
class KiwoomApi
	def initialize
		@client_soap=Savon.client(wsdl: 'http://192.168.0.40:8827/kiwoomOpenApi?wsdl',
                      log: true , # set true to switch on logging
                      log_level: :debug,
                      pretty_print_xml: true,
                      env_namespace: :s,
                      strip_namespaces: false,
                      open_timeout:1800,
                      read_timeout:1800
                      )
	end


	def get_code_list_by_market(sMarket)
		#[14] 설명 시장구분에 따른 종목코드를 반환한다.
	        #입력값 sMarket – 시장구분
	        #반환값 종목코드 리스트, 종목간 구분은 ’;’이다.
	        #비고 sMarket – 0:장내, 3:ELW, 4:뮤추얼펀드, 5:신주인수권, 6:리츠, 8:ETF, 9:하이일드펀드, 10:코스닥, 30:제3시장
		message = { "tns:sMarket" => sMarket}
		response = @client_soap.call(:get_code_list_by_market,message:message)
		marketTmp =  response.body[:get_code_list_by_market_response][:get_code_list_by_market_result]
		if marketTmp!=nil
       	 		marketTmp = marketTmp.split(";").map { |s| s.to_s }
        		marketTmp=marketTmp.uniq;
		end
		return marketTmp
	end

	def get_master_code_name(stock_code)
        #[16]설명 종목코드의 한글명을 반환한다.
        #입력값 strCode – 종목코드
        #반환값 종목한글명
	    message = { "tns:strCode" => stock_code}
	    response = @client_soap.call(:get_master_code_name,message:message)
	    stock_name = response.body[:get_master_code_name_response][:get_master_code_name_result]
	    return stock_name
	end

	def get_master_listed_stock_date(stock_code)
		    #get_master_listed_stock_date(String strCode)
	   	 #[19]설명 종목코드의 상장일을 반환한다.
	         #입력값 strCode – 종목코드
	         #반환값 상장일
        	 #비고 상장일 포멧 – xxxxxxxx[8]
	    #strCode='233740'  #KODEX 코스닥150 레버리지
	    message = { "tns:strCode" => stock_code}
	    response = @client_soap.call(:get_master_listed_stock_date,message:message)
	    stock_open_date=response.body[:get_master_listed_stock_date_response][:get_master_listed_stock_date_result]
	    return stock_open_date
	  end


	def get_theme_group_list()
		#[27] 설명 테마코드와 테마명을 반환한다.
		#입력값 nType – 정렬순서 (0:코드순, 1:테마순)
		#반환값 코드와 코드명 리스트
		#비고 반환값의 코드와 코드명 구분은 ‘|’ 코드의 구분은 ‘;’
		#Ex) 100|태양광_폴리실리콘;152|합성섬유
		nTypes={'코드순':0, '테마순':1,}
		message = { "tns:nType" => nTypes['코드순']}
		response = @client_soap.call(:get_theme_group_list,message:message)
		#puts response
		#puts response.body
		#puts response.body[:get_theme_group_list_response]
		#puts response.body[:get_theme_group_list_response][:get_theme_group_list_result]
		themes=response.body[:get_theme_group_list_response][:get_theme_group_list_result]
		themes = themes.split(";").map { |s| s.to_s }
		h = {}
		themes.map do |s|
		    k,v=s.split('|')
		    h[k] ||= []
		    h[k].push(v)
		end
		return h
	end


	def  get_theme_group_code(theme_code)
		#[28] 설명 테마코드에 소속된 종목코드를 반환한다.
		#입력값 strThemeCode -테마코드  – 450|전자책_e-book
		#반환값 종목코드 리스트
		#비고 반환값의 종목코드간 구분은 ‘;’
		#Ex) A000660;A005930
#		message = { "tns:strThemeCode" => '450'}
		message = { "tns:strThemeCode" => theme_code }
		response = @client_soap.call(:get_theme_group_code,message:message)
#		puts response
#		puts response.body
#		puts response.body[:get_theme_group_code_response]
#		puts response.body[:get_theme_group_code_response][:get_theme_group_code_result]
		themes=response.body[:get_theme_group_code_response][:get_theme_group_code_result]
		themes = themes.split(";").map { |s| s.to_s }
#		puts themes
		return themes
	  end

	def get_opt10081(strCode,startDate,endDate)
                message = { "tns:strCode" =>strCode, "tns:startDate"=>startDate ,"tns:endDate"=>endDate }
                response = @client_soap.call(:get_opt10081,message:message)
#               puts response
#               puts response.body
#               puts response.body[:get_opt10081_response]
#               puts response.body[:get_opt10081_response][:get_opt10081_result]
                ret=response.body[:get_opt10081_response][:get_opt10081_result]
                return ret

	end



	def get_branch_code_name()
		#[46] 설명 회원사 코드와 이름을 반환합니다.
		#반환값 회원사코드|회원사명;회원사코드|회원사명;…
		#비고 Ex) openApi.GetBranchCodeName();
		response = @client_soap.call(:get_branch_code_name)
		#puts response
		#puts response.body
		#puts response.body[:get_branch_code_name_response]
		branchCodeNames= response.body[:get_branch_code_name_response][:get_branch_code_name_result]
		h = {}
		branchCodeNames.split(";").map do |s|
		    k,v=s.split('|')
		    h[k] ||= []
		    h[k].push(v)
		end
		return h
	#	puts h
	#	h.each do |key, value|
	#	    puts key
	#	    puts value
	#	end
	end

	def get_opw00003(account_number,password)
		  #추정자산조회요청
      message = { "tns:accountNum" =>account_number, "tns:password"=>password}
      response = @client_soap.call(:get_opw00003,message:message)
#               puts response
#               puts response.body
#               puts response.body[:get_opt10081_response]
#               puts response.body[:get_opt10081_response][:get_opt10081_result]
      ret=response.body[:get_opw00003_response][:get_opw00003_result]
      return ret

	end

	def get_opt10085(account_number)
		  #계좌수익률요청
      message = { "tns:accountNum" =>account_number}
      response = @client_soap.call(:get_opt10085,message:message)
#               puts response
#               puts response.body
#               puts response.body[:get_opt10081_response]
#               puts response.body[:get_opt10081_response][:get_opt10081_result]
      ret=response.body[:get_opt10085_response][:get_opt10085_result]
      return ret

	end

	def get_condition_name_list()
			#조건검색 조건명 리스트를 받아온다
			response = @client_soap.call(:get_condition_name_list,message:message)
#               puts response
#               puts response.body
#               puts response.body[:get_opt10081_response]
#               puts response.body[:get_opt10081_response][:get_opt10081_result]
			ret=response.body[:get_condition_name_list_response][:get_condition_name_list_result]
			 return ret

	end

end
