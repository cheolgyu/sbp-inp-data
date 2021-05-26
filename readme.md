# 프로적트 소개

backend/dbment  :   주식 데이터베이스를 업데이트 하고 필요한 지표를 계산하고 데이터베이스에 저장하는 용도   
backend/ticker  :   dbment 실행 용   
backend/api     :   frontend-app의 요청응답.   
frontend/app    :   [public web site](https://github.com/cheolgyu/stock-app)

## 실행방법
dev
```
docker-compose up 시키고 
수동으로 실행 해야될 목록

db\init\*.sql 쿼리 실행하기.

평일 장열린날 할것
backend/dbment  :   go run . -run=daily  -prod

프로젝트 처음 할것 (오래전 주식 데이터 수집)
backend/dbment  : go run . -run=init  

```


### postgres export
```
postgres container 
export
su - postgres
pg_dump  dev >> dumpFile.sql

window 
docker cp corplist_db_1:/var/lib/postgresql/dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-05-27.sql

```
### postgres import
```
import
su - postgres
psql --dbname prod --host database-stock-1.czunxjjslnrd.ap-northeast-2.rds.amazonaws.com --port 5432 --username postgres < dumpFile.sql    

window 
docker cp corplist_db_1:/var/lib/postgresql/dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-05-27.sql

```
### 빌드배포
+  backend : (local) go build ==> ec2 upload
    ```
    ==============
    backend/dbment
    ==============
    $env:GOOS = 'linux'
    $env:GOARCH = 'amd64'

    cd backend/dbment
    go build -o bin/dbment main.go project.go

    ==============
    backend/ticker
    ==============
    cd backend/ticker
    $env:GOOS = 'linux'
    $env:GOARCH = 'amd64'
    go build -o bin/ticker main.go

    scp -i "highserpot_stock.pem" backend/dbment/bin/dbment  ec2-user@3.36.62.138:~/dbment
    scp -i "highserpot_stock.pem" backend/dbment/.env.prod  ec2-user@3.36.62.138:~/.env.prod
    scp -i "highserpot_stock.pem" backend/ticker/bin/ticker  ec2-user@3.36.62.138:~/ticker
    ssh -i "highserpot_stock.pem" ec2-user@ec2-3-36-62-138.ap-northeast-2.compute.amazonaws.
    chmod +x ticker
    chmod +x dbment

    nohup ./ticker    > ticker.out &

    ./dbment -run=test -prod
    ./dbment -run=daily -prod
    ```
+ frontend: github action -> s3 upload    
## 흐름

```
ticker와 dbment를 빌드하여 ec2에 올리고
ticker 를 실행시킨다.(ticker readme.md 참조)
dbment에서 rds를 업데이트한다.
api는 rds에서 데이터를 가져온다.

aws ec2 안에 ticker와 dbment와 api 가 들어 있고 ( + 나중엔 레디스 응답캐시 넣기.)
aws rds는 dbment(특정시간에만)와 api가 사용하고
aws s3에 frontend 배포함.
aws s3와 생성된 탄력적ip로  ec2가 연결

```

## 프론트
+
## 백엔드 
+ api
+ dbment
    + 참고
        + init 다운데이터 시작일 정의한 곳 src\const.go
        + daily 다운데이터 시작일 정의한 곳 src\dao\info.go
+ ticker


## 다음 할것
<details markdown="1">
<summary>펼치기</summary>


```
수정하기
```

+ 저가 고가 종가 그래프 보기.
+ dbment
+ + sql price init/daily 함수 생성 (insert 내용이 배열로 있는경우)
+ ?


+ LOG 테이블 변경( 한눈에 파악하기 힘듬)
   
+ 종목별 안정성 공식 넣어보기
+ 누적일수 : 하이포인트 유지 일수 추가하기.
+ + 누적일수 10일 이상 되는 종목들 보니 
+ + + 종목에 전체 기간의 하이포인트에서 누적일수 데이터를 알고 있다면 
+ + + + 그 종목이 떨어졌을때 사야겠지? 
+ + + + + 그래서 종목 전체 기간의 가격 데이터를 가져오고
+ + + + + high_point를 고점에서 멈추지 않고 가격 시작일 까지 돌려서 
+ + + + + 종목의 전체기간에 대한 high_point를 high_point_count 테이블에 저장한다면? 
+ + + + +  상승 그래프르와 하락 그래프에서 평균 누적일 수를 알수 있고
+ + + + +  최근 한달간 상승과 하락의 평균 누적일 알고 있다면
+ + + + +  상승과 하락의 평균 누적일에 가까워 질때 매매 하면 되겠지?
+ + + + + + 그럴려면 price.종목 에 전체 기간의 가격데이터가 있어야되고
+ + + + + + avg_stock.종목의 누적일 테이블에 누적방향,누적시작일,누적수 이있어야되지
+ + + + + + 매수매도기준이 되는 평균은 trading.avg_stock 에 종목별 상승평균, 하락평균이 있어야되고 실제 쓸때는  기간별로 조회할까? 아니면 trading.avg_day,
trading.avg_month 로 할까? 



+ 나스닥 변동률에 따른 변화량  구하기 ===? .... 쓸모없나 ?> 
> 나스닥이 1퍼 떨어질때 a 종목은 몇퍼 떨어졌나 알 필요가 있을까? 
>> 나스닥이 마지막 고점에서 x퍼 떨어질때 마지막고점 날짜에서 종목은 몇퍼 떨어졌나? 알필요 있을까?


    1. 나스닥 테이블 생성
    2. 나스닥 데이터 일별 다운로드
    3. 나스닥 데이터 가공 
    4. 나스닥 데이터 저장
    5. 나스닥 일별 전일대비 종복의 전일대비 
</details>

## 보류
```
db => 몽고디비로 바꾸기.+ db함수 다 바꿔야됨 오래걸림 
dbment -> mongo 에 쓰고 
mongo의 일별 데이터만 redis 에 넣고    
redis와 api 연결지어 출력하기   
--> mongo 브랜치-backend/dbment/test/mongo.go 에 일부분 작성함.

```

## 작업한 기능
<details markdown="1">
<summary>펼치기</summary>

+ 프론트 
+ + data.json 과 info.json으로 나누기 (info.json) 먼저요청해서 updated_date 기준으로 다시요청하기.
+ + 변경된 data.json 구조 적용 하기. 
+ + data.json 은 localstoreage 저장하고 없으면 요청하기
+ + 즐겨찾기 기능. localstoreage에 저장

+ dbment
+ + data.json 과 info.json으로 나누기 (info.json) 먼저요청해서 updated_date 기준으로 다시요청하기.

+ export.sql 생성
+ + export.sql로 select 
+ + 후 data.json 만들어 ec2 upload 기능 (보류)

+ listed_company 기준으로 가격 조회하는데 listed_company은 업데이트 안하는중; 신규 회사 없음; < 추가함.
+ 고루틴 적용 + init daily 테스트 완료. + 서비스 따로 뺴고  price,company,state,market 폴더에서  네이버차트,data_krx 폴더 별로 기능 묶어버림.
```
고루틴 적용
기존 순서
daily
1. 회사-회사상태

    1. 회사상태 전체 목록 엑셀다운.
    2. for 돌려서 한줄씩 array에 추가
    3. 배열 전체 sql파일 만들기
    4. sql 파일 실행.

go run test/main.go
엑셀파일 한줄 읽어 sqlfile 에 추가.
다되면 sqlfile 실행.



회사-가격정보-highpoint
마켓정보-highpoint


===================

price 
    naver_chart
        daily - oneFile run
        init - eachFile run
market
    naver_chart
        daily - oneFile run
        init - eachFile run        
company_state
    data_krx
        daily - onefile run
        init - onefile run

===================

naver_chart
    oneFile Run
        price-daily
        market-daily

        list, start,end, fnm, seednm 
        write() sql 쿼리가 다름. init 용과 daily용이 다름. 

    eachFile Run
        price-init
        market-init
        
        list, start,end, fnm, seednm 
        write() sql 쿼리가 다름.

===================
```
+ 코드정리
+ + const.go 1차원 배열에서 3차원 배열로 수정 : 한눈에 보기 어려움.
+ + 여러 dao의 각각의 seed 실행 함수 하나로
+ + 파일 생성할 때 string 모아 한번에 쓰기보다 loop안에서 바로바로 쓰게 수정 및 쓰기 공통함수 추가 ==> 속도 개선됨.
+ + 

+ init_market 나스닥,코스닥,코스피 + high_point_market ===> 코스닥,코스피, src\const.go....GetMarketList() 참조
+  init 시세데이터 시작일 변경. 및 데이터 초기화
+ go run . 파라미터<init,daily> 로 작업 시작게 바꾸기
+ 종목의 전일대비 퍼센트가 아닌 (일별 데이터에서 )마지막 상승에 따른 하락 퍼센트를 보여준다   
(주별, 월별 시세 데이터 작업도 해놓으면 유용할듯 하다. )
+ 로그 남기는 기능
+ 실행후 info 테이블 업데이트

+ db init.sql에 한국시간으로 변경하는 쿼리 넣기 ==> docker-compose.db.TZ으로 설정

+ 매일
+ + 시세업데이트
+ + + 중복날짜에 1건일 경우 업데이트 되게 변경 : 같은날 여러번 실행시 
+ + + 가격/마켓가격 조회시 -3 일 부터 시작하여 이전에 있던 데이터는 업데이트 하기

+ 지정내역
+ + 기업상태 업데이트 : 관리종목, 거래정지된애 표시해야됌. 그러므로 기업정보도 데일리 해야하지만 지금은 기업 기본정보고 기업상태정보 테이블에다가 업데이트하면되겠다. ==> src\controller\listed_company\daily_listed_company_state.go 
+ + +  [전종목 지정내역](http://data.krx.co.kr/contents/MDC/MDI/mdiLoader/index.cmd?menuId=MDC0201020201)       
+ + + + 초기화   
테이블 생성 -> 엑셀다운 -> 파싱 -> 디비저장 -> info 업데이트   
+ + + + 매일   
   엑셀다운 -> 파싱 -> 디비업데이트 -> info 업데이트   
+ + + + view 테이블 변경   
현재 상태 칼럼 추가  배열로 넣고  지정내역의 로우 넣고 웹에서는 배열 ox 값으로 배지 출력.

+ 스케줄러 시작과 완료를 테이블에 저장하여 사용자가 페이지를 볼때 언제 데이터로 작업한것이지 알게한다. 
(log 테이블 만들고 메타 테이블 만들어 시세와 기능별 최신 작업한 시간을 저장해 놓는다.) ==> info 테이블
+ 데이터베이스화 하는데 시간이 오래걸린다...(모든 종목의 시세를 가져와 마지막 상승에 따른 하락 퍼센트 계산하고 저장하는 데 내컴퓨터에서 130초 정도 소요되고 주별,월별로 작업하면 x3 소요되고, init할때는 몇 십분걸린다. 모든 종목 시세 데이터를  엑셀로 다운하고 파싱해서 db에 넣기까지  그러므로 내컴퓨터에서 작업하여 sql만 만들고 클라우드 디비에 넣기는 방법은?) 내컴퓨터에서 업데이트하여 sql을 파일로 저장후에 sql파일을 클라우드에 업로드하여 실행하는건 어떨지?  그러면 디비도 딱히 필요없지 않을까 html 파일만 들어서 서버에 넣어주면 되니깐? 이게 좋은 방법일 수도 있다. ==> web/static/data/*.json 으로 가치 올림.
</details>

## 제외 기능
<details markdown="1">
<summary>펼치기</summary>


+ 매일 가격 조회시 시작일을 -1일 인지 -3일 인지 결정하는 테이블 만들어서 가져오기 ==> 굳이 db화 할필요없음.
+ + 지금은 코드로 박혀 있음. 

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
listed_company 상장기업
listed_company_state 상장기업 지정내역 
price 가격
```



