---
title: "Pengantar Selenium WebDriver"
date: 2025-10-30 10:00:00 +0800
categories: [STQA]
tags: [Selenium, WebDriver, automation, browser]
---

## Apa itu Selenium WebDriver?

Selenium WebDriver adalah bagian dari proyek Selenium yang digunakan untuk **mengotomatisasi browser**. WebDriver memiliki arsitektur yang lebih sederhana dibanding pendahulunya (Selenium RC) dan **berkomunikasi langsung dengan browser**, sehingga waktu eksekusi lebih cepat:contentReference[oaicite:18]{index=18}.

## Keunggulan WebDriver

Menurut TutorialsPoint, beberapa kelebihan WebDriver meliputi:contentReference[oaicite:19]{index=19}:

- **Gratis dan open‑source**.  
- Dapat diperluas untuk berbagai teknologi yang menggunakan DOM.  
- Mendukung banyak browser (Chrome, Firefox, Edge, Safari).  
- Berjalan di berbagai sistem operasi dan perangkat, termasuk mode headless.  
- Komunitas besar sehingga mudah mencari bantuan.

WebDriver juga mendukung banyak bahasa pemrograman seperti Java, Python, C#, dan JavaScript:contentReference[oaicite:20]{index=20}.

## Contoh Sederhana (Python)

```python
from selenium import webdriver
from selenium.webdriver.common.by import By

# Inisialisasi driver (misal Chrome)
driver = webdriver.Chrome()

# Buka situs
driver.get("https://www.saucedemo.com")

# Masukkan kredensial
driver.find_element(By.ID, "user-name").send_keys("standard_user")
driver.find_element(By.ID, "password").send_keys("secret_sauce")

# Klik tombol login
driver.find_element(By.ID, "login-button").click()

# Pastikan login berhasil dengan memeriksa kehadiran elemen tertentu...
# Setelah selesai, tutup browser
driver.quit()
