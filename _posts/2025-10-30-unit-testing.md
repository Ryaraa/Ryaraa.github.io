---
title: "Pengantar Unit Testing"
date: 2025-10-30 10:00:00 +0800
categories: [STQA]
tags: [unit testing, AAA pattern, framework]
---

## Apa itu Unit Testing?

Unit testing adalah pengujian bagian terkecil dari perangkat lunak, misalnya fungsi atau metode, untuk memastikan bahwa unit tersebut berperilaku sesuai kebutuhan. Pengujian ini membantu menemukan bug lebih awal dan memudahkan pemeliharaan karena kesalahan dapat ditelusuri ke unit spesifik:contentReference[oaicite:14]{index=14}.

## Pola Arrange–Act–Assert (AAA)

Menurut Semaphore, unit test yang baik mengikuti pola **AAA**:contentReference[oaicite:15]{index=15}:

1. **Arrange:** Siapkan kondisi awal dan data yang diperlukan.  
2. **Act:** Jalankan kode yang akan diuji.  
3. **Assert:** Verifikasi bahwa hasilnya sesuai dengan yang diharapkan:contentReference[oaicite:16]{index=16}.

Pola ini membuat tes lebih jelas dan terstruktur, sehingga mudah dipahami dan dirawat.

## Contoh Sederhana

Misal kita menguji fungsi penjumlahan dalam Python:

```python
def sum(a, b):
    return a + b

def test_sum():
    # Arrange
    x, y = 2, 3
    # Act
    result = sum(x, y)
    # Assert
    assert result == 5
