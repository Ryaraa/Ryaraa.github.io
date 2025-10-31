---
title: "Pengantar API Testing"
date: 2025-10-30 10:00:00 +0800
categories: [STQA]
tags: [API, testing, integration, reliability]
---

## Apa itu API?

API (Application Programming Interface) adalah antarmuka yang memungkinkan aplikasi saling berkomunikasi. API menyediakan kumpulan prosedur, fungsi, atau titik akses yang dapat digunakan oleh perangkat lunak lain.

## Mengapa perlu API Testing?

API testing memeriksa **fungsi, keandalan, kinerja, dan keamanan** API:contentReference[oaicite:17]{index=17}. Pengujian dilakukan langsung terhadap API sebagai bagian dari integrasi untuk memastikan bahwa layanan backend bekerja sesuai harapan, bahkan sebelum antarmuka pengguna tersedia.

## Contoh Sederhana

1. **Verifikasi respons:** Kirim request `GET /api/users/1` dan pastikan kode status 200 serta data pengguna sesuai.  
2. **Uji validasi input:** Kirim request dengan parameter tidak valid dan pastikan API memberikan pesan kesalahan yang tepat.  
3. **Tes kinerja:** Uji beban dengan banyak permintaan untuk mengamati waktu respons.

Tools populer untuk API testing mencakup Postman dan SoapUI.