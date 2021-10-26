# 할것
    이름 수정
        public.view_stock --> public.view_rebound_stock
        public.view_market --> public.view_rebound_market
    
    api 추가
        기본적인 일자별 hist.price데이터 조회 + 페이징처리
            stock,market 둘다되게
        frontend ui 추가

    유지력 추가
        지수가 n퍼 떨어질때 많이 떨어진 종목 찾기
        input : 검색기간 n 일 
        output: 유지력순 

        검색기간 1일에 유지력이 높은건 당일 최고가로 오른 종목임.
        지수가 x일 부터 y일까지 n퍼 하락기간에 유지력이 높은건 다른 종목 다 떨어질때 잘 버티는종목임.
        반대로 지수가 n 퍼 하락기간에 유지력이 낮은건? 
            종목에 대한 코멘트를 달아야지.
                코멘트 테이블 추가. 종목code, 코멘트 사유
        
    유지력 + 고저 차이가 큰것을 조건검색하기
        당일 유지력이 최고 높은건 당일 30퍼 급등한 종목임으로 찾을 필요가 없지.
        당일 고저 차이가 크면서 유지력이 높아야지.
            --> 해당 종목은 이미 올랐으므로 못삼. 그러므로 당일 고저 차이가 있고 떨어지는 지수인  상황에도 0에 가까운 종목이 살 만하지 않을까?

    프로그램 관리종목 기능 추가
        해당 유지력에서 유용한 종목을 추렸으면 관리종목에 넣어 놓고 봐야겠지?
        매일 프로그램 실행 후 살 만한 정목 일자별로 관리종목에 추가
            이건 프로그램에서 선정한 관리종목
    
    프로그램 추천종목 기능
        관리종목에서 걸러져서 추천하는 종목

    프로그램 매수, 매도 타이밍 
        지수 반등 오르냐 안오르냐의 일자별 정보를 가지고 패턴을 보는건데 운빨임.
            예로 2일 연속 하락한적이 최근 일주일간 없어서 3일째 되는 날 매수 타이밍으로 잡았지만 5일째 하락 할 수도 있으니
                이럴때를 대비해 분할 매수란게 있으니.
    
    개인용 관리종목 기능
        같은 것이지만 이건 누가 추천 해줘서 관리종목에 등록되는 경우.
        필수 칼럼은. 추천자! 추천일자! 예상가 ,추천일시 등이 되겠지, 추천사유

    사이트 이용자 검색 로그
        사이트에서 검색하면 해당 종목 저장해놓기. 누가 무엇을 어떤페이지에서 봤는지는 저장해 놔야지
    

    




        