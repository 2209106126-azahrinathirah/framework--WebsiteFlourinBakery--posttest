# POSTTEST 1

- Nama : Andi Zahrina Athirah Ahmad
- NIM : 2209106126

## Screenshot Halaman Website

![Screenshot 2024-09-23 210336](https://github.com/user-attachments/assets/c02e395f-4000-46cb-b195-cb6833cd4ec1)

![Screenshot 2024-09-23 210455](https://github.com/user-attachments/assets/7fe7ddc5-9dcf-49b9-b4d9-657bb2abe28d)

![Screenshot 2024-10-02 004345](https://github.com/user-attachments/assets/f8618413-aae8-4a92-9837-334731435f1f)


# POSTTEST 2
## Screenshot Database
### Desain Database
![Desain Database](https://github.com/user-attachments/assets/0cc090bf-706b-4e57-a619-bdcecf035d92)

### Table Utama
![Table Utama](https://github.com/user-attachments/assets/0892f9d8-e5db-4efa-8f58-888f057e35d1)

### 1. Table Users
![Table Users](https://github.com/user-attachments/assets/edf3cdb0-0934-4325-887b-6abd728acaee)

![Struktur Tabel Users](https://github.com/user-attachments/assets/9455b0cb-6047-4073-b666-5c61d5768f2f)

### 2. Table Profil
![Table Profil](https://github.com/user-attachments/assets/eaabe06a-ea4c-48f3-8882-211b78f2183c)

![Struktur Tabel Profil](https://github.com/user-attachments/assets/6767c3ad-7070-4af0-8e79-5a30bd577902)

### 3. Table Category
![Table Category](https://github.com/user-attachments/assets/acac1adf-c3fc-44a3-8d12-92d0fe355a3b)

![Struktur Tabel Category](https://github.com/user-attachments/assets/6b59bc7a-ba10-4051-833d-83f273c42df2)

### 4. Table Product
![Table Product](https://github.com/user-attachments/assets/cf6bbc98-6610-4ad1-8c0b-9f4d447314cb)

![Struktur Tabel Product](https://github.com/user-attachments/assets/981ebe11-eadb-4a8c-98db-6949d9276077)

### 5. Table Cart
![Table Cart](https://github.com/user-attachments/assets/40797615-5ea4-4d0c-bc46-f652bb268919)

![Struktur Table Cart](https://github.com/user-attachments/assets/bb1d92de-7f6d-4ab0-9954-d426e37f9966)

### 6. Table Cart Item
![Table Cart Item](https://github.com/user-attachments/assets/b25e29fe-737c-4d20-aeee-780e071091a2)

![Struktur Table Cart Item](https://github.com/user-attachments/assets/c600261e-c389-404f-87c2-0e8dc1600af5)

### 7. Table Checkout
![Table Checkout](https://github.com/user-attachments/assets/8ceea5c8-e6b9-42b9-b9b7-cf1ed2195b9b)

![Struktur Tabel Checkout](https://github.com/user-attachments/assets/081e3ff4-ed67-4ecb-9a12-1ea4119f0372)

### 8. Table Order
![Table Order](https://github.com/user-attachments/assets/03c59c43-cc3d-4e53-9f3a-cdf717503aa5)

![Struktur Tabel Order](https://github.com/user-attachments/assets/b365fa14-9147-4f5f-aad5-0a50d5ef1d75)

### Table Contact
![Table Contact](https://github.com/user-attachments/assets/988d34b0-bf9d-4686-a72e-18c5b69b4c7d)

![Struktur Tabel Contact](https://github.com/user-attachments/assets/32aa86cb-9b0a-4817-9c28-8600dbc12220)

# POSTTEST 3
## CategoryAdmin:
### Form
![Screenshot 2024-10-02 000242](https://github.com/user-attachments/assets/b0efc7c8-c849-4750-a6ba-df58c30b00c1)

### Tabel
![Screenshot 2024-10-02 000110](https://github.com/user-attachments/assets/a531eedb-b5f5-4907-aca6-6e66814aec88)

![Screenshot 2024-10-02 010231](https://github.com/user-attachments/assets/aef0ab60-3e6b-471d-9fa5-5e6c5b2a3a3f)
- Save Model: Sebelum menyimpan kategori, fungsi ini memeriksa apakah kolom deskripsi kosong. Jika kosong, deskripsi diisi secara otomatis dengan teks "Deskripsi tidak tersedia". Ini memastikan bahwa setiap kategori memiliki deskripsi, meskipun tidak spesifik.

## ProductAdmin:
### Form
![Screenshot 2024-10-02 000225](https://github.com/user-attachments/assets/bb3bdbe2-3368-430e-831e-7f154615a0f3)

### Tabel
![Screenshot 2024-10-01 235626](https://github.com/user-attachments/assets/9867a980-7c70-4bd6-8c5b-418f0aec21b1)

![Screenshot 2024-10-02 010241](https://github.com/user-attachments/assets/2cb4836b-33dc-4e88-893e-ae8a82bb9ba2)
- Save Model: Sebelum menyimpan data produk, fungsi ini memeriksa apakah stok produk kurang dari 1. Jika ya, stok diatur menjadi 0. Ini mencegah pencatatan stok negatif, yang tidak logis dalam konteks pengelolaan produk.

## UsersAdmin:
### Form
![Screenshot 2024-10-02 000202](https://github.com/user-attachments/assets/6f8844cc-009a-46ce-a8e5-6bf6a660c2a9)

### Tabel
![Screenshot 2024-10-01 235557](https://github.com/user-attachments/assets/a065e984-a32c-4569-ab48-19f5c217d5b6)

![Screenshot 2024-10-02 010247](https://github.com/user-attachments/assets/01ef4f07-7571-4e2b-b363-682ee5a8d2f4)
- Save Model: Fungsi ini memastikan bahwa jika pengguna memiliki peran tertentu (misalnya, peran 1), nama pengguna akan diubah menjadi huruf kecil sebelum disimpan. Ini membantu menjaga konsistensi dalam format nama pengguna, memudahkan pencarian, dan menghindari kebingungan dalam penggunaan nama yang sensitif terhadap huruf besar-kecil.

## ProfilAdmin:
### Form
![Screenshot 2024-10-02 000212](https://github.com/user-attachments/assets/53ec403c-c907-48c8-8eb4-a3fe3e070613)

### Tabel
![Screenshot 2024-10-01 235613](https://github.com/user-attachments/assets/8033178a-82f6-4b08-98e0-ba44860bb980)

![Screenshot 2024-10-02 010253](https://github.com/user-attachments/assets/d5a43e77-bd1f-4858-9993-68f0a15182e2)
- Save Model: Sebelum menyimpan profil pengguna, fungsi ini memeriksa apakah nomor telepon diisi. Jika tidak, nomor telepon otomatis diisi dengan teks "Nomor telepon tidak tersedia". Ini memastikan bahwa setiap profil pengguna memiliki informasi yang konsisten, meskipun tidak lengkap.

## CartAdmin:
### Form
![Screenshot 2024-10-02 000308](https://github.com/user-attachments/assets/c5a18496-7481-4887-bc5d-8d154cfdcf2d)

### Tabel
![Screenshot 2024-10-02 000120](https://github.com/user-attachments/assets/ea4dc411-e4e8-48d8-8e69-ead6e3385fa9)


## CartItemAdmin:
### Form
![Screenshot 2024-10-02 000325](https://github.com/user-attachments/assets/8f54697e-25f7-487e-8a17-5b7c4f02bcb3)

### Tabel
![Screenshot 2024-10-02 000130](https://github.com/user-attachments/assets/08dc8880-db37-4488-97a1-8f7ff7baaf8e)

![Screenshot 2024-10-02 010321](https://github.com/user-attachments/assets/553c7bca-b798-4051-8678-f7d19dd4813c)
- Save Model: Fungsi ini memastikan bahwa jika jumlah item dalam keranjang kurang dari 1, jumlah tersebut otomatis diubah menjadi 1 sebelum disimpan. Ini mencegah pengaturan jumlah item menjadi nol, yang tidak logis dan dapat menyebabkan masalah saat memproses pesanan.

## OrderAdmin:
### Form
![Screenshot 2024-10-02 000234](https://github.com/user-attachments/assets/2f36c68e-1334-4fed-9b77-e1a08a5b3c78)

### Tabel
![Screenshot 2024-10-02 000043](https://github.com/user-attachments/assets/4516f498-b193-4302-aad4-39f8be51c61f)

![Screenshot 2024-10-02 010335](https://github.com/user-attachments/assets/dc5ee1e1-2e9e-402e-975d-b201246e1066)
- Save Model: Sebelum menyimpan data pesanan, fungsi ini memeriksa apakah total jumlah pesanan kurang dari 0. Jika ya, total diatur menjadi 0. Ini memastikan bahwa data pesanan tetap valid dan logis, mencegah kesalahan dalam perhitungan total harga.

