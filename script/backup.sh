#!/bin/bash
# Nama: Muhammad Farliansyah Bayumi
# Nim: 09011382530156
# Kelas: SKU3B

# variabel konfigurasi
SRC_DIR="$HOME/data_NIM"
DEST_DIR="$HOME/backup_NIM"
LOG_FILE="$DEST_DIR/backup.log"
TIMESTAMP=$(date +%Y%m%d_%H%m%S)
ARCHIVE_NAME="backup_NIM_${TIMESTAMP}.tar.gz"
FILE_LIST="/tmp/file_list_NIM.txt"

# 3. Buar direktori tujuan jika belum ada
mkdir -p "$DEST_DIR"

# 4. cari semua file .txt (termasuk di subdirektori) dan simpan daftarnya
find "$SRC_DIR" -type f -name "*.txt" > "$FILE_LIST"

# 5. Arsipkan dan kompres hanya file .txt yang ditemukan
tar -czvf "$DEST_DIR/$ARCHIVE_NAME" -T "$FILE_LIST" 2>/dev/null

# 6. Verifikasi isi arsip tanpa  mengekstrak
echo "--- Vertifikasi isi arsip ---"
tar -tzvf "$DEST_DIR/$ARCHIVE_NAME"

#Ambil JUmlah file dan ukuran arsip 
NUM_FILES=$(wc -l < "$FILE_LIST")
ARCHIVE_SIZE=$(du -h "$DEST_DIR/$ARCHIVE_NAME" | awk '{print $1}')

# 7. Tambahkan tepat satu barid ke file log (menggunakan>>)
echo "$(date +%Y-%m-%d_%H:%M:%S | $ARCHIVE_NAME | $NUM_FILES file | $ARCHIVE_SIZE" >> "$LOG_FILE"
# Bersihkan file sementara
rm -f "$FILE_LIST"
echo "Backup selesai: $ARCHIVE_NAME"


