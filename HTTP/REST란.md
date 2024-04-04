## REST

### REST란?

- Representational State Transfer의 약자로 자원(Resource)을 이름으로 구분하여 해당 자원의 상태를 주고 받는 모든 것을 의미


- HTTP URI를 통해 리소스를 명시하고, HTTP Method(POST, GET, PUT, DELETE, PATCH 등)를 통해 해당 자원(URI)에 대한 CRUD Operation을 적용하는 것을 의미
    - REST는 자원 기반의 구조(ROA, Resource Oriented Architecture) 설계의 중심에 리소스가 있고 HTTP Method를 통해 리소스를 처리하도록 설계된 아키텍쳐를 의미


- REST에서의 CRUD Operation 동작 예시
    - Create: 데이터 생성(POST)
    - Read: 데이터 조회(GET)
    - Update: 데이터 수정(PUT, PATCH)
    - Delete: 데이터 삭제(DELETE)


- REST가 필요한 이유
    - 애플리케이션 분리 및 통합
    - 다양한 클라이언트의 등장
    - 최근의 서버 프로그램은 다양한 브라우저와 안드로이드폰, 아이폰과 같은 모바일 디바이스에서도 통신을 할 수 있어야 함
    - 이러한 멀티 플랫폼에 대한 지원을 위해 서비스 자원에 대한 아키텍쳐를 세우고 이용하는 방법을 모색한 결과, REST에 관심을 가지게 되었음

### REST 구성 요소

1. 자원(Resource): HTTP URI
    - 모든 자원에 고유한 ID(HTTP URI)가 존재하고, 이 자원은 서버에 존재함
    - 클라이언트는 URI를 이용해서 자원을 지정하고 해당 자원의 상태(정보)에 대한 조작을 서버에 요청


2. 자원에 대한 행위(Verb): HTTP Method


3. 자원에 대한 행위의 내용(Representations): HTTP Message Pay Load
    - Client가 자원의 상태(정보)에 대한 조작을 요청하면 Server는 이에 적절한 응답(Representation)을 보냄
    - REST에서 하나의 자원은 JSON, XML, TEXT, RSS 등 여러 형태의 Representation으로 나타내어 질 수 있음

    
### REST 특징

- Server-Client(서버 클라이언트 구조)
- Stateless(무상태)
- Cacheable(캐시 처리 가능)
- Layered System(계층화)
- Uniform Interface(인터페이스 일관성)

### REST API란?

- REST의 원리를 따르는 API를 의미
- but REST를 사용했다 해서 모두가 RESTful 한 것은 아님

### REST API 설계 규칙

1. 슬래시 구분자(/)는 계층 관계를 나타내는데 사용
2. URI 마지막 문자로 슬래시를 포함하지 않음
3. 하이픈(-)은 URI 가독성을 높이는데 사용 (언더바(_)는 사용하지 않음)
4. URI 경로에 소문자를 사용
5. 파일확장자는 URI에 포함하지 않음
6. 리소스 간에 연관 간계가 있는 경우

   /리소스명/리소스ID/관계가 있는 다른 리소스명