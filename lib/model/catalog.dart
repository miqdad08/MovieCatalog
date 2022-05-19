class Catalog {
  String author;
  String description;
  String title;
  String imageUrls;
  String director;
  String rating;

  Catalog(
      {required this.author,
        required this.description,
        required this.title,
        required this.imageUrls,
        required this.director,
        required this.rating});
}

var catalogList = [
  Catalog(
    author: "Awi Suryadi",
    description: "Enam mahasiswa yang melaksanakan KKN di sebuah desa terpencil, Nur, Widya, Ayu, Bima, Anton, dan Wahyu tidak pernah menyangka kalau desa yang mereka pilih ternyata bukanlah desa biasa. Pak Prabu, sang kepala desa, memperingatkan mereka untuk tidak melewati batas gapura terlarang. Satu per satu dari mereka mulai merasakan keanehan desa tersebut. Bima pun mulai berubah sikap dan program KKN mereka berantakan. Tampaknya, penghuni gaib desa tersebut tidak menyukai mereka. Nur akhirnya menemukan fakta bahwa salah satu dari mereka melanggar aturan yang paling fatal di desa tersebut. Teror sosok penari misterius semakin menyeramkan. Mereka meminta bantuan Mbah Buyut, yang merupakan dukun setempat. Sayangnya, mereka terancam tidak bisa pulang dengan selamat dari desa yang dikenal dengan sebutan desa penari tersebut.",
    title: "KKN di Desa Penari",
    imageUrls: "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/05/08/2417161098.jpg",
    director:"https://cdn0-production-images-kly.akamaized.net/bQZdfmFP1RgQT0R_mgCv9FDs06A=/320x180/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1071598/original/2c8271f7d8b3362c1717c97e663c9c55-071361000_1448890461-B3.jpg",
    rating: "6,3/10"
  ),
  Catalog(
    author: "Sam Raimi",
    description: "Hidup Stephen Strange (Benedict Cumberbatch), seorang dokter bedah pintar yang sombong, mendadak berubah drastis. Sebuah kecelakaan membuat kemampuan tangannya menjadi sangat terbatas. Bertekad untuk menyembuhkan kondisinya, ia pun berpetualang mencari obat untuk memulihkan lengannya.",
    title: "Doctor Strange in the multiverse of madness",
    imageUrls:
    "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/film-doctor-strange-in-the-multiverse-of-madness-2022.jpg",
    director: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSUg655G_41Z0M0969H1U-brXK2TODveHHLh6hVdEsRhMVoHvsk",
    rating: "7.4/10"
  ),
  Catalog(
    author: "Jon Watts",
    description: "Film Spider-Man MCU ketiga telah dibicarakan pada tahun 2017 saat produksi film Homecoming. Pada Agustus 2019, negosiasi antara Sony dan Marvel Studios mengubah kesepakatan mereka—di mana mereka memproduksi film Spider-Man bersama-sama—berakhir dengan Marvel Studios meninggalkan proyek tersebut. Namun, reaksi negatif dari penggemar menghasilkan kesepakatan baru antara kedua perusahaan sebulan kemudian. Watts, McKenna, Sommers, dan Holland diumumkan kembali pada waktu yang sama. Syuting dimulai pada Oktober 2020 di Kota New York, sebelum pindah ke Atlanta pada akhir bulan. Selama pembuatan film, Foxx dan Molina diumumkan tampil di film, mengulangi karakter dari film Spider-Man sebelumnya. Judulnya terungkap pada Februari 2021. Syuting juga dilakukan di Los Angeles dan Islandia, dan selesai pada pertengahan Maret 2021.",
    title: "Spider-Man: No Way Home",
    imageUrls: "https://berauterkini.co.id/wp-content/uploads/2021/12/maxresdefault.jpg",
    director: "https://www.filmibeat.com/img/popcorn/profile_photos/jon-watts-20190515155203-38562.jpg",
    rating: "8,4/10"
  ),

  Catalog(
    author: "Rian Johnson",
    description: "Knives Out adalah film drama komedi kriminal Amerika Serikat tahun 2019 yang disutradarai oleh Rian Johnson dan diproduseri oleh Ram Bergman dan Rian Johnson. Naskah film ini ditulis oleh Rian Johnson. Film ini dibintangi oleh Daniel Craig, Chris Evans, Ana de Armas, Jamie Lee Curtis, Michael Shannon, Don Johnson, Toni Collette, Lakeith Stanfield, Katherine Langford, Jaeden Martell dan Christopher Plummer.",
    title: "Knives Out",
    imageUrls: "https://static.republika.co.id/uploads/images/inpicture_slide/099086200-1617382436-5dde710f1ec78-knives-outjpg.jpg",
    director:"http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcR7kasoCMRseJOySB4PSMCFRRUc2_CAoBz8HkM9byg80IW0vDU460QD7FlIKKhh",
    rating: "7,9/10"
  ),

  Catalog(
    author: "James Wan",
    description: "Aquaman adalah film pahlawan super Amerika tahun 2018 yang didasarkan pada karakter DC Comics, Aquaman, dan didistribusikan oleh Warner Bros. Pictures. Ini adalah angsuran keenam di DC Extended Universe (DCEU). Film ini disutradarai oleh James Wan, dengan skenario oleh David Leslie Johnson-McGoldrick dan Will Beall, dan didasarkan pada sebuah cerita dari Geoff Johns, Wan dan Beall. Ini dibintangi Jason Momoa sebagai karakter judul, dengan Amber Heard, Willem Dafoe, Patrick Wilson, Dolph Lundgren, Yahya Abdul-Mateen II, dan Nicole Kidman dalam peran pendukung. Ini adalah film teater laga hidup ketiga yang menampilkan Aquaman, mengikuti Batman v Superman: Dawn of Justice (2016) dan Justice League (2017), dan film pertama yang berpusat di sekitar karakter. Di Aquaman, karakter tituler mengetahui bahwa ia adalah pewaris kerajaan bawah laut Atlantis dan harus melangkah maju untuk memimpin rakyatnya melawan saudara tirinya, Orm, yang berupaya menyatukan tujuh kerajaan bawah laut melawan dunia permukaan.",
    title: "Aquaman 2018",
    imageUrls: "https://i.pinimg.com/originals/81/ce/73/81ce739efe9446dbede2f14601b49d1f.jpg",
    director: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS6lu5P-vAfEBF6eawWNSzVViyxrRPXDa9DytkpiQH5JMu6LeTT",
    rating: "6,8/10"
  ),

];
