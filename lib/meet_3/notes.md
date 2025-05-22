# 📘 Flutter Notes - 21 Mei 2025

---

## 🧱 Materi Hari Ini:

### 1. **TextField**

- Widget input teks untuk pengguna
- Digunakan untuk form: nama, email, password, deskripsi
- Properti penting:
  - `controller`, `decoration`, `obscureText`, `keyboardType`, `onChanged`
- Gunakan `TextEditingController` untuk mengelola isi
- Gunakan `Padding` dan `SizedBox` agar layout lebih rapi

---

### 2. **SingleChildScrollView**

- Membuat satu widget (seperti `Column`) bisa discroll
- Cocok untuk tampilan panjang yang tetap (bukan list dinamis)
- Bungkus form atau `Column` agar tidak overflow di layar kecil

---

### 3. **ListView**

- Daftar scrollable untuk banyak elemen
- Cocok untuk daftar produk, item berita, atau form panjang
- Dapat digunakan langsung sebagai root layout (tanpa Column)
- Gunakan `ListTile` untuk tampilan list standar

---

### 4. **GridView**

- Menampilkan elemen dalam bentuk kotak (grid)
- Gunakan `GridView.count(crossAxisCount: 2)` untuk layout grid
- Tambahkan `shrinkWrap: true` dan `NeverScrollableScrollPhysics()` jika berada dalam `SingleChildScrollView`
- Kombinasikan dengan `Stack` untuk menambahkan label di atas item

---

### 5. **Stack**

- Menumpuk elemen satu di atas yang lain
- Cocok untuk:
  - Label di atas gambar
  - Badge pada icon
  - Tombol mengambang di atas konten
- Gunakan `Positioned()` untuk atur letak anak dalam `Stack`

---

## 💬 Quote Hari Ini:

> **“Dalam Flutter, saat layar terbatas, kreativitas tak terbatas. Scroll, susun, dan tampilkan — biarkan ide mengalir tanpa batasan ruang.”**

> **“Form itu bukan sekadar kotak isian — ia adalah jembatan antara pengguna dan aplikasi. Buatlah ia sederhana, tapi bermakna.”**

---
