# database info 

## 스키마 
    hist 내역저장
    meta 기본정보
    public 공용
    utils 기타
    project 아이디어프로젝트 단위

## 테이블


    meta.config 
        코드 분류 기준
    meta.code
        코드
    meta.opening
        장열린날

    hist.price
        가격정보 종목,지수
    hist.rebound
        반등내역 저장

    public.tb_rebound
        반등내역 가공
    
    public.company
        회사 기본정보
    public.company_detail
        회사 상세정보
    public.company_state
        회사 상태정보
    public.info
        업데이트일시

    utils.log
        프로세스별 로그
    utils.quote_unit
        단위호가 테이블

    project.tb_line
        y= mx+b 에 대한 정보 ( 점 두개 연결해서 예측선 그리기)

## 뷰
    public.view_stock
        반등정보 종목
    public.view_market
        반등정보 마켓
