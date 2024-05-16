#script 파일 생성
touch myscript.sh

#
1. 
2.
3.
4.
5.

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else 
    echo "hello world2"
fi

# if문과 변수 활용, 파일/디렉토리 존재여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

# for문 기본
for a in {1..100}
do
    echo "$a hello world"
done

# if문 실습

# for문 활용한 count 세기
count=0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
    echo "a is $a"
done

# for문 활용한 file의 개수와 directory의 개수 세기
# for문 활용한 directory의 개수와 그외의 파일 개수 세기
dir_count=0
others=0
for a in *
do
    if [ -d "$a" ];then
        ((dir_count++))
    else
        ((others++))
    fi
done
echo "dir_count is $dir_count"
echo "dir_count is $others"
