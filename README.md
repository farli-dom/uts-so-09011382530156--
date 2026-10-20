# Tugas Besar Sistem Operasi - UTS

## Identitas
* **Nama**: Muhammad Farliansyah Bayumi
* **NIM**: 09011382530156
* **Kelas**: SKU3B

## Deskripsi
Repositori ini berisi sekumpulan shell script untuk melakukan otomatis pencarian file catatan praktikum '.txt', mengompresnya ke dalam format '.tar.gz'secara periodik,melakukan verifikasi arsip serta mencatat riwayat proses ke dalam file log secara aman.

## Cara menjalankan 
1. Menjalankan backup manual:
'''bash
bash script/backup.sh

## Fitur Pengembangan
Fitur yang dipilih: Rotasi Arsip (Menyimpan maksimal 5 arsip terbaru dan otomatis menghapus arsip lama).

Cara mencoba: Jalankan bash script/backup.sh lebih dari 5 kali secara berurutan, lalu periksa folder ~/backup_09011382530156. Anda akan melihat bahwa file arsip lama yang melebihi jumlah 5 akan terhapus secara otomatis dan hanya menyisakan 5 arsip paling baru.
