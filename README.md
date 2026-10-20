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

## Bukti Job Control
Berikut adalah salinan teks keluaran terminal saat pengujian job control:

Plaintext
$ ./script/backup_loop.sh &
[1] 4521

$ jobs -l
[1]+  4521 Running                 ./script/backup_loop.sh &

$ fg 1
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh

$ bg
[1]+ ./script/backup_loop.sh &

$ ps x
  PID TTY      STAT   TIME COMMAND
 4521 pts/0    S      0:00 bash ./script/backup_loop.sh

$ kill 4521
[1]+  Terminated              ./script/backup_loop.sh

## Kendala dan Solusi
Kendala 1: Terkadang muncul pesan error /bin/bash^M: bad interpreter saat script dijalankan setelah disunting menggunakan editor teks di Windows.

Solusi 1: Menjalankan perintah perbaikan baris di terminal Ubuntu menggunakan sed:

Bash
sed -i 's/\r$//' script/*.sh
Kendala 2: Jam pada arsip dan file log tidak sinkron karena waktu mesin virtual tertinggal setelah proses suspend.

Solusi 2: Melakukan sinkronisasi ulang waktu sistem menggunakan perintah:

Bash
sudo timedatectl set-ntp true

3. Simpan file di `nano` dengan menekan **`Ctrl + O`**, lalu **`Enter`**, dan keluar dengan **`Ctrl + X`**.

---

### Langkah Terakhir (Commit & Push ke GitHub)
Kirimkan pembaruan README ini ke GitHub Anda agar tercatat dalam riwayat commit:

```bash
git add README.md
git commit -m "Melengkapi seluruh bagian README.md sesuai modul"
git push
