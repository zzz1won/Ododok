최종 프로젝트 제출 기획안

작성일 : 2022. 1. 3
작성자 : 박지원
1. 프로젝트 명 : 오도독! 오늘도 도서관에서 독서하자!
2. 주요 기능
    - 메인페이지
        > index : 인덱스페이지에서 버튼을 누르면 메인화면으로 이동합니다.
        > main : 메인화면은 로그인과 마이페이지 버튼이 있어 다양한 활동이 가능합니다.
    <br>
    - 회원 관리
        > 회원가입, 회원정보수정이 가능합니다.
        > 로그인, 로그아웃 기능이 구현되었습니다.
        > 관리자는 회원목록을 조회할 수 있습니다.
        > 다양한 포인트 제도
            - 게시글 작성시 10p를 적립할 수 있습니다.
            - 댓글 작성시 5p를 적립할 수 있습니다.
            - 도서 기부시 1000p를 적립할 수 있습니다.
            - 도서 구매시 5000p가 차감됩니다.
            - 포인트 내역은 메인페이지에서 확인이 가능하지만 정확한 확인은 재로그인시 확인이 가능합니다.

    - 도서관 관리
        > 사이트에 대한 일반적인 설명이 나와있습니다.
        > 관리자는 행사를 추가할 수 있습니다.
        > 다양한 행사를 확인 할 수 있습니다.
        > 인천 미추홀구의 도서관 목록을 확인 할 수 있습니다.
    
    - 도서 관리
        > 실제 인기도서 DB를 Excel로 받아와 직접 odd_book table에 추가하였습니다.(+엑셀기능 응용)
        > 도서 검색 기능을 구현하여 해당 도서를 출력하고 상세정보를 확인 할 수 있습니다.
            - 이 경우 해당 도서를 보유하고있는 도서관이 출력됩니다.
        > 리뷰 기능 구현
            - 로그인 시 별점, 한줄평을 줄 수 있습니다.
            - 회원이 아닐 경우 리뷰는 확인만 가능합니다.
        > 도서 기증과 구매가 가능합니다.
            - 기증 된 도서를 구매할 수 있으며 포인트가 없을 시 구매가 되지 않습니다.
            ( 사실 아직 구현하지 않아 금액이 마이너스가 됩니다, 수정 예정! )
            - 도서를 구매했을 경우 도서의 상태가 '보유' 에서 '기증완료' 로 변경되며 즉시 구매목록에서 숨겨집니다.
    
    - 게시판 관리
        > 글 쓰기, 글 수정, 글 삭제가 가능합니다.
        > 글 상세조회시 조회수가 증가합니다.
        > 공지사항 테이블을 따로 만들어 union처리 하였고 상단에 공지사항 중 3가지를 출력한 상태입니다.
        > 댓글 기능 구현
            - 로그인 시 댓글 작성, 수정, 삭제가 가능합니다.
            - 공지사항에는 댓글을 달 수 없습니다.



프로젝트 기획안

작성일 : 2021. 12. 14
작성자 : 박지원
1.	프로젝트 명 : 오도독 ____

2.	기획 의도

    -  오도독 오늘 도서관에서 독서합시다! + (가제:미추홀_에서) 
    [ 도서관 x 독서 ] 를 메인으로 둔 도서관 커뮤니티 사이트입니다.
    실제로 도서관, 독서실은 아니며 도서관과 연계된 센터를 운영하는 컨셉입니다.

    - 최근 코딩공부를 할 때 도서관을 갈까 고민하며 도서관 사이트에 들어갔던 것과
    지난 번 전 기수 수강생의 최종프로젝트 프레젠테이션에서 영감을 받은 것,
    요즘 MZ세대는 문맹률은 낮은데 문해력 또한 저하되었다는 기사를 보고 구상했던 내용입니다.
    당시에는 기능이 너무 많아서 최종프로젝트에나 응용할 수 있지 않을까 했지만
    스프링을 배우며 응용을 한다면 어느정도 수준은 구현할 수 있을 것 같아 기획안을 올리게 되었습니다.
    
    - 회원기능 | 도서관소개 | 도서관련 | 게시판 크게 4가지 메뉴를 두고 진행 예정입니다.
    상세설명은 하단에 기재하겠습니다.

3.	벤치마킹 
    인천광역시 평생학습관, 미추홀 도서관의 포맷을 따라갈 예정이며 
    레이아웃은 자체적으로 꾸밀 예정입니다.


4.	주요 기능 안내
    A.	회원 / 비회원 
        비회원으로도 글 조회 등 간단한 이용은 가능하지만
        봉사활동, 원데이 클래스 등등 세부 기능은 잠금 처리 되어있어 확인할 수 없습니다.

    B.	도서관
        - 홈페이지 이용안내
        - 미추홀(or 인천 전역) 도서관 소개 > 간단한 소개 후 링크를 걸어 실제 홈페이지로 이동시킬 계획입니다.
  
    C.	도서(고민중)
        - 추천도서, 베스트셀러를 띄우고 싶습니다.
        - 도서 검색기능 추가하고픈...

    D.	게시판
        - 오도독 글쓰기 프로젝트 [ 수필 / 독후감 ]   을 기본 게시판으로 설정 후 추가하고 싶은 게시판들입니다.
        - 일반 게시판 [ 칭찬해요 / 질문해요 ]

5.	기타 	
    위의 기능 실행 후 추가하고 싶은 기능들입니다~
    + 빵빵한 책방 [ 도서 중고거래 포인트로 사고 팔아요. 도서는 오프라인에서 수령가능 ]
    + 독서토론 게시판 [ 온라인 / 오프라인]
    + 봉사활동 / 재능기부
    + 원데이 클래스
