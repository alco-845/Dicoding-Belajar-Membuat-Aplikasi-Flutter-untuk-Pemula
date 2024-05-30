class PlantCatalogue {
  String name;
  String image;
  String description;
  List<String> treatmentSuggestion;
  String likeStatus;
  bool isFavorite;

  PlantCatalogue({
    required this.name,
    required this.image,
    required this.description,
    required this.treatmentSuggestion,
    required this.likeStatus,
    required this.isFavorite,
  });
}

var plantCatalogue = [
  PlantCatalogue(
      name: 'Mawar',
      image: 'images/mawar.jpg',
      description:
          'Mawar atau ros adalah tumbuhan perdu, pohonnya berduri, bunganya berbau wangi dan berwarna indah, terdiri atas daun bunga yang bersusun; meliputi ratusan jenis, tumbuh tegak atau memanjat, batangnya berduri, bunganya beraneka warna, seperti merah, putih, merah jambu, merah tua, dan berbau harum.',
      treatmentSuggestion: [
        'Pencahayaan Yang Tepat',
        'Perhatikan Intensitas Penyiraman',
        'Berikan Nutrisi Tambahan',
        'Potong Batang atau daun Yang Tidak Sehat',
        'Pemangkasan Rutin',
        'Perhatikan Hama dan Gulma'
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Anggrek',
      image: 'images/anggrek.jpg',
      description:
          'Suku anggrek-anggrekan atau Orchidaceae merupakan satu suku tumbuhan berbunga dengan anggota jenis terbanyak. Jenis-jenisnya tersebar luas dari daerah tropika basah hingga wilayah sirkumpolar, meskipun sebagian besar anggotanya ditemukan di daerah tropika.',
      treatmentSuggestion: [
        'Perhatikan Kondisi Sinar Matahari',
        'Jaga Suhu dan Kelembapan Udara',
        'Letakkan di Ruangan dengan Sirkulasi Udara yang Baik',
        'Perhatikan Cara Menyiram',
        'Lakukan Pemupukan dengan Benar',
        'Cegah Hama Berbahaya'
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Melati',
      image: 'images/melati.jpg',
      description:
          'Melati merupakan tanaman bunga hias berupa perdu berbatang tegak yang hidup menahun. Melati merupakan genus dari semak dan tanaman merambat dalam keluarga zaitun.',
      treatmentSuggestion: [
        'Lakukan Pruning',
        'Lakukan Stress Air',
        'Beri Pupuk NPK',
        'Lakukan Penyiraman',
        'Perhatikan Hama'
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Matahari',
      image: 'images/matahari.jpg',
      description:
          'Bunga matahari adalah tumbuhan semusim dari suku kenikir-kenikiran yang populer, baik sebagai tanaman hias maupun tanaman penghasil minyak. Bunga tumbuhan ini sangat khas: besar, biasanya berwarna kuning terang, dengan kepala bunga yang besar.',
      treatmentSuggestion: [
        'Perlunya Sinar Matahari yang Cukup',
        'Media Tanam yang Sesuai',
        'Penyiraman yang Sesuai dengan Kebutuhan',
        'Tidak Butuh Pupuk yang Banyak',
        'Mengatasi Hama atau Serangga',
        'Waspadai Daun Bunga Matahari yang menguning',
        'Jarak Penanaman Bunga yang Perlu untuk Diperhatikan',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Kaktus',
      image: 'images/kaktus.jpeg',
      description:
          'Kaktus dapat tumbuh pada waktu yang lama tanpa air. Kaktus biasa ditemukan di daerah-daerah yang kering. Kata jamak untuk kaktus adalah kakti. Kaktus memiliki akar yang panjang untuk mencari air dan memperlebar penyerapan air dalam tanah. Air yang diserap kaktus disimpan dalam ruang di batangnya.',
      treatmentSuggestion: [
        'Berikan Pencahayaan yang Cukup',
        'Rutin Menyiram Kaktus dengan Benar',
        'Pilih Media Tanam yang Tepat',
        'Pastikan Pot Memiliki Lubang',
        'Memberi Pupuk Secara Berkala',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Telang',
      image: 'images/telang.jpg',
      description:
          'Telang ternate adalah spesies tumbuhan endemik dan asli pulau Ternate yang termasuk dalam famili Fabaceae. Telang ternate adalah spesies terpopuler dari seluruh spesies dalam genus Clitoria.',
      treatmentSuggestion: [
        'Perhatikan jarak tanam',
        'Penyiraman perlu dilakukan secara teratur',
        'Temperatur harus tepat',
        'Pemupukan secara berkala',
        'Pemangkasan batang',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Bonsai',
      image: 'images/bonsai.jpeg',
      description:
          'Bonsai adalah tanaman atau pohon yang dikerdilkan di dalam pot dangkal dengan tujuan membuat miniatur dari bentuk asli pohon besar yang sudah tua di alam bebas. Penanaman dilakukan di pot dangkal yang disebut bon.',
      treatmentSuggestion: [
        'Ketahui waktu yang tepat untuk menyiramnya',
        'Sama dengan tanaman lain, bonsai membutuhkan pupuk',
        'Perhatikan suhu terbaik bagi tanaman',
        'Media tanam yang baik bagi bonsai',
        'Ketahui waktu memangkas ranting pohon bonsai',
        'Pot yang dangkal perlu lekas diganti dengan pot baru',
        'Mengendalikan dan membasmi hama',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Lidah Mertua',
      image: 'images/lidah_mertua.jpeg',
      description:
          'Lidah mertua atau Sansevieria adalah genus tanaman berbunga yang dikenal secara historis , asli Afrika, terutama Madagaskar, dan Asia selatan, sekarang termasuk dalam genus Dracaena berdasarkan studi filogenetik molekuler .Nama umum untuk 70 atau lebih spesies yang sebelumnya ditempatkan dalam genus termasuk lidah mertua, lidah setan dan lidah jin',
      treatmentSuggestion: [
        'Pastikan Tanaman Mendapat Cahaya Matahari',
        'Siram Lidah Mertua Secukupnya',
        'Jangan Letakkan di Ruangan dengan Suhu yang Terlalu Rendah',
        'Gunakan Media Tanam yang Cepat Meresap Air',
        'Gunakan Kompos Cacing atau Pupuk Slow Release',
        'Gunakan Semprotan Anti Hama',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Pohon Mangga',
      image: 'images/pohon_mangga.jpeg',
      description:
          'Mangga atau mempelam adalah nama sejenis buah, demikian pula nama pohonnya. Mangga termasuk ke dalam genus Mangifera, yang terdiri dari 35-40 anggota dari famili Anacardiaceae. Nama "mangga" berasal dari bahasa Tamil, mankay, yang berarti man "pohon mangga" + kay "buah".',
      treatmentSuggestion: [
        'Memberikan pupuk kompos',
        'Menabur Dolomit',
        'Memangkas secara Rutin',
        'Perhatikan Sinar Matahari dan Suhu',
        'Air dan Kelembapan',
        'Tingkat Keasaman Tanah',
        'Propagasi',
        'Memerhatikan Cara Memotong',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
  PlantCatalogue(
      name: 'Pohon Pepaya',
      image: 'images/pohon_pepaya.jpg',
      description:
          'Pepaya atau betik adalah tumbuhan yang diperkirakan berasal dari Meksiko bagian selatan dan bagian utara dari Amerika Selatan. Pepaya kini telah menyebar luas dan banyak ditanam di seluruh daerah tropis untuk diambil buahnya. C. papaya adalah satu-satunya jenis dalam genus Carica.',
      treatmentSuggestion: [
        'Penyulaman',
        'Penyiraman',
        'Penyiangan',
        'Pemupukan susulan',
        'Pembasmian hama',
      ],
      likeStatus: 'not liked',
      isFavorite: false),
];
