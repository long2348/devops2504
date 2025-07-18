#!/bin/bash
#
# viết chương trình nhập năm dương ra năm âm
#

thien_can=("Giáp" "Ất" "Bính" "Đinh" "Mậu" "Kỷ" "Canh" "Tân" "Nhâm" "Quý")
dia_chi=("Tý" "Sửu" "Dần" "Mão" "Thìn" "Tỵ" "Ngọ" "Mùi" "Thân" "Dậu" "Tuất" "Hợi")
year=$1

# Kiểm tra xem đầu vào có phải là số không
if ! [[ "$year" =~ ^[0-9]+$ ]]; then
    echo "Lỗi: Vui lòng nhập một số nguyên dương."
    exit 1
fi

thien_can_index=$(((year - 4) % 10))
dia_chi_index=$(((year - 4) % 12))
echo "Năm được nhập vào là $year"
echo "Can Index: ${thien_can_index} là ${thien_can[thien_can_index]}"
echo "Chi Index: ${dia_chi_index} là ${dia_chi[dia_chi_index]}"

# Xuất kết quả
echo "Cho nên năm $year là năm ${thien_can[thien_can_index]} ${dia_chi[dia_chi_index]}"