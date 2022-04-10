# P1_Probstat_A_5025201075

## Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### 1a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)

    dgeom(x, p)
    
 * Pada RStudio terdapat fungsi `dgeom(x, p)` untuk menghitung distribusi geometrik, kita hanya perlu memasukan nilai dari x dan peluang kejadian suksesnya (p) saja untuk dapat menggunakan fungsi ini
 * Detail mengenai fungsi ini bisa dilihat pada bagian dokumentasi dengan menuliskan `?dgeom` pada bagian console
 * Dengan memasukan nilai x = 3 dan peluang suksesnya p = 0.2 maka didapatkanlah hasil sebagai berikut



### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

    set.seed(10)
    mean(rgeom(n, p) == 3)

* Pada RStudio terdapat fungsi `rgeom(n, p)` yang digunakan untuk melakukan random sebanyak n nilai dari distribusi geometrik dengan peluang suksenya adalah p, dengan nilai n = 10000 dan p = 0.2
* Pada kasus ini menggunakan fungsi `set.seed()` agar nilai dari randomisasi yang dilakukan tidak berubah ubah, jika tidak menggunakan ini pun tidak masalah, namun nantinya setiap kita menjalankan program hasilnya akan selalu berubah.
* Kemudian menggunakan fungsi `mean()` untuk menghitung rata-rata dari randomisasi nilai yang dilakukan kemudian tidak lupa juga untuk menambahkan bagian dari distribusi geometrik acak yang memiliki nilai X == 3 pada fungsi `mean()` ini.
* Berikut merupakan bukti screenshoot dari program yang dijalankan


### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
* Yang didapatkan dari poin a dan b adalah 


### 1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama



### 1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

    rataan <- 1/p
    varians <- (1-p)/p^2

* Nilai dari rataan dan varian dari distribusi geometrik adalah 1/p dan (1-p)/p^2, jadi kita bisa langsung melakukan perhitungan dan didapatkanlah hasil sebagai berikut


## Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### 2a
Peluang terdapat 4 pasien yang sembuh.

    dbinom(4, n, p)
    
* Pada soal ini kita diminta untuk menghitung dari peluang banyaknya 4 pasien yang sembuh dari 20 penderita covid dengan peluang sembuhnya adalah p = 0.2
* Kita dapat menghitung ini dengan menggunakan fungsi `dbinom(x, size, prob)` dengan nilai x = 4, size = 20, dan prob = 0.2
* Detail mengenai fungsi ini bisa dilihat pada bagian dokumentasi dengan menuliskan `?dbinom` pada bagian console
* Maka didapatkanlah hasil sebagai berikut


### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut.




### 2c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.

    rataan <- n * p
    varians <- n * p * (1-p)

* Nilai dari rataan dan varian dari distribusi binomial adalah n * p dan n * P * q, dimana q = 1-p, jadi kita bisa langsung melakukan perhitungan dan didapatkanlah hasil sebagai berikut


## Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### 3a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

    dpois(x, lamd)
    
* Terdapat fungsi `dpois(x, lambda)` pada RStudio yang digunakan untuk menghitung distribusi poison dengan x adalah jumlah sukses yang diperoleh dalam periode tertentu dan lambda adalah rata-rata kejadian sukses dalam rentang waktu tertentu
* Detail mengenai fungsi ini bisa dilihat pada bagian dokumentasi dengan menuliskan `?dpois` pada bagian console
* Pada soal ini x memiliki nilai sebesar 6 dan lambda sebesar 4.5, kita tinggal memasukan nilai tersebut pada bagian parameter fungsi yang ada dan didapatkanlah hasil sebegai berikut

### 3b
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)




### 3c
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan




### 3d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

    rataan <- lamd
    varians <- lamd
    
* Nilai dari kedua rataan dan varian dari distribusi poison sama yaitu lambda itu sendiri, jadi kita bisa langsung melakukan perhitungan dan didapatkanlah hasil sebagai berikut



## Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4a
Fungsi Probabilitas dari Distribusi Chi-Square.

    dchisq(x, df)
 
* Terdapat fungsi `dchisq()` pada RStudio yang digunakan untuk menghitung nilai dari distribusi Chi-Square
* Detail mengenai fungsi ini bisa dilihat pada bagian dokumentasi dengan menuliskan `?dchisq` pada bagian console
*  dengan nilai x = 2 dan df = 10, kita tinggal memasukan nilai tersebut pada bagian parameter fungsi yang ada dan didapatkanlah hasil sebegai berikut


### 4b
Histogram dari Distribusi Chi-Square dengan 100 data random.



### 4c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

    rataan <- df
    varians <- df * 2
    
* Nilai dari rataan dan varian dari distribusi chi-square adalah v nya itu sendiri dan v * 2, jadi kita bisa langsung melakukan perhitungan dan didapatkanlah hasil sebagai berikut



## Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### 5a
Fungsi Probabilitas dari Distribusi Exponensial



### 5b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random


### 5c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R



## Nomor 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### 6a
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
  
  Keterangan :
  
  X1 = Dibawah rata-rata
 
  X2 = Diatas rata-rata
  
  Contoh data :
  
  1,2,4,2,6,3,10,11,5,3,6,8
  
  rata-rata = 5.083333
  
  X1 = 5
  
  X2 = 6


### 6b
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan : 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

Contoh : 312312312_Rola_Probstat_A_DNhistogram



### 6c
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.







