# 프로적트 소개

stock-write  :   데이터베이스 업데이트
stock-write-ticker  :   stock-write 실행 용   
stock-read-pub-api     :   api
stock-read-pub-site :   web-site

```
1990년부터 가격 넣는데  
노트북 cpu 100%  
   [걸린시간] Elipsed Time: 23m34.11977s 
데스크탑 절전모드  
   2021/06/17 17:13:49 [걸린시간] Elipsed Time: 35m28.4860863s
한것.
일단 가격-가격,마켓        
회사-코드,상태,상세       
다음.
info 
   업데이트하기   
BOUND 
   bound 스키마 종목_GTYPE으로 생성.
   종목 LOOP돌려서 GTYPE의 마지막 값 X1값 조회후. 
   거기에 해당하는 가격 목록 조회하는데 X1값이 0이면 모두 조회.
   모두 조회한것 리턴 받아서 BOUND_POINT배열에 하나씩 넣은다음.
   BOUND_POINT INSERT 하면 됨.

   종목별 계산 시간이 오래걸리니. 계산에 GO 걸고 
   계산다된 LIST 로 DB넣고.

   bound_point가 x1,y1 좌표와 x2,y2좌표와 계산 결과로 되어있는데.
   x1,y1 테이블 생성 as p1  x2,y2 테이블 생성 p2 
   아니지 p1 으로 다 커버 가능할것같은데.
   bound.코드.row 
      p1_id, p1_id,게산결과 이렇게 구조를 바꾸면.? 
      p1_id 에 해당하는 집계에 더 좋지 않을까?
      계산결과를 테이블에 저장해 놓고 외부키로 땡겨온다면?
      검색할때 더 좋지 않을까? 
   2021/06/17 21:30:33 [걸린시간] Elipsed Time: 48m31.9645068s
   
      
   
   


```

---

## 기타

   | item                | lang   | dev   | prod  |
   | ------------------- | ------ | ----- | ----- |
   | stock-write         | golang | local | ec2.1 |
   | stock-write-ticke   | golang | local | ec2.1 |
   | stock-read-pub-api  | golang | local | ec2.1 |
   | stock-read-pub-site | vuejs  | local | ec2.1 |
   
---
## 설치
stock-write
   1. cd stock-write
   2. go run . -run=init  (오래걸림: 모든 종목 시세데이터 가져옴.)
    
---
## 실행
1. dbment
   1. cd stock-write
   2. go run . -run=daily

---
### postgres 백업
1. export
    ```
    postgres container 
    export
    su - postgres
    pg_dump  dev  -n company >> company.dumpFile.sql
    pg_dump  dev  -n public >> public.dumpFile.sql
    pg_dump  dev  -n utils >> utils.dumpFile.sql
    pg_dump  dev  -n price >> price.dumpFile.sql
    pg_dump  dev  -n market >> market.dumpFile.sql
    pg_dump  dev  -n bound >> bound.dumpFile.sql

    window 
    docker cp stock-write_db_1:/var/lib/postgresql/public.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//public.dumpFile.sql
    docker cp stock-write_db_1:/var/lib/postgresql/company.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//company.dumpFile.sql
    docker cp stock-write_db_1:/var/lib/postgresql/utils.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//utils.dumpFile.sql
    docker cp stock-write_db_1:/var/lib/postgresql/price.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//price.dumpFile.sql
    docker cp stock-write_db_1:/var/lib/postgresql/market.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//market.dumpFile.sql
    docker cp stock-write_db_1:/var/lib/postgresql/bound.dumpFile.sql C://Users//cheolgyu//Desktop//backup//dumpFile//2021-06-17//bound.dumpFile.sql

    ```
2. import
    ```
    import
    su - postgres
    psql --dbname prod --host database-stock-1.czunxjjslnrd.ap-northeast-2.rds.amazonaws.com --port 5432 --username postgres < dumpFile.sql    
    psql --dbname dev  < ./data/dumpFile/2021-06-17/public.dumpFile.sql
    psql --dbname dev  < ./data/dumpFile/2021-06-17/company.dumpFile.sql
    psql --dbname dev  < ./data/dumpFile/2021-06-17/utils.dumpFile.sql
    psql --dbname dev  < ./data/dumpFile/2021-06-17/market.dumpFile.sql
    psql --dbname dev  < ./data/dumpFile/2021-06-17/price.dumpFile.sql
    psql --dbname dev  < ./data/dumpFile/2021-06-17/bound.dumpFile.sql
    

    window 
 
    ```

---
## 빌드
```
golang 환경변수 설정 (powershell)

$env:GOOS = 'linux'
$env:GOARCH = 'amd64'
    
```
1. dbment
   1. cd stock-write
   2. go build -o bin/dbment main.go 
2. ticker
   1. cd backend/ticker    
   2. go build -o bin/ticker main.go
3. api
   1. cd backend/api
   2. go build -o bin/api main.go
4. site
   1. main 브랜치에 push시 빌드 및 배포
   
---
## 배포 
### ssh접속
   1. ssh -i "highserpot_stock.pem" ec2-user@ec2-3-35-30-100.ap-northeast-2.compute.amazonaws.com
### 준비
    ```
    chmod +x dbment 
    ```
    ec2 업로드 전 기존 프로세스 kill -9 p_id 시키기.

### ec2 업로드
1. cd C:\Users\cheolgyu\go\github.com\cheolgyu\stock\
   1. dbment
      1. scp -i "highserpot_stock.pem" .env.prod  ec2-user@3.35.30.100:~/.env.prod
      2. scp -i "highserpot_stock.pem" bin/dbment  ec2-user@3.35.30.100:~/dbment

### ec2 실행 명령어
1. ssh 접속
   1. dbment
      1. ticker에서 실행시킴
      2. 수동 
         1. ./dbment -run=daily -prod
---

### 참고 
+ dbment
  + 다운로드 데이터 시작일
    + init 다운데이터 시작일 정의한 곳 src\const.go
    + daily 다운데이터 시작일 정의한 곳 src\dao\info.go


---
## 다음 할것
<details markdown="1">
<summary>펼치기</summary>

+ 그래프별(저가,고가,종가,시가) bound_point 데이터 생성중인데. 노트북 절전모드에서 2시간째 만들고 있음.
   + 고루틴 필수로 있어야하고. 데이터 용량이 계속 커질듯.
   + 저장 무료 저장소로 돌려야 할듯.
   + 마이크로소프트 ondrive 돈내면 쓰고 있는것 있는데 ondrive 에서 저장하고 업데이트하고 하면될듯.
   + 아니면 구글드라이브도 있고.
   + 그럼 ec2에서 수신과 송신에 비용이 들어가는데 수신은 0원이고 송신시 비용이 들어감.
   + ebs 저장 가격보다 쌀듯 
   + 그럼 저장소를 ondrive로 바꾼다고 가정하면
      + file열떄. 요청보내고 응답오는  시간 +  파일의 seek 사용못함 + 응답은 전체파일임. 
      + 파일 수정하거나 새로만들기는?
      + 파일 수정하기가 없음. 파일 다운후 다음줄 추가해서 ec2에서 송신시켜야됨. ebs 써야겠다.
   + boundd 데이터만 3gb 되겠네.....................
   + [걸린시간] Elipsed Time: 2h51m4.510385s
   ------
+ file을 버리는 이유: 조인 및 검색이 어려움 db 다시 ㄱㄱ.
+ price다운로드후에 마지막줄 덮어쓰기 해야됨.
+ viewhandler 종목별 종가 저가 고가 시가  반등데이터 파일 열어서 마지막줄 가져온다음.
   + 잘 쌓아서 
      +  오늘view 파일저장. 
      +  project_info(최신 갱신날짜, 갱신 시간오래걸림: 시작, 작업중, 오늘끝 표현하기.) 파일로 저장.

+ 현재 할것
   1. price 이어쓰기
   2. bound_point 이어쓰기
   3. bound_point 누적데이터 만들고 마지막 누적 일자에서 부터 계산후 이어쓰기.
   4. bound_point 가 종가 기준계산했는데 저가,고가,종가 별로 나누기.
   5. 다운로드한것 지우기. 현재 데이터만 1.05GB



   ```
   /*
      // (price_startdate string, price_enddate string)

         data/company_detail/<code>.csv
         data/company_state/<code>.csv
         data/price/<code>.csv
         data/market/<code>.csv
         data/bound_point/price/<code>.csv
         data/bound_point/market/<code>.csv

         api-server는 읽기모드로 파일오픈 오류시 업데이트중 잠시후 오류 처리, 패닉뺴기
         dbment-server는 쓰기모드로 ㄱㄱ
      */
      //
      /*
         // 엑셀파일 다운로드
         download company_detail.xlsx

         row loop
         go row_parse
            print_csv()
               detail 저장
            
      */

      mk_price
         load_download_excel 파일 
         row range loop
            price(code,start,end) download
               price_parse
               print_csv()
                  price 저장
                  create or update

      /*
         // 엑셀파일 다운로드
         download company_state.xlsx
         row loop
            go row_parse
               print_csv()
                  state 저장
      */

      /*
         market_arr loop
            go price(code,start,end) download
               parse_price()
               print_csv()
                  market 저장
      */
      /*
         //bound_point 계산
         data/price/code loop
            go highpoint(code)
               open data/price/code.csv
                  100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면  null처리
                  print()
                     highpoint 저장

         data/market/code loop
         bound_point view_market loop
            go highpoint(code)
               open data/market/code.csv
                  100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면 다음 100줄 읽고 닫기
                  없으면  null처리
                  print()
                     highpoint 저장


      */
      /*
         create_view
         data/price/code loop
            code에 해당하는 bound_point 데이터 꺼내고
            code에 해당하는 state 데이터 꺼내고
            insert문 만들기

         data/market/code loop
            code에 해당하는 bound_point 데이터 꺼내고
            code에 해당하는 state 데이터 꺼내고
            insert문 만들기

         price,market insert문 실행.
      */
   ```

 --- 

+ 매수
  + 이 종목이 7일간의 거래에서 4번의 반등이 있었는데 2번은 상승이 였고 2번은 하락이였습니다.
    + 2번의 상승에서 평균 10퍼센트가 올랐으며 2번에 하락에 20퍼센트가 떨어졌습니다.
    + 구현하기.
  + db 말고 golang 으로 구현하기. 이유 rdb 비용이 ec2보다 큼.
    + rdb 비싼데 다이나믹디비 쓸까? 
  + 그리고 종가대비 퍼센트이지만 
      + 저가 그래프 기준 <== 매수 시점  
      + 고가 그래프 기준 <== 매도 시점  
  + 한강을 걷다보면 나와 앞에서  오는 자전거와 나와의 거리가 위험할때가 있음.
    + 이럴경우 앞에서오는 자전거가 내 근처에 왔을 시점에 자전거의 예상경로를 예측하려면?
      + 자전거가 멀리에서 부터 어떻게 왔는지 알아야 예측이 가능함. 
      + 바로 코앞에서 에상경로를 찾는건  아주 작은 지표를 봐야됨.
  + 스키마 point
    + 반등을 알려면 두점이 필요하고 이전과 다음 두 점과의 연속적으로 연결되어 있는 특징이 있음 
    + tb_종목코드
      + hdate(int)   hprice(float) hprice(float)
      + x1 (int8) ,y1 (float) ,x2(int8) ,y2(float) ,x_ticks(int8) ,y_minus(int) ,percent(float)
  + 스키마 point 저장 시점.
    + init 함수할때 아이템(종목)의 전체 가격을 가져오기때문에 init 할때가 적당함. db 넣기 전이고.
    + daily 에서는 마지막 점(일자,가격)에 따라 마지막 table row가 어떻게 될지가 find_point_역순()함수에 따라 결정됨
    + init 할때 종목 전체 파일 tmp 폴덛 만들어서 거기에 넣기.
    + 
  
  

  
+ 매수
    + 오늘 고저가 차이가 큰순으로 나열+ 상승그래프 구분 
    + 최근 일주일간 고저 차이의 평균값 알기.
    + 누적 n 일이고 고저차이의 평균이 크고 상승/하락 중인것 
    + 종목의 업종 불러와 업종 선택하기?

+ 매도    
    + 해당종목의 최근 10 건의 거래의 고저 차이의 평균이 있으니 최고에 근접할경우 팔기.



 
    
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

---

## 보류


+ dbment 실행 시간 날짜별로 로그 파일 생성하기. ==> db에  넣는데?
```
db => 몽고디비로 바꾸기.+ db함수 다 바꿔야됨 오래걸림 
dbment -> mongo 에 쓰고 
mongo의 일별 데이터만 redis 에 넣고    
redis와 api 연결지어 출력하기   
--> mongo 브랜치-stock-write/test/mongo.go 에 일부분 작성함.

```
---
## 작업한 기능
<details markdown="1">
<summary>펼치기</summary>

+ 변수명 바꾸기
   + bound_point => bound_point

+ 프로젝트명 바꾸기.
   + STOCK
      + stock-write
      + stock-write-ticker
      + stock-read-http-api
      + stock-read-http
+ front
  + ui 개선
  + 조회 조건에 상태값 추가
+ 종목클릭하면 페이지 이동해서? 저가 고가 종가 시가 차트 나오게하기
+ 마켓나오게 하기.
+ api 요청 로그 남기기 파일로 저장하기.
+ dbment-LOG 테이블 변경( 한눈에 파악하기 힘듬)
+ ticker 예상대로 안됨.
+ tcker 로그 파일 생성하기

백엔드 view_price 페이징 요청 기능 및 db 조회
프론트 테이블 내용 백엔드에서 요청해서 가져오기.


+ 프론트 
    + 마켓테이블 조회
    + 테이블 위에 검색 하기 추가 + db에 막 날리수 있기 때문에 시큐리티 적용해서  추가하기
+ + data.json 과 info.json으로 나누기 (info.json) 먼저요청해서 updated_date 기준으로 다시요청하기.
+ + 변경된 data.json 구조 적용 하기. 
+ + data.json 은 localstoreage 저장하고 없으면 요청하기
+ + 즐겨찾기 기능. localstoreage에 저장

+ dbment
  + 코드 정리 
    + 코드에서 일별,주별,월별 제거
    + price,market
      + 컨트롤러 하나로
      + insert_or_update sql function 추가
    + bound_point 
      + 컨트롤러 하나로 price,market 
      + table 칼럽명 수정
      + bound_point 찾는 sql 함수 golang으로?
    + 
  + data.json 과 info.json으로 나누기 (info.json) 먼저요청해서 updated_date 기준으로 다시요청하기.
  + sql price init/daily 함수 생성 (insert 내용이 배열로 있는경우)
  
  + export.sql 생성
  + export.sql로 select 
  + 후 data.json 만들어 ec2 upload 기능 (보류)

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
+ 제목: 2차 거르기 방법: 1차로 걸러낸 bound_point table의 하락 등락률 을 매일 내역에 저장한다. ( high_point_day_hist 내역 테이블 )  2차로 내역 테이블에서 많이 등장하는 종목명과 평균 하락률을 구하여 종목의 안정성을 평가한다.
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

+ aws rdb 사용량 줄이기
  + ec2 내부이용
    + mini db넣기
    + 미니 디비말고 ec2에서 매일 작업후에 데이터셋을 s3로 업로 시킨다. 프론트(s3)에서 데이터 요청을 s3로 한다. 프론트에서 데이터를 처리한다.
      + 이 방법은 데이터셋(view) 2000종목을 한번에 다운로드한다. 
      + 이 방법은 차트 데이터를 한번에 다운로드한다. 
      + 이 방법을 쓸때 프론트에서 요청시 최신데이터 정보를 조회 후 최신정보가 있을 경우에만 요청을 보내야하고 받은 정보는 브라우저에 저장해 놔야한다.
   + aws ec2,rdb,elb(ec2-https 용) 켜보니 rdb> elb> ec2 순이다.  rbs는 ec2의 2배의 비용 elb는 ec2의 1.5배 비용이 든다. 12 일 켜놓으니 총 (22달러)2만5천원 정도 든다. 켜놓는 비용만.^^
   + ec2안에 db와 api와 ticker와 dbment 까지 다 넣고 https 인증서 수동으로 넣고 ec2만 사용한다고 가정하면
      + ec2 dbment가 켜지는 순간 메모리 cpu 부족해 져서 멈출수도 있지만 db를 사용할수 있다는 장점이 있다.
      + s3만 쓰다가 api서버를 붙인 이유가 데이터셋.json의 용량이 크니 줄여서 호출하려는 이유가 컸다.
      + db가 필요한 이유가 머냐? 데이터를 부분 부분 넘겨주기 위해서 사용.
   + 방안1. s3에 다 때려박고 특정시간에만 ec2 켜서 dbment 실행시켜서 s3에 데이터 업로드 하기.
   + 방안2. s3+ec2(docker-container db, api, ticker+dbment ) 사용하기. 12일 기준 4.5달러 정도 비용청구됨. 
      + 사용자 입장에서도 방안1. 보다는 방안2가 조금더 나을수 있으나 과연 t2.micro 성능으로?
   + 지금 저가로 이득을 얻기보단 수평 수직적으로 활용 가능한 아키텍처로 만들자.
      + rdb말고 다이나믹 db로 바꿀까 ? 
      + api 는 증감이 있고 dbment는 고정적.
      + s3 는 그대로  냅두고 
      + api 람다와 AWS CloudFormation 및 AWS Instance Scheduler 로 ec2 실행시켜 dbment 실행시키기 
      + ec2안에 mongo 두고 하루종일 키기와 dynamic or document 하루종일 키기 비교해보면?
         + ec2 t2.mirco 하루종일 키면 한달에 기본 10.51 달러+ 저장소 비용.
         + Amazon DynamoDB 는 킨 비용은 없고 쓰고 읽고 저장 비용이 있지만 저렴한편.
      + api 람다와 CloudFormation스케줄링 dbment(dbment에서 s3 시세정보 업데이트하기)
         + 프론트에서는 
            + S3에 있는것 통으로 가져올까?
            + 람다 API 통해서 aws dynamoDB API 통해서 VIEW_TABLE 가져올까?
            + 데이터는 시세정보 데이터와 회사정보데이터와 가공한 반등지점 데이터가 있다.
               + 회사정보와 시세정보 데이터는 상세보기페이지에서 차트와 회사정보 보여주는 용도.
               + 반등지점 데이터가 주로 사용하는 데이터이다.
               + 시세정보는 잘안쓰는데 용량이 크다. 
               + 반등지점은 자주 쓰고 용량이 작다.
                  + API에서 반등지점 처리는 내부 메모리에 저장 후 페이징, 조건검색, 소트 처리, DBMENT에서 요청하면 S3에서 읽어서 반등데이터 갱신하기.
                  + API에서 시세정보 처리는 외부 S3에 있는것 페이징해서 응답해주기
                  + API에서 회사정보 처리는 외부 S3에 있는것 응답해주기.
                  + S3가 PUT, COPY, POST, LIST 요청 1천개당 0.0045 USD 인데 하루에 3천개 종목을 갱신하면 0.0135 이고 30일하면 0.405 달러이네.
      + 시세데이터 저장소 비교
         + EC2 (EBS) VS S3
            + S3: GB당 0.025 USD
            + EBS(GP2):  0.11 USD
            + DYNAMODB: 월별 GB당 0.27075 USD (인덱스 포함.)
      + 저장소 이용 비교
         + S3 1기가 하루에 3천번 한달이면 0.405 추가되니 EBS가 더낫네.
      + EBS 시세정보+회사정보 1기가 로 생성하기.
      + EC2 EBS 1기가에 회사정보,시세정보 넣기.
      + EC2 TICKER,DBMENT,API,FRONT 넣기. 
      + DBMENT는 DATA(가격,회사,반등포인트) 쓰기 작업이고 API는 파일 읽기 작업 및 FRONT보내주고.
+ ec2 하나로 쓰기
   + 저장소 ebs 파일로 관리하기.
   + api 서버는 시세,회사는 파일에서 읽고 반등정보는 변수로 담았다가 dbment가 요청 보내면 업데이트하기.


