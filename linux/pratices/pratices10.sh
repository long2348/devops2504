#!/bin/bash
#
# Nhập tham số để chạy bash shell tương ứng trong thư mục
#

read -p "hãy nhập số để chạy bash shell (chỉ nhập từ 1->9)" number

if [[ "$number" =~ ^[1-9]$ ]]; then 
    echo "Số hợp lệ. Thực thi lệnh pratices${number}.sh"
    if grep -q '\$1' ./pratices${number}.sh; then
        read -p "Hãy nhập tham số" number1
        ./pratices${number}.sh ${number1}
    else
        ./pratices${number}.sh
    fi

else
    echo "số nhập không hợp lệ"
fi