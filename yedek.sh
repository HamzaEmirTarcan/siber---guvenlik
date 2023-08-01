#!/bin/bash

backup_files() {
  local current_time=$(date +"%M")
  local source_dir="$1"
  local backup_dir="$2"
  local backup_filename="${backup_dir}/${backup_filename}"

  # Tar arşivi oluştur
  tar -czf "${backup_dir}/${backup_filename}" -C "${source_dir}" .
}

# Saat başı yedekleme kotnrol eder
while true; do
# dakika bilgisi al
current_minute=$(date +"%M")
  if [[ "$current_minute" == "00" ]]; then
    source_directory="/home/kali/odev"
    backup_directory="/home/kali/backups"
   backup_files "$source_directory"  "$backup_directory"
  fi
done
