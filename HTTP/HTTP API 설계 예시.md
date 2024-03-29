## HTTP API 설계 예시 

- HTTP API - 컬렉션
    - POST 기반 등록
    - 예) 회원 관리 API 제공
- HTTP API - 스토어
    - PUT 기반 등록
    - 예) 정적 컨텐츠 관리, 원격 파일 관리
- HTML Form 사용
    - 웹 페이지 회원 관리
    - GET, POST만 지원

### API 설계 - POST 기반 등록

- 주요 메서드
    - 목록  → GET
    - **등록 → POST**
    - 조회 → GET
    - 수정 → PATCH, PUT, POST
    - 삭제 → DELETE

- 특징
    - 클라이언트는 등록될 리소스의 URI를 모름
    - 서버가 새로 등록된 리소스 URI를 생성해줌
    - **컬렉션(Collection)**
        - 서버가 관리하는 리소스 디렉토리
        - 서버가 리소스의 URI를 생성하고 관리

### API 설계 - PUT 기반 등록

- 주요 메서드
    - 목록 → GET
    - 조회 → GET
    - **등록 → PUT**
    - 삭제 → DELETE

- 특징
    - 클라이언트가 리소스 URI를 알고 있어야 함
    - 클라이언트가 리소스의 URI를 직접 지정함
    - **스토어(Store)**
        - 클라이언트가 관리하는 리소스 저장소
        - 클라이언트가 리소스의 URI를 알고 관리

### HTML FORM 사용

- 목록 `/books` → GET
- 등록 폼 `/books/new` → GET
- 등록 `/books/new, /books` → POST
- 조회 `/books/{id}` → GET
- 수정 폼 `/books/{id}/edit` → GET
- 수정 `/books/{id}/edit, /books/{id}` → POST
- 삭제 `/books/{id}/delete` → POST

- HTML Form은 GET, POST만 지원 → 제약적
- 컨트롤 URI
    - GET, POST만 지원하는 제약을 해결하기 위해 동사로 된 리소스 경로 사용
    - POST의 /new, /edit, /delete가 컨트롤 URI
    - 단순한 데이터를 생성하거나, 변경하는 것을 넘어서 프로세스를 처리해야 하는 경우에 사용
        - ex) 주문 → 결제 완료 → 배달 시작 → 배달 완료
    - HTTP 메서드로 해결하기 애매한 경우 사용