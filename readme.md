# 프로적트 소개
이 프로젝트는    
주식 데이터베이스를 업데이트 하고 필요한 지표를 계산하고 데이터베이스에 저장하는 용도로 사용한다.    
보여주는건 별도의 [web 프로젝트](https://github.com/cheolgyu/stock-app) 를 생성하여 진행한다.   

## 실행방법

```
docker-compose up 시키고 
수동으로 실행 해야될 목록

migrations\company\init.sql

-- high_point 계산
migrations\high_point\comm.sql
migrations\high_point\market.sql
migrations\high_point\price.sql

-- view 출력
migrations\fun\export_fun.sql
migrations\view.sql

평일 장열린날 할것
go run . daily
export.txt 보고 json 파일 만들기 ( 나중에 .sh 로 만들기)
json 만든것 web.main 브랜치에 pull request 하기
pull request하면 s3 배포 (git actions 이용해서 만들어놈.)

처음 할것
go run . init

```
## 기준
> 다운데이터 시작일 정의한 곳 src\const.go



## 다음 할것
<details markdown="1">
<summary>펼치기</summary>

+ ?
+ LOG 테이블 변경( 한눈에 파악하기 힘듬)
+ 종목별 안정성 공식 넣어보기


 ``` 
로그테이블 변경
id, up_id, process ,  main_action, main_action_type, sub_action, sub_action_type , etc... 
a, ab,  company_listed init start ...
a, ab,  company_listed init start  download start
a, ab,  company_listed init start  download end
a, ab,  company_listed init start  parse start
a, ab,  company_listed init start  parse end
a, ab,  company_listed init start  insert start
a, ab,  company_listed init start  insert end
a, ab,  company_listed init end  insert end

a, ab,  company_state init start ...
a, ab,  prcie_day init start ...
```

+ 나스닥 변동률에 따른 변화량  구하기 ===? .... 쓸모없나 ?> 
> 나스닥이 1퍼 떨어질때 a 종목은 몇퍼 떨어졌나 알 필요가 있을까? 
>> 나스닥이 마지막 고점에서 x퍼 떨어질때 마지막고점 날짜에서 종목은 몇퍼 떨어졌나? 알필요 있을까?


    1. 나스닥 테이블 생성
    2. 나스닥 데이터 일별 다운로드
    3. 나스닥 데이터 가공 
    4. 나스닥 데이터 저장
    5. 나스닥 일별 전일대비 종복의 전일대비 
</details>


## 작업한 기능
<details markdown="1">
<summary>펼치기</summary>

3. init_market 나스닥,코스닥,코스피 + high_point_market ===> 코스닥,코스피, src\const.go....GetMarketList() 참조
2. init 시세데이터 시작일 변경. 및 데이터 초기화
1. go run . 파라미터<init,daily> 로 작업 시작게 바꾸기
+ 종목의 전일대비 퍼센트가 아닌 (일별 데이터에서 )마지막 상승에 따른 하락 퍼센트를 보여준다   
(주별, 월별 시세 데이터 작업도 해놓으면 유용할듯 하다. )
+ 로그 남기는 기능
+ 실행후 info 테이블 업데이트
+ db init.sql에 한국시간으로 변경하는 쿼리 넣기 ==> db컨테이서 환경설정 수정
+ 시세업데이트시 중복날짜에 1건일 경우 업데이트 되게 변경 : 같은날 여러번 실행시 

> 기업상태 업데이트 : 관리종목, 거래정지된애 표시해야됌. 그러므로 기업정보도 데일리 해야하지만 지금은 기업 기본정보고 기업상태정보 테이블에다가 업데이트하면되겠다. ==> src\controller\listed_company\daily_listed_company_state.go 
>>  [전종목 지정내역](http://data.krx.co.kr/contents/MDC/MDI/mdiLoader/index.cmd?menuId=MDC0201020201)       
>>> 초기화   
테이블 생성 -> 엑셀다운 -> 파싱 -> 디비저장 -> info 업데이트   
>>> 매일   
   엑셀다운 -> 파싱 -> 디비업데이트 -> info 업데이트   
>>> view 테이블 변경   
현재 상태 칼럼 추가  배열로 넣고  지정내역의 로우 넣고 웹에서는 배열 ox 값으로 배지 출력.

+ 스케줄러 시작과 완료를 테이블에 저장하여 사용자가 페이지를 볼때 언제 데이터로 작업한것이지 알게한다. 
(log 테이블 만들고 메타 테이블 만들어 시세와 기능별 최신 작업한 시간을 저장해 놓는다.) ==> info 테이블
+ 데이터베이스화 하는데 시간이 오래걸린다...(모든 종목의 시세를 가져와 마지막 상승에 따른 하락 퍼센트 계산하고 저장하는 데 내컴퓨터에서 130초 정도 소요되고 주별,월별로 작업하면 x3 소요되고, init할때는 몇 십분걸린다. 모든 종목 시세 데이터를  엑셀로 다운하고 파싱해서 db에 넣기까지  그러므로 내컴퓨터에서 작업하여 sql만 만들고 클라우드 디비에 넣기는 방법은?) 내컴퓨터에서 업데이트하여 sql을 파일로 저장후에 sql파일을 클라우드에 업로드하여 실행하는건 어떨지?  그러면 디비도 딱히 필요없지 않을까 html 파일만 들어서 서버에 넣어주면 되니깐? 이게 좋은 방법일 수도 있다. ==> web/static/data/*.json 으로 가치 올림.
</details>


## 필요기능
+ 장열림 스케쥴러: go run . daily 실행시키기 귀찮음.
+ 매수 매도 기능을 위한 예측선 구하기.

## 기타 아이디어
+ 제목: 2차 거르기 방법: 1차로 걸러낸 high_point table의 하락 등락률 을 매일 내역에 저장한다. ( high_point_day_hist 내역 테이블 )  2차로 내역 테이블에서 많이 등장하는 종목명과 평균 하락률을 구하여 종목의 안정성을 평가한다.
+ 제목: 지수(코스피, 코스닥, 나스닥, 기타 등등)에 따른 종목의 변동률 방법: 어제와 오늘의 종료시점의 변동률을 구하고 종목의 어제와 오늘의 변동률을 구한 다음 지수의 변동률 분해 종목의 변동률 * 100 을 하여 구하면 지수에 따른 종목의 변동률을 구한다.
+ 인터넷에 제무제표 보는 방법이 많다. 제무제표를 통해 기업의 안전성등을 수치로 계산할 수 있는데 그 계산식을 검색하여 적용해 보자.
+ 퍼센트가 높으면 수직 상증 중인 종목인것이니깐 몇일간 몇 퍼센트 연속 상승중인  뱃지를 달아놓고 몇일간 지속되는 순으로 정렬해서 보여주자.
+ 마지막 상승에 따른 하락 퍼센트 주별, 월별 데이터 담을 테이블 생성과 기존 테이블에 _day붙이고 view에 _day붙이고 기능 수정하기.

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
```
listed_compnay 상장기업
listed_compnay_state 상장기업 지정내역 
price 가격
```



