# counter_7
**Tugas 7(Readme Versi baru karena yang lama terhapus saat git push force)**

_Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya._

Stateless widget merupakan widget yang tidak akan berubah-ubah, sedangkan stateful widget bersifat dinamis tergantung interaksi pengguna. Selain itu, stateful 

widget juga dapat menggunakan setState, sedangkan stateless sebaliknya. 

_Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya._
 
 Text: Untuk menambahkan teks
 
 Row :layout untuk menyusun widget di dalammnya secara horizontal
 
 Column: layout untuk menyusun widget secara vertikal
 
 FloatingActionButton(): untuk membuat suatu floating button
 
 Text Style untuk menambahkan style dari widget text
 
 
 _Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut._
 
 memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut. Variabel yang terdampak dalam project ini 
 
 yaitu _counter disebabkan oleh fungsi penambahan dan pengurangan yang berefek ke teks yang ditampilkan.
 
 _Jelaskan perbedaan antara const dengan final._
 
 final dapat digunakan untuk inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan, sedangkan const sudah 
 pasti diketahui lebih dulu saat proses kompilasi karena  nilai dari variabel tersebut harus sudah di berikan secara langsung sejak awal.
 
 _Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas._
 
 1. Membuat program counter_7 dengan menggunakan flutter create counter_7
 
 2. mengubah title menjadi Program Counter
 
 3. Membuat fungsi decrementcounter dengan template yang hampir sama dengan incrementcounter dengan perubahan tanda menjadi negatif untuk counter agar bisa berkurang. Lalu membuat kondisi saat habis dimodulo 2 akan menampilkan genap sebaliknya akan menampilkan ganjil.
 
 **Tugas 8**
 
 _Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement._

navigator push akan menmpa halaman sebelumnya dan tetap tersimpan di bawah halaman baru, sedangkan Navigator.pushReplacement akan melakukan push sekaligus pop 

sehingga bukan hanya akan menimpa halaman sebelumnya melainkan juga halaman sebelumnya ikut terhapus.
 
 
 _Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya._
 
 Drawer: Untuk melakukan navigasi halaman
 
 ListTile:  suatu komponen yang didalamnya juga bisa diterapkan widget seperti teks, icon dll
 
 TextFormField: menerima input teks di Form berupa String
 
 DropDownButton, membuat fields untuk input dropdown
 
 

 
 _Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)._
 
OnPressed
 
OnChange

OnSaved

OnTap

onLongPress

OnComplete
 
 _Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter._
 
 Navigator memanfaatkan konsep Stack yang berarti halaman paling atas akan ditampilkan lebih awal. Jika ingin menampilkan halaman baru dapat dilakukan navigator 
 push yang akan menmpa halaman sebelumnya dan tetap tersimpan di bawah halaman baru. 
 
 _Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas._
 
 1. Membuat widget Drawer dan menerapkan routing di dalamnya mengguanakan Navigator yang sudah di route ke masing-masing kelas
 
 2. Membuat halaman form yang berisi input judul daN nominal budget berupa widget TextFormField serta input tipe budget berupa widget DropDownButton
 
 3. Membuat file baru yaitu data.dart lalu membuat class Data yang akan membuat objek Data berisi judul, nominal, dan tipe. 
 
 4. Menampilkan objek-objek Budget dalam widget ListTile dengan  melakukan iterasi for.
 
 
 **Tugas 9(Versi gagal)**
 _Implementasi_
 
 Stuck loading karena saat di quicktype terdeteksi tipe data yang salah dari https://web-production-88b7.up.railway.app/watchlist/json/ json tersebut dan belum bisa 
 
 difix untuk saat ini meskipun tidak menutup kemungkinan karena hal lain. Mengenai implementasi kurang lebih hampir sama dengan tutorial dari mulai memasang 
 dependecy http dengan flutter pub add http berikutnya membuat model watchlist dengan menggunakan quicktype lalu membuat fetchdata untuk memetakan json yang diambil ke model  watchlist. kemudian membuat page yang akan ditambahkan ke drawer agar model bisa terpetakan serta navigator push yang akan menampilkan detail ketika ditekan.
 
_Widget yang dipakai beserta fungsinya_

Text: untuk menambahkan text

TextStyle: untuk memberikan Styling pada text

Checkbox: Widget untuk membuat checkbox pada review

Column : mengatur elemen secara  vertikal

Scaffold : untuk mengatur struktur visual layout dengan mengimplementasikan material design

Pengambilan JSON bisa dilakukan tanpa harus membuat model terlebih dahulu. Meski demikian, hal tersebut cukup beresiko karena bisa saja ada field atau data yang 

terlewat atau hilang tanpa diketahui.

_Mekanisme Pengambilan Data JSON_

Menambahkan dependensi http dengan menggunakan flutter pub add http kemudian menambahkan akses internet dengan memasukkan <uses-permission 

android:name="android.permission.INTERNET" />` pada file AndroidManifest.xml kemudian membuat model dari json dengan menggunakan quicktype. Kemudian membuat http 

request untuk get yang kemudian akan diubah menjadi model yang dibuat sebelumnya berikutnya akan dikonversi oleh FutureBuilder ke aplikasi.







A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
