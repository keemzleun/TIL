### Entity Manager란

- JPA를 사용하기 위해선 데이터베이스 구조와 맵핑된 JPA Entity들을 먼저 생성하게 됨
- 모든 JPA의 동작은 이 Entity들을 기준으로 돌아가게 되는데, 이 Entity들을 관리하는 것이 Entity Manager임

### Entity Manager의 동작

- JPA는 기본적으로 한 요청당, 하나의 EntityManager를 사용
- 또한 각 EntityManager들은 정해진 영속성 컨텍스트를 참조하게 됨
- 이렇게 만들어진 EntityManager로 데이터를 다루려면 Entity가 “영속화”되어 있어야 함

### Entity의 생명주기

- JPA의 Entity는 영속성 컨텍스트를 기준으로 ‘Entity가 어떻게 되어있나?’라는 질문에 대응하는 다음과 같은 상태를 가짐
  
    - **비영속(new/transient)**: 영속성 컨텍스트와 무관한 새로운 데이터인 경우
      
        ex) 클라이언트에서 넘어 온 데이터를 영속화하기 전의 상태
    - **영속(managed)**: 영속성 컨텍스트에 주입 또는 관리되고 있는 경우
      
        ex) 클라이언트에서 넘어 온 데이터를 영속화 함
    - **준영속(detached)**: 영속성 컨텍스트에 주입 또는 관리되고 있는 경우
      
        ex) 클라이언트에서 넘어 온 데이터를 영속화 함
    - **삭제(removed)**: 영속성 컨텍스트에서 아예 삭제된 데이터