# bit

2019/06/24 ~ 2019/12/24

bit 학원에서 한 미니 팀 과제

miniProject1 & miniProject2



miniProject1
  
  : 회원가입 및 로그인 후 방명록, 게시판 기능을 처리를 하기 위한 프로그램
  
  결과물 : https://blog.naver.com/sws_221/221709681797
  
  
miniProject2
  
  1 : 동적으로 메뉴를 추가, 수정, 삭제, up, down 버튼을 이용해서 jQuery로 구현
  
  1script : 1번 javascript 버전
  
  
  
  2: DOM을 이용해 HTML 요소를 간단하게 만들어주는 make 함수 구현(javascript)
  
  사용예)
    var body = document.getElementsByTagName('body')[0];

    var div = make("div", {'style':'background-color:red', 'id':'div1' }, "hello world");
    body.appendChild(div);

    var tds = [make("td", { },"Name"), make("td", { },"Type"), make("td", { },"Value")];
    var tr = make("tr", { }, tds);

    var table = make("table", {'style':'border: 1px solid red;' }, tr);
    body.appendChild(table);


  3: 알고리즘 구현 (javascript)
  
   3-1 : 중위 순회, 전위 순회, 후위 순회, 최대/최소값 구하는 알고리즘 구현
    
   3-2 : 하노이타워 알고리즘 구현
    
    
  4: 달력 구현
  
  
  5: 동적 Tree메뉴를 제공하는 객체 구현
  
    관리자 메뉴
      부하직원조회
      결재승인
      결재내역조회
    직원 메뉴
      결재신청
      급여정보조회
      인사정보조회
    관리자메뉴
      기준관리
      근무현황조회
      평가현황조회
    
