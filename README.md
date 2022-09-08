# 7.3.2 Mengkoneksikan Aplikasi Flutter ke themoviedb dengan package http
1. Untuk mengakses internet kita harus menambahkan permission internet pada android
manifest cari lah file android manifest.xml pada folder
android/app/scr/main/AndroidManifest.xml kemudian tambahkan permission internet.
![](images/prak1.png)
2. Hapus komentar yang ada pada file main.dart dari kode program awal.
3. Ubah MyHomePage menjadi stateless widget.
![](images/prak2.png)
4. Buat file baru baru “pages” pada folder lib dan buat sebuah file dengan nama
movie_list.dart.
![](images/prak3.png)
5. Buat sebuah statefull widget pada file movie_list.dart
![](images/prak4.png)
6. Import File movie_list.dart ke main.dart dan gunakan movie_list.dart sebagai return
dari class MyHomePage
![](images/prak5.png)
7. Sebelum melanjutkan ke pembuatan aplikasi kita buat terlebih dahulu sebuah helper
class untuk konek ke rest api themoviedb. Buat lah sebuah folder dengan nama
service dan isi dengan file http_service.dart.
![](images/prak6.png)
8. Selanjutnya buat sebuah function untuk mengambil response dari server
themoviedb.org
10. Pada function _MovieListState tambahkan variabel berikut ini untuk variabel service
jangan lupa import dulu file httpservice nya.
![](images/prak7.png)
11. Kemudian tambahkan method override init state agar permintaan ke rest api dapat
dilakukan ketika state di inisialisasi.
![](images/prak8.png)
12. Selanjutnya update function build pada movieListState dengan menggunakan widget
scaffold.
![](images/prak9.png)
13. Jalankan aplikasi, jika di awal terjadi error reload menggunakan hot restart.
![](images/result.png)
# 7.3.3 Membuat model untuk response http
1. Buat folder models didalam folder lib dan isikan dengan file movie.dart
![](images/prak12.png)
2. Di dalam movie.dart buat lah sebuah class movie lengkap dengan variabel dan
construktor seperti dibawah ini.
![](images/prak11.png)
3. Selanjutnya buatlah sebuah function untuk mengkonversi json menjadi response yang
sesuai dengan class movie.
![](images/prak10.png)
4. Selanjutnya update function http_service.dart menjadi seperti dibawah ini.
![](images/prakter1.png)
# 7.4 Membuat halaman list Populer Movie
Untuk membuat list view pada widget movie list anda memerlukan beberapa widget baru
antara lain list view dan card. Selain itu juga dibutuhkan data dari http service. Langkah
langkah yang perlu dilakukan adalah sebagai berikut :
1. Update inisialisasi variabel pada class movieliststate
![](images/prakter2.png)
2. Tambahkan method initialize() pada class movieliststate
![](images/prakter3.png)
3. Tambahkan function initialize pada initState
![](images/prakter4.png)
4. Selanjutnya buat listview dan card berdasarkan data dari initialize
![](images/prakter5.png)
5. Lakukan hot restart dan aplikasi akan berubah menjadi seperti dibawah ini.
![](images/prakter6.png)
6. Selamat anda berhasil membuat listview sekarang saatnya mempercantik listview
yang dibuat.
7. Challenge : carilah cara menambahkan gambar dari response api ke listview,
tambahkan gambar tersebut ke listview.
![](images/prakter7.png)
# 7.5 Membuat halaman detail Populer Movie
1. Untuk membuat perpindahan dari movie list ke movie detail buatlah onTap event di
listview pada movie list.
![](images/prakter8.png)
2. Pada event on tap Widget MovieDetail belum dibuat, buatlah widget ini pada folder
pages/movie_detail.dart.
![](images/prakter9.png)
3. Lengkapi Movie Detail untuk menerima parameter Movies
![](images/prakter10.png)
4. Lengkapi detail widget.
![](images/prakter11.png)
result
![](images/result1.png)
detail
![](images/detail.png)