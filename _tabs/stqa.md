---
title: Rangkuman Materi STQA 2025
icon: fas fa-book
order: 6
---

# 🧠 Rangkuman Materi STQA 2025

## 🧩 1. Strategi Testing
**Testing** adalah proses untuk memverifikasi dan memvalidasi bahwa sistem atau perangkat lunak bekerja sesuai kebutuhan.  
Tujuan utamanya: menemukan kesalahan sebelum perangkat lunak dirilis.

**Siklus hidup testing:**
1. **Perencanaan:** Menentukan strategi dan cakupan tes.  
2. **Desain:** Membuat test case & test scenario.  
3. **Eksekusi:** Melakukan pengujian.  
4. **Pelaporan:** Menyusun hasil dan bug report.  
5. **Perbaikan:** Analisis hasil & retesting.

**Jenis strategi testing:**
- **Berdasarkan tingkat:** Unit → Integrasi → Sistem → Acceptance.  
- **Berdasarkan fungsi:** Fungsional & Non-fungsional (kinerja, keamanan, usability, reliabilitas).  
- **Berdasarkan struktur:**  
  - *Black Box Testing* → fokus pada input/output tanpa melihat kode.  
  - *White Box Testing* → fokus pada struktur kode.  

---

## 🎨 2. UI/UX Testing
**UI (User Interface) Testing** memeriksa aspek tampilan dan interaksi visual aplikasi.  
Fokus: *konsistensi desain, responsivitas, dan kompatibilitas antarlayar.*

**UX (User Experience) Testing** memeriksa pengalaman pengguna saat memakai aplikasi.  
Fokus: *alur kerja, kemudahan penggunaan, aksesibilitas.*

**Metode umum:**
- **Manual Testing**
- **A/B Testing** → membandingkan dua versi antarmuka.  
- **Heatmaps** → melihat area klik pengguna.  
- **Heuristic Evaluation (Jakob Nielsen)** → menilai kesesuaian desain dengan 10 prinsip usability.

---

## 🧾 3. Testing Plan
**Testing Plan** adalah dokumen panduan yang menjelaskan strategi, ruang lingkup, sumber daya, dan jadwal pengujian.

**Tujuan:**
- Mengarahkan seluruh proses pengujian.
- Menjamin konsistensi dan cakupan tes sesuai kebutuhan sistem.

**Komponen utama (IEEE 829):**
- Identifikasi sistem yang diuji  
- Tujuan & strategi pengujian  
- Sumber daya, jadwal, risiko  
- Deliverables (test case, laporan hasil)

**Contoh kasus:**  
*Aplikasi BMI Calculator* untuk menghitung indeks massa tubuh dan mengkategorikan hasil (underweight, normal, overweight, obese).

---

## 🧠 4. Test Scenario, Test Case, dan Bug Report
**Test Scenario** → gambaran umum situasi yang akan diuji.  
**Test Case** → langkah detail untuk menguji fitur spesifik.

**Format umum Test Case:**
| ID | Deskripsi | Input | Expected Output | Status |

|----|------------|--------|-----------------|---------|

**Bug Report** → catatan jika terjadi kesalahan atau hasil tak sesuai ekspektasi.  
Isi biasanya: ID bug, deskripsi, langkah reproduksi, hasil aktual, hasil diharapkan, status, dan penanggung jawab.

---

## ⚙️ 5. Unit Testing
**Unit Testing** adalah pengujian pada komponen terkecil (fungsi/metode) dari perangkat lunak.

**Keunggulan:**
- Menemukan bug lebih awal.  
- Memudahkan maintenance.  
- Menjamin keandalan fungsi dasar.

**Struktur dasar AAA (Arrange–Act–Assert):**
1. **Arrange:** Siapkan kondisi awal.  
2. **Act:** Jalankan fungsi yang diuji.  
3. **Assert:** Periksa apakah hasilnya sesuai.

**Framework umum:**
- **JUnit** (Java)  
- **Pytest** (Python)  
- **Jest** (JavaScript)

---

## 🔗 6. API Testing
**API (Application Programming Interface)** memungkinkan komunikasi antar aplikasi.  
**API Testing** memastikan endpoint API berjalan sesuai fungsinya.

**Keunggulan:**
- Validasi logika bisnis tanpa UI.  
- Cek performa & keamanan komunikasi data.

**Tools utama:**
- **Postman** → GUI untuk kirim request (GET, POST, PUT, DELETE).  
- **SoapUI** → alternatif berbasis XML.

**Komponen utama request:**
- **Endpoint URL**  
- **Method (GET/POST/PUT/DELETE)**  
- **Header & Body**  
- **Response Code (200, 404, 500)**

---

## 🌐 7. Selenium WebDriver
**Selenium WebDriver** adalah framework otomatisasi browser berbasis skrip.

**Kegunaan:**
- Menguji aplikasi web secara otomatis.  
- Simulasi interaksi pengguna (klik, ketik, scroll).

**Langkah umum:**
1. Instal Selenium untuk Python:  
   ```bash
   pip install selenium
2. Buka browser secara otomatis.

3. Temukan elemen HTML (ID, name, CSS selector).

4. Lakukan aksi (click(), send_keys()).

5. Verifikasi hasil.

Studi kasus:
Uji login di saucedemo.com
untuk memastikan form berfungsi dengan benar.

# 💻 Cypress

**Cypress** adalah framework modern untuk *end-to-end testing* berbasis JavaScript yang berjalan langsung di browser.

---

## ⚙️ Keunggulan
- Arsitektur modern (dijalankan langsung di browser, bukan di luar proses).
- Fitur **Time Travel** — merekam dan memutar ulang langkah pengujian.
- **Real-time reloading** — setiap perubahan kode langsung dieksekusi ulang.

---

## 🧱 Struktur Kode Cypress

```js
describe('Login Test', () => {
  it('should log in successfully', () => {
    cy.visit('https://www.saucedemo.com/');
    cy.get('#user-name').type('standard_user');
    cy.get('#password').type('secret_sauce');
    cy.get('#login-button').click();
  });
});