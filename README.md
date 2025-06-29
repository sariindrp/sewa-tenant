# 🏢 Sewa Tenant – Aplikasi Penyewaan Tenant Pusat Perbelanjaan

**Sewa Tenant** adalah aplikasi web berbasis **PHP dan MySQL** yang dikembangkan untuk membantu pengelolaan penyewaan tenant di pusat perbelanjaan. Aplikasi ini dibuat sebagai bagian dari tugas akhir mata kuliah **Web Programming 2**.

**Sewa Tenant** is a PHP-MySQL web application developed to streamline the management of mall tenant rentals. This system was built as a final project for the Web Programming 2 course.

---

## 🔧 Fitur Utama | Key Features

### 👤 Untuk Admin & Petugas
- Mengelola data tenant (tambah, ubah, hapus)
- Manajemen pengguna (admin dan pelanggan)
- Verifikasi transaksi penyewaan
- Kelola metode pembayaran (bank, rekening, dll)
- Statistik pada dashboard (jumlah tenant, transaksi, dan pengguna aktif)
- Unduh kontrak sewa dan cetak invoice

### 👥 Untuk Pelanggan
- Registrasi dan login
- Lihat daftar tenant dan detail informasi
- Ajukan permintaan penyewaan
- Pantau status transaksi dan tagihan
- Unduh kontrak penyewaan dalam format file

---

## 🛠️ Teknologi yang Digunakan | Tech Stack

- **Backend**: PHP (Native)
- **Database**: MySQL
- **Frontend**: HTML, CSS, Bootstrap
- **Tools**: XAMPP, phpMyAdmin

---

## 👥 Hak Akses Pengguna | User Roles

- **Admin**: Memiliki kendali penuh atas seluruh sistem dan data
- **Petugas (Leasing Officer)**: Mengelola tenant, pelanggan, dan transaksi penyewaan
- **Customer (Pelanggan)**: Mengajukan sewa dan mengelola transaksinya sendiri

---

## 🎯 Tujuan Proyek | Project Purpose

Aplikasi ini bertujuan untuk mendigitalisasi proses penyewaan tenant, mengurangi potensi kesalahan pencatatan manual, dan mempercepat proses verifikasi serta pembayaran yang dilakukan oleh pihak pengelola.

This web system aims to digitize the tenant rental workflow, minimize human errors, and facilitate a more efficient verification and payment process handled by administrators.

---

## 📌 Catatan | Notes

Seluruh data dalam aplikasi ini hanya bersifat simulasi dan digunakan untuk keperluan pembelajaran akademik.  
All content is purely fictional and intended for academic learning purposes only.

---

## 🖼️ Tampilan Aplikasi | Screenshots

### 🔐 Login & Registrasi Pengguna
![Login](https://github.com/user-attachments/assets/896e1acf-942a-4eba-84eb-441efc1de03b)
![SignIn](https://github.com/user-attachments/assets/e5c3c64d-0a7b-4b2d-ad61-e96843a3b753)

### 🏠 Tampilan Admin – Dashboard, Transaksi, dan Tenant
![Dashboard](https://github.com/user-attachments/assets/44c2090b-8358-4026-ab47-08f1ea8903bf)
![Transaksi](https://github.com/user-attachments/assets/57f21649-0a23-4aec-8826-6e0c93146903)
![Tenant](https://github.com/user-attachments/assets/179c219e-1b76-45c5-bd85-dd7dc29c8066)
![Tenant2](https://github.com/user-attachments/assets/11400280-d98d-48ff-9ed7-51c97a197f1d)

### 🧑‍💼 Tampilan Petugas
![Petugas](https://github.com/user-attachments/assets/e5f19dfa-4bb8-4441-b01c-95b2b97d2a80)

Menu akun pengguna memungkinkan petugas melihat daftar user baik admin, petugas, maupun pelanggan. Data mencakup NIP, nama, email, dan hak akses, lengkap dengan tombol untuk mengedit dan menghapus.  
![User List](https://github.com/user-attachments/assets/60b32a66-66e9-4025-a5da-0b2d895093b1)

Data pelanggan menampilkan informasi penyewa seperti nama, email, dan aksi (lihat detail, edit, atau hapus).  
![Pelanggan](https://github.com/user-attachments/assets/08b7eddf-5854-4be3-aed8-9a2979dbd82c)

Pada menu metode pembayaran, petugas dapat mengatur informasi bank, nomor rekening, dan jenis metode yang digunakan. Tersedia juga tombol aksi untuk edit dan hapus.  

---

### 👨‍💼 Tampilan Pelanggan – Transaksi Penyewaan
![Customer Transaksi](https://github.com/user-attachments/assets/dc6baad0-9dd4-42ae-9490-4888b2d79e9d)

Tampilan pelanggan berbeda dari admin/petugas, hanya menampilkan fitur yang berkaitan dengan transaksi penyewaan. Pelanggan dapat memilih tenant, mengisi data penyewaan, mengunduh kontrak, dan melihat status pembayaran. Petugas akan memproses transaksi dan membuatkan invoice.
