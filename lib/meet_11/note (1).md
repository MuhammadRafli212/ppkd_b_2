
# 🚀 Flutter Routing & Navigator

---

## 📘 Apa itu Routing?

Routing adalah sistem navigasi antar halaman (screen) di Flutter.  
Menggunakan `Navigator`, kita dapat berpindah antar halaman menggunakan berbagai metode.

---

## 🧠 5W + 1H

### ✅ What  
Routing = berpindah halaman di aplikasi Flutter menggunakan `Navigator`.

### ✅ Why  
Agar pengguna bisa menjelajahi fitur aplikasi melalui banyak halaman.

### ✅ When  
Saat aplikasi memiliki lebih dari satu screen, misalnya Login → Home → Detail.

### ✅ Where  
Digunakan di tombol, event, atau gesture dalam UI.

### ✅ Who  
Digunakan oleh semua aplikasi Flutter dengan banyak halaman.

### ✅ How  
Menggunakan metode `Navigator.push`, `pop`, `pushNamed`, dll.

---

## 📦 Metode Routing

### 1. Navigator.push
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);
```

### 2. Navigator.pop
```dart
Navigator.pop(context);
```

### 3. Navigator.pushNamed
```dart
Navigator.pushNamed(context, '/halamanBaru');
```

```dart
MaterialApp(
  routes: {
    '/': (context) => HomeScreen(),
    '/halamanBaru': (context) => HalamanBaru(),
  },
)
```

### 4. Navigator.pushReplacement
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (_) => HalamanBaru()),
);
```

### 5. Navigator.pushAndRemoveUntil
```dart
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
  (route) => false,
);
```

---

## 🧠 Analogi

| Metode                   | Analogi                                   |
|--------------------------|-------------------------------------------|
| `push()`                | Membuka tab baru                          |
| `pop()`                 | Menutup tab dan kembali                   |
| `pushReplacement()`     | Ganti halaman, tidak bisa kembali         |
| `pushNamed()`           | Navigasi berdasarkan alamat/bookmark      |
| `pushAndRemoveUntil()`  | Lompat ke halaman baru, hapus riwayat     |

---

## 📄 Tugas Praktik

**Buatlah implementasi routing menggunakan keempat metode navigasi (`push`, `pushNamed`, `pushReplacement`, dan `pushAndRemoveUntil`) dalam satu halaman.**  
Tampilkan empat tombol yang masing-masing mewakili satu metode navigasi.

---

## 💬 Quote Penutup

> “Routing bukan sekadar berpindah halaman — ia adalah cara aplikasi memandu pengguna menjelajahi makna di balik setiap layar.”

