# MANOVA

## Asumsi
Sebelum melakukan MANOVA, penting untuk memeriksa beberapa asumsi, yaitu:

1. Normalitas Multivariat: Variabel dependen harus berdistribusi normal secara multivariat dalam setiap grup.
2. Homogenitas Matriks Kovarians: Matriks kovarians dari variabel dependen harus sama di setiap grup.
3. Independensi Observasi: Setiap observasi harus independen satu sama lain (ini biasanya merupakan asumsi desain penelitian).

## Pengujian
1. Uji Normalitas Multivariat
Untuk menguji normalitas multivariat, Anda bisa menggunakan paket MVN dan melakukan uji seperti Mardia’s test.
2. Uji Homogenitas Matriks Kovarians (Box's M Test)
Untuk menguji homogenitas matriks kovarians, kita bisa menggunakan uji Box’s M
