# rubyautomation
belajar ruby automation

===== RUBY ===
1. Buat folder
2. Masuk ke folder jalankan
cucumber --init
3. Masuk ke features jalankan
touch login.feature

> Di gherkins ada 4 bahasa
a. Given = Bahan yg harus ada
b. When = Aksi yang perlu dilakukan untuk mencapai goal
c. Then = Goal tersebut (sesuatu yang diekspetasikan)
d. Scenario = Nama skenario nya

4. Di dalam login.feature isi skenario dengan Give, Then, When terserah sesuai skenario

5. Terus pindah ke folder utama, jalankan
cucumber features\login.feature

6. Sudah dapat step nya, di copy lalu paste di file baru di folder step_definitions, beri nama file nya
login_steps.rb

> nama sebelum underscore tapi setelah underscore harus steps

7. Setelah di paste, jalankan lagi di folder utama
cucumber features\login.feature

8. Setelah dijalankan, copy settingan untuk set up automationnya (ada di file) dan masukan ke dalam file
env.rb

9. Setelah di copy, jalankan lagi untuk melihat driver sudah terkonek atau belum
cucumber

> https://gist.github.com/zhengjia/428105

10. Bikin script nya
