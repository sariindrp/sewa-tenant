-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2023 pada 08.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewa-tenant`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_account_types`
--

CREATE TABLE `tbl_account_types` (
  `account_type_id` int(2) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  `account_type_order` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_account_types`
--

INSERT INTO `tbl_account_types` (`account_type_id`, `account_type`, `account_type_order`) VALUES
(1, 'Administrator', 1),
(2, 'Leasing', 2),
(3, 'Billing', 3),
(4, 'Collection', 4),
(5, 'Customer', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `admin_id` int(3) NOT NULL,
  `admin_employee_no` varchar(25) NOT NULL,
  `admin_fullname` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(75) NOT NULL,
  `admin_photo` varchar(255) NOT NULL,
  `admin_type_id` int(2) NOT NULL,
  `active_status` int(2) NOT NULL,
  `created_by` int(3) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(3) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_admins`
--

INSERT INTO `tbl_admins` (`admin_id`, `admin_employee_no`, `admin_fullname`, `admin_email`, `admin_password`, `admin_photo`, `admin_type_id`, `active_status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '1', 'Rizalul fahmi', 'rizal@gmail.com', 'ba0730af81f5d5b520778e49c650c700', '', 1, 1, 1, '2023-05-25 21:07:26', 1, '2023-05-26 11:26:30'),
(5, '19215231', 'Sariii', 'sari@gmail.com', '87c91499ced489fb66dfe5003106624a', '', 4, 1, 1, '2023-05-25 21:24:20', 1, '2023-05-25 21:24:20'),
(6, '19215034', 'syahrul', 'syahrul@gmail.com', 'bc2c4885c5668d245c4cd05da04b621d', '', 2, 1, 1, '2023-05-25 21:25:47', 1, '2023-05-25 21:25:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `payment_id` int(5) NOT NULL,
  `payment_nominal` int(11) NOT NULL,
  `payment_method_id` int(2) NOT NULL,
  `payment_status_id` int(2) NOT NULL,
  `payment_transaction_no` varchar(20) NOT NULL,
  `payment_paymentslip_file` varchar(100) NOT NULL,
  `payment_verif_id` int(2) NOT NULL,
  `payment_verif_by` int(5) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `method_id` int(2) NOT NULL,
  `method_bank_name` varchar(15) NOT NULL,
  `method_bank_account` varchar(25) NOT NULL,
  `method_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`method_id`, `method_bank_name`, `method_bank_account`, `method_type`) VALUES
(1, 'BCA', '123456789', 'Bank Transfer'),
(2, 'Mandiri', '135792468', 'Bank Transfer'),
(3, 'BNI', '1122334455', 'Bank Transfer'),
(4, 'BCA', '123456789006', 'Akun Virtual'),
(5, 'Mandiri', '135792468006', 'Akun Virtual'),
(6, 'BNI', '1122334455006', 'Akun Virtual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_renewal_transactions`
--

CREATE TABLE `tbl_renewal_transactions` (
  `renewal_id` int(5) NOT NULL,
  `renewal_no` varchar(20) NOT NULL,
  `renewal_tenant_id` int(3) NOT NULL,
  `renewal_rent_from` datetime NOT NULL,
  `renewal_rent_to` datetime NOT NULL,
  `renewal_rent_total_month` int(5) NOT NULL,
  `renewal_type_of_business` varchar(50) NOT NULL,
  `renewal_company_name` varchar(50) NOT NULL,
  `renewal_note` varchar(250) NOT NULL,
  `renewal_rent_type_id` int(2) NOT NULL,
  `renewal_active_status_id` int(2) NOT NULL,
  `renewal_contract_file` varchar(100) NOT NULL,
  `renewal_contract_verif_id` int(2) NOT NULL,
  `renewal_contract_verif_by` int(5) NOT NULL,
  `renewal_customer_id` int(5) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `modified_by` int(5) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(2) NOT NULL,
  `status_code` int(2) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  `status_category` varchar(25) NOT NULL,
  `status_category_code` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_code`, `status_name`, `status_category`, `status_category_code`) VALUES
(1, 1, 'Menunggu Pembayaran', 'Pembayaran', 'PAYMENT'),
(2, 2, 'Sudah Dibayar', 'Pembayaran', 'PAYMENT'),
(3, 3, 'Dibatalkan', 'Pembayaran', 'PAYMENT'),
(4, 1, 'Belum Aktif', 'Masa Aktif Sewa', 'ACTIVE_PERIOD'),
(5, 2, 'Aktif / Berjalan', 'Masa Aktif Sewa', 'ACTIVE_PERIOD'),
(6, 3, 'Non-aktif / Berakhir', 'Masa Aktif Sewa', 'ACTIVE_PERIOD'),
(7, 1, 'Baru', 'Jenis Sewa', 'RENT_TYPE'),
(8, 2, 'Perpanjangan', 'Jenis Sewa', 'RENT_TYPE'),
(9, 1, 'Tersedia', 'Ketersediaan', 'AVAILABILITY'),
(10, 2, 'Tidak Tersedia', 'Ketersediaan', 'AVAILABILITY'),
(11, 1, 'Aktif', 'Akun', 'ACCOUNT'),
(12, 2, 'Ditutup', 'Akun', 'ACCOUNT'),
(13, 1, 'Menunggu Verifikasi Pembayaran', 'Verifikasi Pembayaran', 'PAY_VERIFICATION'),
(14, 2, 'Proses Verifikasi Pembayaran', 'Verifikasi Pembayaran', 'PAY_VERIFICATION'),
(15, 3, 'Pembayaran Terverifikasi', 'Verifikasi Pembayaran', 'PAY_VERIFICATION'),
(16, 1, 'Menunggu Verifikasi Dokumen', 'Verifikasi Dokumen', 'DOC_VERIFICATION'),
(17, 2, 'Proses Verifikasi Dokumen', 'Verifikasi Dokumen', 'DOC_VERIFICATION'),
(18, 3, 'Dokumen Terverifikasi', 'Verifikasi Dokumen', 'DOC_VERIFICATION');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tenants`
--

CREATE TABLE `tbl_tenants` (
  `tenant_id` int(3) NOT NULL,
  `tenant_code` varchar(15) NOT NULL,
  `tenant_name` varchar(25) NOT NULL,
  `tenant_size` varchar(25) NOT NULL,
  `tenant_image` varchar(255) NOT NULL,
  `tenant_location` varchar(25) NOT NULL,
  `tenant_price` int(11) NOT NULL,
  `tenant_min_period` int(2) NOT NULL,
  `tenant_info` varchar(250) NOT NULL,
  `tenant_availability` int(2) NOT NULL,
  `created_by` int(3) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(3) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_tenants`
--

INSERT INTO `tbl_tenants` (`tenant_id`, `tenant_code`, `tenant_name`, `tenant_size`, `tenant_image`, `tenant_location`, `tenant_price`, `tenant_min_period`, `tenant_info`, `tenant_availability`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, '', 'Tenant Utama', '15 x 20 m', 'xps-7zwvnvsaafy-unsplash.jpg', 'Lantai 2', 25000000, 3, 'Tidak termasuk biaya listrik dan air', 1, 1, '2023-05-25 21:07:26', 1, '2023-05-25 21:07:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `transaction_id` int(5) NOT NULL,
  `transaction_no` varchar(20) NOT NULL,
  `transaction_tenant_id` int(3) NOT NULL,
  `transaction_rent_from` datetime NOT NULL,
  `transaction_rent_to` datetime NOT NULL,
  `transaction_rent_total_month` int(5) NOT NULL,
  `transaction_type_of_business` varchar(50) NOT NULL,
  `transaction_company_name` varchar(50) NOT NULL,
  `transaction_note` varchar(250) NOT NULL,
  `transaction_rent_type_id` int(2) NOT NULL,
  `transaction_active_status_id` int(2) NOT NULL,
  `transaction_contract_file` varchar(100) NOT NULL,
  `transaction_contract_verif_id` int(2) NOT NULL,
  `transaction_contract_verif_by` int(5) NOT NULL,
  `transaction_customer_id` int(5) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `renewal_capability` varchar(5) NOT NULL,
  `modified_by` int(5) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_identity_no` varchar(25) NOT NULL,
  `user_taxpayer_id_no` varchar(25) NOT NULL,
  `user_business_license_no` varchar(25) NOT NULL,
  `user_fullname` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone_no` varchar(15) NOT NULL,
  `user_password` varchar(75) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `user_type_id` int(2) NOT NULL,
  `user_registration_date` datetime NOT NULL,
  `active_status` int(2) NOT NULL,
  `modified_by` int(3) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_identity_no`, `user_taxpayer_id_no`, `user_business_license_no`, `user_fullname`, `user_email`, `user_phone_no`, `user_password`, `user_address`, `user_photo`, `user_type_id`, `user_registration_date`, `active_status`, `modified_by`, `modified_date`) VALUES
(1, '03021999', '03021987', '53267463247', 'Kanna Hashimoto', 'kanna@email.com', '0811 1111 1111', 'ba0730af81f5d5b520778e49c650c700', 'Jl. Maju Pantang Mundur No. 125, Kel. Maju, Kec. Pantang Mundur', '', 5, '2023-05-25 21:07:26', 1, 1, '2023-05-26 11:31:34'),
(2, '12345678910', '3222111444', '', 'Ardiansyah', 'ardiansyah@gmail.com', '0888 9999 0000', 'b623a7cebe5be1abc1409e528f6b4451', 'Jl Cengkareng kec cengkareng ', '', 5, '2023-05-26 11:33:04', 1, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_account_types`
--
ALTER TABLE `tbl_account_types`
  ADD PRIMARY KEY (`account_type_id`);

--
-- Indeks untuk tabel `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_employee_no` (`admin_employee_no`);

--
-- Indeks untuk tabel `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`method_id`);

--
-- Indeks untuk tabel `tbl_renewal_transactions`
--
ALTER TABLE `tbl_renewal_transactions`
  ADD PRIMARY KEY (`renewal_id`);

--
-- Indeks untuk tabel `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indeks untuk tabel `tbl_tenants`
--
ALTER TABLE `tbl_tenants`
  ADD PRIMARY KEY (`tenant_id`);

--
-- Indeks untuk tabel `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_identity_no` (`user_identity_no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_account_types`
--
ALTER TABLE `tbl_account_types`
  MODIFY `account_type_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `payment_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `method_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_renewal_transactions`
--
ALTER TABLE `tbl_renewal_transactions`
  MODIFY `renewal_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_tenants`
--
ALTER TABLE `tbl_tenants`
  MODIFY `tenant_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `transaction_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
