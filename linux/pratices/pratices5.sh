#!/bin/bash
#
# write an script to process the `ls` command and list out all files in folder
# 

path_folder="/home/DEVOPS2504"

list_folder=$(ls $path_folder)
for folder in $list_folder
do 
    echo "listing item in folder: ${folder}"
    ls -la "${path_folder}/${folder}"
done 


# Đường dẫn đến thư mục DEVOPS2504
# target_dir="/home/DEVOPS2504"

# echo -e "\n\033[1mKiểm tra thư mục con trong: $target_dir\033[0m"

# # Kiểm tra xem thư mục có tồn tại không
# if [ ! -d "$target_dir" ]; then
#     echo -e "\033[31mLỗi: Thư mục $target_dir không tồn tại\033[0m"
#     exit 1
# fi

# # Liệt kê các thư mục con trực tiếp của DEVOPS2504
# echo -e "\n\033[1;34mCÁC THƯ MỤC CON TRỰC TIẾP:\033[0m"
# for dir in "$target_dir"/*; do
#     if [ -d "$dir" ]; then
#         echo -e "\n\033[1;32m• $(basename "$dir")\033[0m"
        
#         # Kiểm tra xem thư mục con có chứa thư mục bên trong không
#         subdirs=$(find "$dir" -maxdepth 1 -type d ! -path "$dir" | wc -l)
#         if [ "$subdirs" -gt 0 ]; then
#             echo -e "\033[33m  ├─ Chứa $subdirs thư mục con:\033[0m"
#             find "$dir" -maxdepth 1 -type d ! -path "$dir" -printf "  ├── %f\n" | sort
#         else
#             echo -e "\033[90m  └─ Không có thư mục con\033[0m"
#         fi
#     fi
# done

# echo -e "\n\033[90mThư mục hiện tại: $(pwd)\033[0m"