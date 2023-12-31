# FP-TKA-C-Kelompok-4

Nama Anggota Kelompok | NRP
------------------- | --------------
Della Setyowati | 5027211044
I Gusti Agung B.M.S. | 5027211046
Caroline Permatasari | 5027211048
Naufal Ammar Saputra | 5027211052
Brigita Naraduhita P.P. | 5027211055
Gilbert Immanuel H. | 5027211056
Nathania Elirica Aliyah | 5027211057

# Output Final Project
## Introduction
Pada project kali ini, dalam menyelesaikan permasalahan pada soal, kami menggunakan dua platform yang berbeda yaitu Digital Ocean dan Vagrant. Dari percobaan menggunakan dua platform ini akan di berikan kesimpulan di akhir mana yang lebih baik.
 
## Digital Ocean
### A. Arsitektur dan Tabel Harga 
- Arsitektur

![image](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/49481292-0e26-4f1c-bca4-ec53e4efad32)

- Tabel Harga
  
Spesifikasi ke-1

![untitled](https://cdn.discordapp.com/attachments/901344920361656355/1184785764890968134/image.png?ex=658d3cba&is=657ac7ba&hm=5ab84628923df4aafaf0d58991595325bc9ae6032d1d557c5c2ff4ff788d06af&)

Spesifikasi ke-2

![untitled](https://cdn.discordapp.com/attachments/901344920361656355/1184787369380040734/image.png?ex=658d3e39&is=657ac939&hm=b752cb778452c3f059f786798b883299e150bbc32f8fdb5842335667fa182422&)

### B. Langkah implementasi
#### Langkah Implementasi Digital Ocean

1. Buat database MongoDB pada Digital Ocean

<a href="https://ibb.co/xMs0hcX"><img src="https://i.ibb.co/Jzd4nbm/fptka-nomer1-1.jpg" alt="fptka-nomer1-1" border="0"></a>

<a href="https://ibb.co/tz9WX84"><img src="https://i.ibb.co/nBF5Czb/fptka-nomer1-2.jpg" alt="fptka-nomer1-2" border="0"></a>

2. Pada connection details, copy connection string 

<a href="https://ibb.co/RbmvBJG"><img src="https://i.ibb.co/W5wxPRN/fptka-nomer2.jpg" alt="fptka-nomer2" border="0"></a>

3. Buka MongoDB Compass, paste connection string dari Digital Ocean 

<a href="https://ibb.co/f2fGRKs"><img src="https://i.ibb.co/JKVFLb9/fptka-nomer3.jpg" alt="fptka-nomer3" border="0"></a>

4. Buat koleksi database baru dengan nama database "myDatabase" dan nama koleksi "orders"

<a href="https://ibb.co/4R4vMcP"><img src="https://i.ibb.co/SwVY02R/fptka-nomer4.jpg" alt="fptka-nomer4" border="0"></a>

5. Masukkan database sesuai dengan variabel yang diatur 

<a href="https://ibb.co/jvQ8XDg"><img src="https://i.ibb.co/4ZXFrpP/fptka-nomer5.jpg" alt="fptka-nomer5" border="0"></a>

6. Buat Workers (2) dengan cara create droplets. 

| Workers                 | Specifications                                       |
|-------------------------|-------------------------------------------------------|
| Worker 1                | - 1 GB / 1 Intel CPU                                  |
|                         | - 35 GB NVMe SSDs                                     |
|                         | - 1000 GB transfer                                   |
| Worker 2                | - 2 GB / 1 Intel CPU                                  |
|                         | - 70 GB NVMe SSDs                                     |
|                         | - 2 TB transfer                                       |

<a href="https://ibb.co/54f0Qv2"><img src="https://i.ibb.co/4t5qbMJ/fptka-nomer6-1.jpg" alt="fptka-nomer6-1" border="0"></a>

<a href="https://ibb.co/ssqkx5P"><img src="https://i.ibb.co/frHB68S/fptka-nomer6-2.jpg" alt="fptka-nomer6-2" border="0"></a>

7. Install dependencies dan deploy Workers 

<a href="https://ibb.co/h9M1jDb"><img src="https://i.ibb.co/yPRB1Wt/fptka-nomer7-1.jpg" alt="fptka-nomer7-1" border="0"></a>

<a href="https://ibb.co/C0R3dPh"><img src="https://i.ibb.co/WKm49Vg/fptka-nomer7-2.jpg" alt="fptka-nomer7-2" border="0"></a>

8. Buat Load Balancer dan tambahkan kedua worker  

<a href="https://ibb.co/vqZcrC1"><img src="https://i.ibb.co/H4nKML7/fptka-nomer8-1.jpg" alt="fptka-nomer8-1" border="0"></a>

<a href="https://ibb.co/WfsvM1y"><img src="https://i.ibb.co/zZNVBwR/fptka-nomer8-2.jpg" alt="fptka-nomer8-2" border="0"></a>

9. Jika Load Balancer sudah bekerja, jalankan file locust dan lakukan testing locust dengan memasukkan IP Load Balancer. 

### C. Hasil pengujian endpoint 
1. Post Order
   ![post](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/06c02fce-e4d2-4075-8333-14a819a0ea4f)

2. Get Order
   ![get](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/b35657b0-3493-4ec7-9c06-05b3c2d55a67)

3. Get a Specific Order by ID
   ![get id](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/e3659f5a-db83-4bf5-b363-e1dd772fc69b)

4. Update an Order by ID
   ![put](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/0ab65776-352f-4e64-a935-f18ab8268fa3)

5. Delete an Order by ID
   ![del](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/128a57ed-c40d-4f23-a94c-66441cd2cc18)
   
### D. Hasil pengujian locust
- 500 user 25 spawn rate 60s

![500-25](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/313598b7-138e-42f8-9e32-0511edfdde49)

- 500 user 50 spawn rate 60s

![500-50](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/4e15ee6f-a6c1-458e-aeeb-7c2a274b08e5)

- 500 user 100 spawn rate 60s

![500-100](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/058bbb26-1397-49cf-92fb-d98ad1751f3a)

- 500 user 25 spawn rate 60s

![500-25-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/e7a33936-91cb-45f3-a6b8-e274920f7664)

- 500 user 50 spawn rate 60s

![500-50-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/f2ea8895-bfc8-4eda-aa75-1eab377ae2da)

- 500 user 100 spawn rate 60s

![500-100-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/0ec97bcd-28c5-4d0e-9993-d8ec333db8bd)

- RPS Maksimum

![RPSMax](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/aa6c3a46-255a-4367-bad5-672491799e95)

### Perbandingan antara kedua percobaan

![perbandingan](https://i.ibb.co/71RjkdX/perbandingan-testing.png)


## Vagrant

### A. Arsitektur dan Tabel Harga
![image](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/f13645f2-c30f-47f6-b512-71d3826a87d5)

Workers | Specifications
------- | --------------
Worker 1 | 1vCPU, 2GB Memory
Worker 2 | 1vCPU, 2GB Memory


### B. Langkah implementasi
#### Langkah Implementasi Vagrant
1. Buat database MongoDB
![image](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100349628/4f5d2f75-5060-4717-bd64-759708ebefe7)

2. Buat db baru dengan nama database "orders_db"
   
![image](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100349628/46a1abf0-322b-4693-b49a-c671265449ef)

2. Masukkan database sesuai dengan variabel yang diatur 
![image](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100349628/9c53970e-1140-4953-bce1-9cc2f6af4f28)

4. Buat Workers (2) pada VagrantFile
![Worker](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/c2321224-35f8-4d45-90da-66f1476d9be1)

Workers | Specifications
------- | --------------
Worker 1 | 1vCPU, 2GB Memory
Worker 2 | 1vCPU, 2GB Memory

5. Run app.py hingga muncul url-nya. Untuk mengecek database-nya bisa menggunakan postman, request ke url/orders. Jika statusnya sudah 200 ok, maka database sudah bisa berjalan dengan normal
![GetVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/25c4aba4-5bdd-4f2a-be9e-3276af456ce9)

6. Deploy VM untuk worker dengan installasi requirement yang diperlukan di worker
![Installasi](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/aac95734-3dc7-4b52-b2e7-bcdcfe5850e2)

7. Jika tidak ada error, maka selanjutnya bisa dilakukan testing



### C. Hasil pengujian endpoint
1. Post Order
   ![PostVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/3eba3a0e-2cdb-4f30-bac9-43664fc24fab)

2. Get Order
   ![GetVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/25c4aba4-5bdd-4f2a-be9e-3276af456ce9)

3. Get a Specific Order by ID
   ![GetSpecificVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/18b9df3f-a8b0-4a71-824e-687f911b3c10)

4. Update an Order by ID
   ![UpdateVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/480baab4-e20e-4cb7-bee9-9e9816e047c7)

5. Delete an Order by ID
   ![DeleteVagrant](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/100693191/60a6bcc4-4455-4891-a8ae-92bf2f912ca2)


### D. Hasil pengujian locust 
- 800 user 25 spawn rate 60s

![800-25-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/eb3ea8aa-c563-4809-a68c-f7f6fa593761)

- 1000 user 25 spawn rate 60s

![1000-25-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/b4d25ece-f203-49e6-abb9-75af13e474e2)

- 2000 user 50 spawn rate 60s

![2000-50-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/17870773-580c-4910-b54e-c96306d0d41f)

- Max user 25 spawn rate 60s

![max-25-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/0da0f5c7-33e5-4405-a8dc-85476bf10879)

- Max user 50 spawn rate 60s

![max-50-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/7e055537-a444-444a-82ee-0d2058ebe304)

- Max user 100 spawn rate 60s

![max-100-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/0c37cf78-55ee-4572-b90c-bd5d273db0a1)


# Kesimpulan & Saran
- Setelah melakukan pengecekan harga, vagrant bisa digunakan secara free dan digital ocean berbayar. Tetapi dari segi fitur dan jaminan dalam jangka panjang, Digital Ocean lebih baik dengan harga yang terjangkau pula.
- Berdasarkan percobaan pada digital ocean, diketahui bahwa ketika spesifikasi worker berbeda maka menjadikan beban kinerjanya tidak seimbang dan berakibat load balancer menjadi down.
Sehingga dari percobaan ini kami menyarankan untuk menggunakan worker dengan spesifikasi yang tinggi dan seimbang agar kinerja load balancer dapat lebih seimbang. Karena ketika mencoba menggunakan 1 load balancer dan 2 worker terjadi down pada kedua worker tersebut.

![down](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/a954021d-8339-4306-9b16-3d70a9d8a466)

- Perlu dilakukan testing di jaringan yang stabil pula untuk mendapatkan maksimum peak concurrency yang optimal.
- Opsi lain untuk melakukan testing adalah dengan melakukannya di worker baru pada DigitalOcean, bukan dari local device agar hasil testing dapat lebih testing.

# Revisi

- 5000 user 100 spawn rate 60s (Peak)

![max-100-60s](https://github.com/Delsea12/FP-TKA-C-Kelompok-4/assets/102176304/0c37cf78-55ee-4572-b90c-bd5d273db0a1)

