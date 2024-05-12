# MIKTI_project
MIKTI project merupakan sebuah project individual jangka panjang yang diberikan oleh mentor dari MIKTI kepada para peserta kampus merdeka batch-5. Project berasal dari kegiatan belajar secara Hands-on / praktik secara langsung yang dilakukan oleh setiap pesertanya berdasarkan materi ajar yang telah disampaikan pada setiap sesinya.

# 1. First commit
Pada first commit project, terdapat beberapa code sederhana yang digunakan untuk membangun aplikasi tersebut dengan menggunakan beberapa pengetahuan yang telah diberikan pada saat kelas berlangsung. Adapun beberapa widget yang digunakan untuk membangun aplikasi tersebut, antara lain:
- Menggunakan widget appbar untuk membangun top navigation bar pada aplikasi
- Menggunakan Drawer untuk membuat sistem navigasi yang berada pada sebelah kiri atas layar aplikasi
- Menambahkan beberapa widget kedalam drawer tersebut dengan menggunakan beberapa widget dasar, seperti DrawerHeader(), ListTile(), CircleAvatar(), Row(), Column(), Switch(), Text(), Icon(), dan SizedBox
- Menggunakan widget FloatingActionButton() untuk menambahkan button yang mengambang dilayar aplikasi
- Menggunakan Navigator.push() untuk melakukan perpindahan halaman dari satu halaman ke halaman lainnya
- Menggunakan BottomNavigationBar() untuk membuat navigation bar yang terletak dibawah layar aplikasi
- Menambahkan depedencies GetX dan menggunakannya untuk mempermudah sistem navigasi halaman aplikasi

# 2. Second commit
Pada second commit ini, terdapat beberapa penambahan sedikit terhadap code program yang telah dibuat sebelumnya. Second commit ini berisikan beberapa implementasi berdasarkan materi pembelajaran yang telah diberikan. Adapun beberapa penambahan yang dilakukan pada second commit ini, sebagai berikut:
- Mengganti code "Switch account" dan "Logout" yang terletak pada bagian bawah drawer menjadi widget TextButton.icon()
- Menambahkan 2 alert dialog yang berbeda dengan menggunakan widget CupertinoDialogAction() pada bagian switch account dan logout yang dapat diakses melalui icon hamburger menu ![image](https://github.com/Oneday37/MIKTI_project/assets/153218197/688a1fb0-2121-4e6a-a97c-23ab3d50f1d4)

- Menambahkan beberapa navigasi terhadap beberapa widget, sehingga ketika widget tersebut diklik maka akan terjadi suatu state yang terjadi baik itu berpindah halaman maupun mencetak output sesuai perintah. Sistem navigasi ini ditambahkan kedalam beberpa bagian, seperti pada bagian switch account, logout, serta tombol tombol yang ada pada alert dialog
- Menambahkan depedencies google_font untuk memperindah beberapa tampilan dari teks yang ada pada aplikasi

# 3. Third commit
Tidak banyak perubahan yang terjadi pada third commit project. Pada third commit dilakukan implementasi terhadap bagaimana cara membuat suatu aplikasi dapat bersifat responsive terhadap suatu perubahan. Dalam membaut suatu aplikasi menjadi lebih responsive, programmer dapat menggunakan widget LayoutBuilder() yang telah disediakan oleh flutter. Widget tersebut merupakan salah satu widget yang dapat membuat tampilan aplikasi menjadi lebih responsive, karena ia dapat menampilkan berbagai layout yang berbeda beda tergantung dari kondisi yang telah ditentukan. Selain itu, penggunaan widget GridView() juga dapat mempermudah programmer dalam menentukan layout dari aplikasinya, karena GridView() menyediakan sebuah tampilan grid bagi widget widget yang ada didalamnya.

Pada penerapan kali ini, digunakan salah satu sub dari widget GridView(), yakni GridView.count(). Widget tersebut akan mengenerate secara otomatis seluruh widget dalam bentuk grid dan meminta programmer untuk memasukkan jumlah kolom yang akan ditampilkan pada layer tersebut. Widget ini sangat membantu kita sebagai programmer dalam menentukan tampilan dari sebuah widget dalam bentuk kolom. Penerapan widget LayoutBuilder() dan GridView.count() dapat dilihat pada file **add_page.dart**

# 4. Fourth commit
Pada fourth commit, terdapat banyak perubahan yang dilakukan mulai dari segi UI hingga adanya penambahan beberapa fitur didalam aplikasi tersebut. Dari segi UI, perubahan dapat dilihat pada menu Home yang dimana telah ditambahkan prototype chat yang tampak seperti pada aplikasi chatting pada umumnya. Selain itu perubahan juga terjadi pada bagian profile dimana, foto profile yang awalnya hanya berupa Icon person saja, sekarang sudah berubah menjadi sebuah foto dan begitu pula nama user yang awalnya First Account Name berubah menjadi nama asli. Selain itu pada bagian prototype chat, jika menekan salah satu item / chat, maka user akan dibawa kehalaman chatting

Dari segi fungsinya, commit kali ini berupaya untuk mengimplementasikan salah satu widget yang dapat memberikan sebuah animasi, sehingga ketika tidak membuat aplikasi tersebut terlalu kaku. Widget animasi yang digunakan kali ini adalah widget Hero() yang dimana widget tersebut akan memberikan efek perpindahan yang halus dari satu state ke state yang lain. Widget ini nantinya akan meminta programmer untuk memasukan tag yang mana itu merupakan penanda agar nantinya sistem akan merender animasi untuk widget yang diberikan tag tersebut. Pemberian widget ini harus dilakukan terhadap 2 buah widget, yakni widget asal dan widget tujuan. Jika programmer meletakkan hanya disalah satu bagian saja, widget ini tidak akan berfungsi sebagai mana mestinya. **Penerapan dari widget Hero() dapat dilihat pada file home_page.dart pada bagian widget DrawerHeader(), profile_page.dart, dan detail_profile_page.dart**. Untuk pengimplementasian secara langsung dapat diakses melalui Hamburger menu -> Account / detail account yang ada dibagian header -> click foto

Selain menggunakan widget hero untuk menambahkan efek animasi, pada commit kali ini juga ditambahkan penerapan dari beberapa gesture, seperti ketika di click (onTap), terjadi double click (onDoubleTap), dan ketika terjadi klik dalam jamgka waktu yang lama (onLongPress). Ketiga hal tersebut diimplementasikan kedalam aplikasi dengan menggunakan widget GestureDetectore() yang dapat dilihat pada flie **about_us_page.dart** dan jika ingin melihat secara langsung, maka dapat dirasakan dengan mengakses **hamburger menu -> About us**
