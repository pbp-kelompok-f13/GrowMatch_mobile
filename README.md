# GrowMatch Mobile

Aplikasi mobile GrowMatch, dibangun menggunakan Flutter untuk Proyek Akhir Semester PBP (CSGE602022) Gasal 2026/2027. Aplikasi ini merupakan versi mobile dari situs web [GrowMatch](https://muhammad-nararya51-growmatch.pws.cs.ui.ac.id/) yang dikembangkan pada Proyek Tengah Semester.

## Deskripsi Aplikasi

**GrowMatch** merupakan aplikasi bertema **Urban Farming & Biodiversity** yang membantu pengguna menemukan tanaman yang sesuai dengan kondisi lingkungan dan kemampuan perawatannya.

Memilih tanaman yang tepat tidak hanya bergantung pada preferensi, tetapi juga perlu mempertimbangkan kondisi lingkungan, ketersediaan ruang, dan kemampuan pengguna dalam merawat tanaman.

Untuk memberikan rekomendasi yang lebih sesuai, GrowMatch mempertimbangkan beberapa informasi pengguna:

- Lokasi tempat tinggal.
- Jenis ruang (indoor atau outdoor).
- Frekuensi penyiraman yang dapat dilakukan.
- Tingkat pengalaman dalam merawat tanaman.

Berdasarkan informasi tersebut, GrowMatch menganalisis kesesuaian tanaman dengan kondisi pengguna dan memberikan rekomendasi yang dapat membantu pengguna menentukan tanaman yang tepat.

Melalui aplikasi mobile, pengguna juga dapat menjelajahi katalog tanaman, mengelola koleksi tanaman pribadi, mencatat aktivitas perawatan, serta memberikan rating dan ulasan terhadap tanaman.

## Anggota Kelompok

| Nama | NPM | Modul |
|---|---|---|
| Aisyah Zayyana Hanifah | 2506609132 | Plant Catalog |
| Muhammad Nararya Ardhana | 2506657094 | Profile Page & Authentication |
| Deodatus Kevin Sihaloho | 2506590920 | Plant Recommendation |
| Kaysan Salman Ali Kusumah | 2506540670 | My Garden & Care Log |
| Leow Vincent Vintizel | 2506611856 | Homepage & Plant Review |

## Modul dan Pembagian Kerja

Setiap anggota bertanggung jawab mengembangkan modul yang telah ditentukan. 

1. **Homepage**  
   *PIC: Leow Vincent Vintizel*  
   Modul ini menjadi halaman utama aplikasi yang memperkenalkan GrowMatch, menjelaskan cara kerja aplikasi, serta menyediakan akses menuju fitur-fitur utama. Homepage berfungsi sebagai titik awal navigasi pengguna dalam menjelajahi GrowMatch Mobile.

2. **Profile Page & Authentication**  
   *PIC: Muhammad Nararya Ardhana*  
   Modul ini menangani registrasi, login, logout, serta pengelolaan informasi profil pengguna. Modul ini juga bertanggung jawab atas proses autentikasi agar fitur yang membutuhkan akun dapat diakses sesuai hak pengguna.

3. **Plant Catalog**  
   *PIC: Aisyah Zayyana Hanifah*  
   Modul ini menyediakan katalog tanaman yang dapat dijelajahi pengguna. Informasi yang ditampilkan mencakup karakteristik tanaman, detail tanaman, serta kebutuhan dan panduan perawatannya. Data tanaman memanfaatkan Perenual API sebagai salah satu sumber informasi.

4. **Plant Recommendation**  
   *PIC: Deodatus Kevin Sihaloho*  
   Modul ini memberikan rekomendasi tanaman berdasarkan kondisi lingkungan dan kemampuan perawatan pengguna. Proses rekomendasi mempertimbangkan lokasi tempat tinggal, jenis ruang, frekuensi penyiraman, serta pengalaman berkebun. Informasi tanaman dan kondisi cuaca didukung oleh Perenual API dan Open-Meteo Weather API.

5. **My Garden & Care Log**  
   *PIC: Kaysan Salman Ali Kusumah*  
   Modul ini memungkinkan pengguna mengelola koleksi tanaman pribadi dan mencatat aktivitas perawatan. Aktivitas yang dapat dicatat meliputi penyiraman, pemupukan, dan pemangkasan. Catatan tersebut membantu pengguna memantau aktivitas perawatan tanaman yang dimiliki.

6. **Plant Review**  
   *PIC: Leow Vincent Vintizel*  
   Modul ini memungkinkan pengguna memberikan rating dan ulasan terhadap tanaman serta melihat ulasan dari pengguna lain. Fitur ini menjadi sarana bagi pengguna untuk berbagi pengalaman dan informasi mengenai tanaman.

## Peran Pengguna

GrowMatch memiliki tiga jenis peran pengguna:

- **Guest:** dapat mengakses Homepage, melihat katalog tanaman, dan membaca informasi tanaman yang bersifat publik.
- **User:** dapat menggunakan fitur rekomendasi, mengelola My Garden & Care Log, memberikan review, serta mengelola profil.
- **Admin:** dapat mengelola data tanaman dan mengakses admin portal.

## Alur Integrasi Data dengan Situs Web

GrowMatch Mobile terintegrasi dengan situs web GrowMatch yang dikembangkan pada Proyek Tengah Semester melalui web service berbasis Django REST Framework. Integrasi ini memungkinkan aplikasi mobile mengakses data dan layanan backend yang digunakan oleh situs web.

Alur komunikasi data antara aplikasi mobile dan backend adalah sebagai berikut:

1. **Aplikasi Mobile:** Pengguna melakukan interaksi melalui aplikasi Flutter, seperti melihat katalog tanaman, meminta rekomendasi, atau mengelola koleksi tanaman.
2. **API Request:** Aplikasi mobile mengirimkan HTTP request ke endpoint backend yang telah dikonfigurasi melalui `lib/config/api_config.dart`.
3. **Django REST Framework:** Backend menerima dan memproses request, menjalankan logika aplikasi, serta mengakses data yang diperlukan.
4. **API Response:** Backend mengirimkan hasil pemrosesan dalam format JSON kepada aplikasi mobile.
5. **Menampilkan Data:** Aplikasi Flutter mengolah respons yang diterima dan menampilkan informasi kepada pengguna melalui antarmuka aplikasi.

## API yang Digunakan

### 1. Django REST Framework

### 2. Perenual API

Perenual API digunakan untuk memperoleh data dan karakteristik tanaman yang mendukung modul Plant Catalog dan Plant Recommendation.

Dokumentasi: [Perenual API](https://www.perenual.com/docs/api)

### 3. Open-Meteo Weather API

Open-Meteo Weather API digunakan untuk memperoleh informasi cuaca dan kondisi lingkungan berdasarkan lokasi pengguna. Informasi tersebut digunakan untuk mendukung proses rekomendasi tanaman.

Dokumentasi: [Open-Meteo Weather API](https://open-meteo.com/en/docs)

## Teknologi yang Digunakan

| Teknologi | Kegunaan |
|---|---|
| Flutter | Pengembangan aplikasi mobile |
| Dart | Bahasa pemrograman aplikasi |
| Django REST Framework | Backend web service |
| Perenual API | Penyedia informasi tanaman |
| Open-Meteo Weather API | Penyedia informasi cuaca dan lingkungan |
| Git & GitHub | Version control dan kolaborasi tim |

## Struktur Proyek

```text
lib/
├── main.dart
├── config/
│   ├── api_config.dart
│   ├── routes.dart
│   └── theme.dart
├── modules/
│   ├── auth/
│   ├── catalog/
│   ├── garden/
│   ├── home/
│   ├── recommendation/
│   └── reviews/
└── widgets/
    ├── app_shell.dart
    └── growmatch_drawer.dart
```

## Cara Menjalankan Aplikasi

### Prasyarat

Pastikan perangkat pengembangan telah memiliki:

- Flutter SDK.
- Dart SDK.
- Visual Studio Code atau IDE lainnya.
- Google Chrome, Android Emulator, atau perangkat Android.

### Instalasi

1. Clone repository:

```bash
git clone https://github.com/pbp-kelompok-f13/GrowMatch_mobile.git
```

2. Masuk ke direktori proyek:

```bash
cd GrowMatch_mobile
```

3. Install dependencies:

```bash
flutter pub get
```

4. Jalankan aplikasi di Chrome:

```bash
flutter run -d chrome
```

5. Untuk menjalankan aplikasi pada perangkat yang tersedia:

```bash
flutter devices
flutter run
```

## Tautan Proyek

- **Desain Figma:** (https://www.figma.com/design/QhkjJXSy9hQMjMsmLPqnjj/GrowMatch?node-id=4004-3&t=QkT7KyLLpikKZoTs-1)
- **Situs Web:** (https://muhammad-nararya51-growmatch.pws.cs.ui.ac.id/)
- **Repository Mobile:** (https://github.com/pbp-kelompok-f13/GrowMatch_mobile)