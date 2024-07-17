#/bin/sh

cp .env.local mirrorz-help/.env.local

# 脚本会将src_root下的文件，以src_root为根目录算出的相对路径，自动override到dst_root为根目录加上算出的相对路径的文件上。
# 但并不是所有src_root下的文件都会操作，只有以下两种后缀文件会执行，且dst_root加上的相对路径不包括后缀文件。
# 两种后缀会有不同的overwrite效果：
# 1. 后缀 .patch
#    标准patch文件，overwrite动作实际为patch命令
# 2. 后缀 .all
#    将完全替换dst目标文件，实际执行命令为mv

src_root="override"
dst_root="mirrorz-help"

# 自动应用patch文件
# 遍历src_root下的所有patch文件
find "$src_root" -type f -name "*.patch" | while read -r patch_file; do
    # 计算对应的目标文件路径
    relative_path=${patch_file#$src_root/}
    target_file="$dst_root/${relative_path%.patch}"

    # 检查目标文件是否存在
    if [ ! -f "$target_file" ]; then
        echo "Target file $target_file does not exist, skipping..."
        continue
    fi

    # 应用patch
    echo "Patching $target_file with $patch_file"
    patch "$target_file" < "$patch_file"

    if [ $? -ne 0 ]; then
        echo "Failed to patch $target_file with $patch_file"
    fi
done
echo Applied patch file

# 自动应用all文件
# 遍历src_root下的所有all文件
find "$src_root" -type f -name "*.all" | while read -r all_file; do
    # 计算对应的目标文件路径
    relative_path=${all_file#$src_root/}
    target_file="$dst_root/${relative_path%.all}"

    # 检查目标文件是否存在
    if [ ! -f "$target_file" ]; then
        echo "Target file $target_file does not exist, skipping..."
        continue
    fi

    # 应用mv
    echo "Moving $target_file with $all_file"
    mv  "$all_file" "$target_file"

    if [ $? -ne 0 ]; then
        echo "Failed to move $target_file with $all_file"
    fi
done
echo Applied all file