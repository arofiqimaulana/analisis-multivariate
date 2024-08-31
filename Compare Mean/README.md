# Vektor Nilai Tengah

## Pendahuluan
Vektor nilai tengah adalah konsep dasar dalam statistik multivariat yang digunakan untuk mendeskripsikan rata-rata dari sekelompok data multivariat. Berbeda dengan rata-rata sederhana yang hanya mempertimbangkan satu variabel, vektor nilai tengah mempertimbangkan beberapa variabel sekaligus, menjadikannya alat penting dalam analisis data multivariat.

## Daftar Isi
1. [Apa itu Vektor Nilai Tengah?](#apa-itu-vektor-nilai-tengah)
2. [Cara Menghitung Vektor Nilai Tengah](#cara-menghitung-vektor-nilai-tengah)
3. [Aplikasi Vektor Nilai Tengah](#aplikasi-vektor-nilai-tengah)
4. [Contoh Penghitungan](#contoh-penghitungan)
5. [Kesimpulan](#kesimpulan)
6. [Sumber dan Bacaan Lanjutan](#sumber-dan-bacaan-lanjutan)

## Apa itu Vektor Nilai Tengah?
Vektor nilai tengah adalah rata-rata dari beberapa variabel sekaligus dalam dataset multivariat. Jika Anda memiliki dataset dengan beberapa variabel, Anda bisa menghitung rata-rata untuk setiap variabel dan menggabungkannya menjadi sebuah vektor. Vektor ini disebut sebagai vektor nilai tengah.

### Notasi
Vektor nilai tengah untuk dataset multivariat dengan $p$ variabel dapat dinyatakan sebagai:

$$
\bar{\mathbf{X}} = \left[ \bar{X_1}, \bar{X_2}, \dots, \bar{X_p} \right]
$$

Di mana:
- $\bar{X_1}, \bar{X_2}, \dots, \bar{X_p}$ adalah rata-rata dari setiap variabel.

## Cara Menghitung Vektor Nilai Tengah
Langkah-langkah menghitung vektor nilai tengah adalah sebagai berikut:
1. **Kumpulkan data**: Pastikan Anda memiliki dataset yang terdiri dari beberapa variabel.
2. **Hitung rata-rata untuk setiap variabel**: Gunakan rumus rata-rata sederhana untuk setiap kolom (variabel) dalam dataset.
3. **Bentuk vektor nilai tengah**: Gabungkan rata-rata dari setiap variabel menjadi sebuah vektor.

### Contoh
Misalkan Anda memiliki dataset dengan dua variabel $X_1$ dan $X_2$:

$$
\mathbf{X} = \begin{bmatrix} X_{11} & X_{12} \\ X_{21} & X_{22} \\ \vdots & \vdots \\ X_{n1} & X_{n2} \end{bmatrix}
$$

Vektor nilai tengahnya adalah:

$$
\bar{\mathbf{X}} = \begin{bmatrix} \frac{1}{n} \sum_{i=1}^{n} X_{i1} \\ \frac{1}{n} \sum_{i=1}^{n} X_{i2} \end{bmatrix}
$$

## Aplikasi Vektor Nilai Tengah
Vektor nilai tengah digunakan dalam berbagai analisis statistik multivariat, seperti:
- **Analisis Discriminant**: Untuk mengklasifikasikan data berdasarkan vektor nilai tengah dari grup yang berbeda.
- **Uji Hipotesis Multivariat**: Untuk menguji apakah dua atau lebih grup memiliki vektor nilai tengah yang sama.
- **Analisis Komponen Utama (PCA)**: Sebagai dasar untuk mentransformasikan data ke komponen utama.

## Contoh Penghitungan
Misalkan kita memiliki dataset dengan dua variabel: Berat dan Tinggi.

| Berat (kg) | Tinggi (cm) |
|------------|-------------|
| 60         | 160         |
| 65         | 165         |
| 70         | 170         |
| 75         | 175         |
| 80         | 180         |

Untuk menghitung vektor nilai tengah:
1. Rata-rata Berat $\bar{X_1} = \frac{60 + 65 + 70 + 75 + 80}{5} = 70$ kg.
2. Rata-rata Tinggi $\bar{X_2} = \frac{160 + 165 + 170 + 175 + 180}{5} = 170$ cm.

Vektor nilai tengahnya adalah:

$$
\bar{\mathbf{X}} = \begin{bmatrix} 70 \\ 170 \end{bmatrix}
$$

## Kesimpulan
Vektor nilai tengah adalah konsep dasar yang sangat penting dalam analisis statistik multivariat. Dengan memahami cara menghitung dan menerapkannya, Anda dapat melakukan berbagai analisis yang lebih kompleks, seperti uji hipotesis multivariat, analisis discriminant, dan lainnya.

## Sumber dan Bacaan Lanjutan
- **Buku**: "Multivariate Data Analysis" oleh Hair, J.F., Anderson, R.E., Tatham, R.L., dan Black, W.C.
- **Artikel**: "Understanding Multivariate Statistics" oleh Tabachnick, B.G., dan Fidell, L.S.
- **Website**: [Khan Academy](https://www.khanacademy.org) - Pembelajaran statistik dasar dan lanjutan.

Dengan mempelajari vektor nilai tengah, Anda akan memiliki dasar yang kuat untuk melanjutkan ke topik-topik yang lebih kompleks dalam statistik multivariat.
