Fitur Utama

✅ Login System
Login menggunakan username & password yang diverifikasi secara lokal.

✅ Local Storage (SharedPreferences)
Menyimpan username agar tetap login.

✅ Navigasi Modern (Named Routes)
Berpindah halaman menggunakan sistem route yang rapi.

✅ Side Menu (Drawer)
Berisi menu untuk berpindah ke halaman:

Home

Profile

About

Settings

✅ Tema Gradient Ungu → Pink (Full App UI)
Semua halaman memakai background gradient elegan.

✅ Halaman Lengkap

LoginPage : Username: h1d023007  
Password: tugas7

HomePage

ProfilePage

AboutPage

SettingsPage

Tidak sama dengan modul (lebih kreatif)
Menggunakan:

Custom GradientScaffold

Rounded drawer

Chip UI

Transition animasi



1. main.dart

Fungsi:

Entry point aplikasi Flutter.

Mengatur tema global (gradient, warna, Material 3).

Menentukan initialRoute.

Mendaftarkan routes di routes.dart.

Inti kode: memanggil MaterialApp(... onGenerateRoute: Routes.generate,)

2. auth_storage.dart

Fungsi:

Mengatur penyimpanan data login memakai SharedPreferences.

Menyimpan username saat login berhasil.

Read/write local storage.

Logout menghapus username.

Inti fungsi:

saveLogin(username)

readUsername()

logout()

3. routes.dart

Fungsi:

Menyediakan named routes untuk seluruh halaman.

Generator routes dengan animasi transisi.

Mengatur navigasi agar mudah dan terstruktur.

Inti:
generate(RouteSettings settings) → MaterialPageRoute

Folder widgets/

Berisi widget custom reusable biar kode rapih & modern.

4. widgets/gradient_scaffold.dart

Fungsi:

Mengganti Scaffold biasa dengan background gradient ungu → pink.

Dipakai semua halaman agar tampilan konsisten.

Inti kode:
Container gradient → child → Scaffold transparan.

5. widgets/app_drawer.dart

Fungsi:

Implementasi side menu modern.

Menampilkan foto profil icon (tanpa gambar), username dari local storage.

Terdiri dari menu navigasi:

Home

Profile

About

Settings

Logout

Folder pages/

Berisi halaman utama aplikasi.

<img width="1050" height="702" alt="image" src="https://github.com/user-attachments/assets/5330734b-313f-4813-99c1-dfef8726c009" />


6. pages/login_page.dart

Fungsi:

Form login dengan validator.

Jika benar → simpan username ke local storage → pindah ke Home.

UI modern: Card + gradient background.

Penggunaan:

TextFormField

SharedPreferences → simpan login

<img width="1040" height="703" alt="image" src="https://github.com/user-attachments/assets/1c206682-9336-4dc3-8003-5edd1a95f2c1" />


7. pages/home_page.dart

Fungsi:

Menampilkan pesan selamat datang.

Menampilkan username yang sudah tersimpan.

Drawer aktif di sini (menu navigasi).

<img width="1041" height="704" alt="image" src="https://github.com/user-attachments/assets/0b7700dc-4817-4f65-85c2-0b16531eef4c" />


8. pages/profile_page.dart

Fungsi:

Menampilkan card profil.

Ikon profil (tanpa load gambar) + username.

UI menggunakan Chip + Icon seperti profil modern.

Contoh tampilan:

<img width="1039" height="708" alt="image" src="https://github.com/user-attachments/assets/52071ea3-46ff-4e0d-9af4-c1a5a01d92b8" />


9. pages/about_page.dart

Fungsi:

Menjelaskan detail aplikasi.

Background gradient + drawer.

<img width="1034" height="703" alt="image" src="https://github.com/user-attachments/assets/d2b25f40-7bca-4f68-90a3-d2e58700cf1b" />

