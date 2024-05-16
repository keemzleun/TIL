# 사용자 추가
sudo useradd 사용자명

# 패스워드 지정
sudo passwd 사용자명

# 사용자 목록 조회
cat /etc/passwd

# 사용자 전환 : 비밀번호는 전호나하고자 하는 사용자의 비밀번호
su - 사용자명

# 파일 권한 관리
# 권한은 세 파트(user, group, others)로 구성돼 있고, 각 권한은 r(4)w(2)x(1로 이루어져 있음
chmod 777 test.sh
chmod u+x test.sh
chomd g-w test.sh


# 파일 소유자/그룹 관리
# 소유자와 그룹 변경
chown 소유자:그룹 파일명

