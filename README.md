<h1>Aplikasi Input Data</h1>
Nama     : Muhammad Zaim Pahlevi
NIM      : H1D023073
Shift    : E
<h1>Screenshot Aplikasi</h1>
Form Kosong
<img src="skrinsut/form_kosong.png" height=600>
Form
<img src="skrinsut/form.png" height=600>
Data MHS
<img src="skrinsut/data.png" height=600>

<h1>Penjelasan Kode</h1>


## Proses Passing Data

Berikut adalah penjelasan alur kerja bagaimana data dikirim dari formulir input ke halaman detail:

1.  **Input Pengguna pada `ProdukForm`**:
    -   Pengguna memasukkan data (Nama, NIM, Tahun Lahir) pada halaman `ProdukForm` (`lib/ui/produk_form.dart`).
    -   Setiap bidang teks dikontrol oleh `TextEditingController` masing-masing (`_namaController`, `_nimController`, `_tahunController`).

2.  **Aksi Tombol "Simpan"**:
    -   Ketika pengguna menekan tombol "Simpan", *event* `onPressed` akan terpicu.
    -   Di dalam *event* ini, data dari setiap `TextEditingController` diambil menggunakan properti `.text`.
    -   Data tahun lahir yang berupa `String` diubah menjadi `int` menggunakan `int.parse()`.

3.  **Navigasi dan Pengiriman Data**:
    -   Aplikasi menggunakan `Navigator.of(context).push` untuk berpindah ke halaman baru.
    -   Halaman baru yang dituju adalah `ProdukDetail` (`lib/ui/produk_detail.dart`).
    -   Data yang telah diambil (nama, nim, tahun) dikirimkan ke `ProdukDetail` melalui argumen pada konstruktornya.
        ```dart
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProdukDetail(
            nama: nama,
            nim: nim,
            tahunLahir: tahun,
          ),
        ));
        ```

4.  **Penerimaan dan Tampilan Data pada `ProdukDetail`**:
    -   *Class* `ProdukDetail` adalah sebuah `StatelessWidget` yang dirancang untuk menerima data melalui konstruktornya.
    -   Data yang diterima (misalnya `nama`, `nim`, `tahunLahir`) disimpan dalam properti `final`.
    -   Metode `build` dari `ProdukDetail` kemudian menggunakan data ini untuk menampilkannya kepada pengguna, misalnya dalam sebuah `Text` widget.
        ```dart
        Text("Halo, Nama Saya $nama, NIM Saya $nim, Saya Lahir Tahun $tahunLahir"),
        ```
