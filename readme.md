# 프로적트 소개
이 프로젝트는 주식 데이터베이스를 업데이트 하고 필요한 지표를 계산하고 데이터베이스에 저장하는 용도로 사용한다.    
보여주는건 별도의 web 프로젝트를 생성하여 진행한다.   

## 실행방법

```
docker-compose up 시키고 
수동으로 실행시키기

migrations\company\init.sql
migrations\fun\high_point.sql
migrations\price\init.sql
migrations\init.sql

mian.go 의 
함수 init_project()  실행시켜 기본데이터 세팅
함수 daily_project() 평일 3시 이후에 실행시켜 그날 데이터 가져오기

```


## 다음 할것
+ 나스닥 변동률에 따른 변화량  구하기
+ 스케줄러 평일 특정시간 매일함수 실행시키기 ==> aws 에서 설정하기( https://aws.amazon.com/ko/solutions/implementations/instance-scheduler/resources/ )

## 작업한 기능
+ 종목의 전일대비 퍼센트가 아닌 (일별 데이터에서 )마지막 상승에 따른 하락 퍼센트를 보여준다   
(주별, 월별 시세 데이터 작업도 해놓으면 유용할듯 하다. )
+ 로그 남기는 기능
+ 실행후 info 테이블 업데이트
+ db init.sql에 한국시간으로 변경하는 쿼리 넣기 ==> db컨테이서 환경설정 수정




## 필요기능
+ 스케줄러 매일 땡땡 시에 시세를 조회하여 price 스키마 업데이트 후 loop_price_tb_to_high_point 함수로 high_point 테이블에 저장하여 view_quot를 업데이트 한다.
+ 스케줄러 시작과 완료를 테이블에 저장하여 사용자가 페이지를 볼때 언제 데이터로 작업한것이지 알게한다. 
(log 테이블 만들고 메타 테이블 만들어 시세와 기능별 최신 작업한 시간을 저장해 놓는다.)
+ 마지막 상승에 따른 하락 퍼센트 주별, 월별 데이터 담을 테이블 생성과 기존 테이블에 _day붙이고 view에 _day붙이고 기능 수정하기.
+ 데이터베이스화 하는데 시간이 오래걸린다...(모든 종목의 시세를 가져와 마지막 상승에 따른 하락 퍼센트 계산하고 저장하는 데 내컴퓨터에서 130초 정도 소요되고 주별,월별로 작업하면 x3 소요되고, init할때는 몇 십분걸린다. 모든 종목 시세 데이터를  엑셀로 다운하고 파싱해서 db에 넣기까지  그러므로 내컴퓨터에서 작업하여 sql만 만들고 클라우드 디비에 넣기는 방법은?) 내컴퓨터에서 업데이트하여 sql을 파일로 저장후에 sql파일을 클라우드에 업로드하여 실행하는건 어떨지?  그러면 디비도 딱히 필요없지 않을까 html 파일만 들어서 서버에 넣어주면 되니깐? 이게 좋은 방법일 수도 있다.
클라우드 디비 비용 내용기보다 디비 내용 또한 실시간이 아닌 3시이후에 작업하여 반영해 줄때만 사용하기에...
+ 나스닥 시세에 따른 종목 등락율(x일별,주별,월별)
+ 코스피 시세에 따른 종목 등락율(x일별,주별,월별)
+ 코스닥 시세에 따른 종목 등락율(x일별,주별,월별)

## 기타 아이디어
+ 제목: 2차 거르기 방법: 1차로 걸러낸 high_point table의 하락 등락률 을 매일 내역에 저장한다. ( high_point_day_hist 내역 테이블 )  2차로 내역 테이블에서 많이 등장하는 종목명과 평균 하락률을 구하여 종목의 안정성을 평가한다.
+ 제목: 지수(코스피, 코스닥, 나스닥, 기타 등등)에 따른 종목의 변동률 방법: 어제와 오늘의 종료시점의 변동률을 구하고 종목의 어제와 오늘의 변동률을 구한 다음 지수의 변동률 분해 종목의 변동률 * 100 을 하여 구하면 지수에 따른 종목의 변동률을 구한다.
+ 인터넷에 제무제표 보는 방법이 많다. 제무제표를 통해 기업의 안전성등을 수치로 계산할 수 있는데 그 계산식을 검색하여 적용해 보자.


## 매수 조건  

종목 기준 
1. 저평가된 주식 : 저팡가된 주식이란 ? 


지수기준    
1. 지수(코스피,코스닥)이 하락했을떄
2. 나스닥이 하락했을떄 

지수 + 종목

지수 하락 수치에 따른 종목의 하락 수치를 보여준다.   
지수가 n 하락했을때 a종목은 nn하락했고 b종목은 nn하락했네   


## 매도 조건

현재 거래량이 급격히 늘었고 && 외국인이 많이 들어왔고 && 종목토론실 내용에  광고가 많이 나오고 && 관련 뉴스가 급증한다.   
네이버증권 인기검색에 올라온다.   
구글트렌드 인기검색 서치   
네이버트랜드 인기검색 서치   


## 변수명

상장기업    listed company
시세        price



