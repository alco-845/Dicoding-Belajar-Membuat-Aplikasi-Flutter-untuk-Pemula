class FoodRecipe {
  String name;
  String image;
  List<String> ingredients;
  List<String> steps;
  String likeStatus;

  FoodRecipe({
    required this.name,
    required this.image,
    required this.ingredients,
    required this.steps,
    required this.likeStatus,
  });
}

var foodRecipe = [
  FoodRecipe(
      name: 'Shiny brownies',
      image: 'images/shiny-brownies.jpg',
      ingredients: [
        '1 btr telur',
        '2 sdm munjung terigu',
        '20 g coklat bubuk',
        '3 sdm gula pasir',
        '1/2 sdt sp',
        '1 sdm minyak sayur',
        'Buttercream,keju,dcc'
      ],
      steps: [
        'Mixer telur gula sp hingga putih berjejak',
        'Masukkan terigu dan coklat bubuk yg sudah di ayak',
        'Mix sebentar saja,masukan minyak dan skm aduk pake spatula smp tercampur rata',
        'Oles loyang dg margarin ditabur terigu,(sy ga di lapisi kertas roti)',
        'Kukus 10menit,, setelah matang pindah ke kertas nasi,gulung selagi hangat,masukan kulkas sebentar',
        'Buka kembali oles buttercream,gulung kembali',
        'Topping dcc dan keju,,masukkan kulkas 5menit,, siap di potong',
        'Selamat mencoba,smga bermanfaat'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Bolu gulung ekonomis',
      image: 'images/bolu-gulung-ekonomis.jpg',
      ingredients: [
        '175 gr dark cooking chocolate (me:Lindt dark chocolate)',
        '60 gr mentega',
        '50 gr minyak sayur',
        '2 butir telur',
        '125 gr gula pasir butiran halus',
        '100 gr tepung terigu',
        '25 gr coklat bubuk'
      ],
      steps: [
        'Panaskan oven suhu 150 api bawah.',
        'Lelehkan dcc, mentega, minyak sayur dengan cara di tim. Kocok telur dan gula pasir menggunakan whisk hingga gula larut, kemudian masukkan lelehan coklat, aduk rata (usahakan coklat leleh masih hangat untuk membantu melarutkan gula)',
        'Masukkan tepung terigu dan coklat bubuk aduk lagi hingga rata, adonan sangat kental dan berat.',
        'Tuang adonan ke dalam cetakan ukuran 22x22cm yang di alasi kertas roti / baking paper tidak perlu dioles yah. Beri topping sesuai selera.',
        'Panggang di rak tengah sampai matang. Kalau saya kira2 20menit api bawah, setelah itu ganti api atas bawah 15menit.'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Strawberry Mini cake',
      image: 'images/strawberry-mini-cake.jpg',
      ingredients: [
        '2 butir telur',
        '25 ml minyak sayur/minyak jagung',
        '35 ml susu cair',
        '45 gr tepung terigu',
        '30 gr gula pasir',
        '3 buah strawberry',
        '20 gr Kental manis',
        '100 ml whipped cream',
        'Susu cair secukupnya',
        'Strawberry secukupnya'
      ],
      steps: [
        'Siapkan bahan,lalu pisahkan putih dan kuning telur (masukan putih telur kedalam kulkas). tambahkan gula pasir (5 gram) dalam kuning telur aduk rata, masukan susu cair dan minyak Sayur/minyak jagung Lalu ayak tepung terigu, Dan aduk rata.',
        'Meringue : Keluarkan putih telur dari kulkas, mixer hingga berbusa,kemudian masukan gula pasir dalam 3 tahap. Kocok hingga firm dan glossy.',
        'Masukan sedikit meringue ke dalam adonan kuning, aduk perlahan hingga menyatu. Lalu masukkan lagi kedalam wadah meringue, aduk balik perlahan hingga rata dan tidak bergerindil.',
        'Panaskan oven dg suhu 150 °C',
        'Masukan adonan dalam loyang uk 4 /6 inch Dan ketuk loyang perlahan untuk meratakan adonan dari gelembung.',
        'Panggang di suhu 150 °C ± 30 menit dan 140 °C ± 30 menit (sesuaikan dengan oven masing2). Setelah matang angkat dan telungkupkan diamkan hingga dingin kurang lebih 4 jam',
        'Strawberry glaze : Siapkan strawberry, haluskan, kocok whipping cream dan kental manis sampai konsistensi tidak terlalu cair dan tidak terlalu creamy,campur dg strawberry yg Sudah dihaluskan (jika terlalu kaku bisa tambah kan susu cair sedikit).',
        'Lepaskan kue dr loyang, Dan Ratakan roti dg Pisau jika bagian atas mengembang',
        'Lalu tuang strawberry glaze Dan berisikan topping strawberry'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Cloud Bread (Roti Awan)',
      image: 'images/cloud-bread-roti-awan.jpg',
      ingredients: [
        '150 gr putih telur (sekitar 4 telur besar)',
        '75 gr gula pasir',
        '1 sdt vanilla essence',
        '50 gr tepung maizena',
        'Pewarna makanan ungu secukupnya'
            'Pewarna kuning secukupnya'
            'Pewarna hijau secukupnya'
            'Meses coklat secukupnya'
      ],
      steps: [
        'Pisahkan kuning telur. Pakai putih telur dan satukan dengan gula pasir.',
        'Mixer putih telur & gula pasir dengan kecepatan tinggi hingga mengembang dan soft peak. Jika sudah soft peak, ubah kecepatan mixer menjadi rendah, tambahkan tepung maizena & vanilla essence. Aduk sebentar saja asal rata. Matikan mixer. Aduk balik perlahan menggunakan spatula.',
        'Bagi adonan menjadi tiga bagian. Beri pewarna makanan pada masing2 adonan. Tuangkan adonan kedalam cetakan (ramekin/paper cup). Karena sy ga ada paper cup jd nya pake ramekin 8cm. Sebagian ada yg saya beri taburan meses coklat, sebagian ori.',
        'Panaskan oven selama 15 menit dengan suhu 170°C api atas bawah. Lalu masukkan adonan & panggang lagi selama 30 menit. Setelah matang, angkat & sajikan. Konsumsi selagi hangat. Empuk & ringan pas dimakan'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Tongkol Cabe Ijo',
      image: 'images/tongkol-cabe-ijo.jpg',
      ingredients: [
        '10 siung bawang merah',
        '3 siung bawang putih',
        'Cabe ijo keriting (sesuai selera)',
        'Garam',
        'Gula',
        'Penyedap',
        'tongkol Ikan',
      ],
      steps: [
        'Siapkan ikan tongkol, cuci hingga bersih.',
        'Rebus ikan dengan campuran jahe dan garam untuk menghilangkan amis nya, lalu angkat dan tiriskan.',
        'Goreng ikan hingga kecokelatan',
        'Jika langsung pakai ikan tongkol cue, step 2 bisa langsung dilewatin ya',
        'Blender cabe, bawang merah, bawang putih alu masukkan minyak goreng. Blender hingga halus',
        'Tumis semua bahan, lalu masukkan garam, gula dan penyedap. Setelah itu masukkan ikan tongkol nya.',
        'Masak hingga matang. Selamat menikmati'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Sambel Goreng Ati Ayam',
      image: 'images/sambel-goreng-ati-ayam.jpg',
      ingredients: [
        '1 kg Kentang',
        '5 pasang Hati ayam',
        '1 santan kemasan',
        '8 siung bawang putih',
        '10 siung bawang merah',
        '4 kemiri',
        '1/3 ruang jahe (biar tdk amis)',
        '1 ruas kunyit',
        'sesuai selera Cabai merah',
        '1 lembar daun salam (tdk dihaluskan)',
        'Lengkuas secukupnya (digeprek)',
        'Garam',
        '1 sdt Gula',
        'Lada secukupnya'
      ],
      steps: [
        'Siapkan bumbu. Lalu haluskan. Boleh diulek/diblender.',
        'Kupas kentang dan potong sesuai selera. Setelah itu goreng kentang setengah matang.',
        'Bersihkan hati ayam, rebus. Lalu potong-potong sesuai selera.',
        'Sebelum menumis bumbu, habiskan air bumbu halus dengan api kecil. Setelah air habis, tambahkan minyak, lalu tumis hingga harum dan bumbu mengeluarkan minyak. Ditahap ini tambahkan gula, lada, penyedap rasa, dan garam.',
        'Setelah bumbu harum, masukkan hati ayam. Tumis sebentar saja. Lalu tambahkan air, kecap, dan santan. Aduk dan tunggu mendidih.',
        'Setelah mendidih, masukkan kentang yang telah digoreng.'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Pizza Roti Tawar',
      image: 'images/pizza-roti-tawar.jpg',
      ingredients: [
        '4 lembar roti tawar',
        'Sosis secukupnya',
        'Mix vegetable secukupnya',
        'Saos secukupnya',
        'Mayonais secukupnya',
        'Keju chedar secukupnya',
        'Keju mozarella secukupnya'
      ],
      steps: [
        'Rebus sebentar mix vegetable, tiriskan.',
        'Iris sosis',
        'Potong roti menjadi 2 seperti di foto, lalu susun seperti di foto.',
        'Oleskan mayonaise & saos pada roti.',
        'Susun sosis pada permukaan roti kemudian taburkan mix vegetablenya.',
        'Parutkan keju chedar dan mozarella diatasnya.',
        'Oven 5-10 menit saja hingga keju meleleh. Angkat. Sajikan selagi hangat.'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(name: 'Bomboloni', image: 'images/bomboloni.jpg', ingredients: [
    '325 gr tepung protein sedang',
    '75 gr tepung protein tinggi',
    '50 gr brown sugar/palm sugar',
    '3 gr garam',
    '50 gr mentega',
    '7 gr ragi',
    '150 ml susu cair',
    '2 butir telur',
    '1 sdt ekstrak vanila',
    '250 gr susu cair',
    '250 gr cream',
    '80 gr gula pasir',
    '3 butir kuning telur',
    '1 butir telur',
    '30 gr maizena',
    '1 sdt garam',
    '50 gr mentega tawar',
    '1 sdt ekstrak vanila',
    '100 gr Ovomaltine Crunchy Cream atau selai cokelat lainnya',
    'Palm sugar untuk taburan'
  ], steps: [
    'Campur tepung protein sedang, tepung protein tinggi, ragi, dan brown sugar, aduk rata',
    'Tambahkan susu dan telur, aduk menggunakan mixer atau uleni dengan tangan hingga membentuk adonan.'
        'Tambahkan mentega dan garam, uleni hingga kalis. Diamkan adonan selama 30 menit hingga mengembang',
    'Giling adonan setebal 1 cm lalu cetak dengan ring cutter atau bulatkan manual. Diamkan lagi selama 30 menit hingga mengembang.',
    'Buat filling custard : Didihkan susu, gula, garam, dan ekstrak vanila. Campurkan telur dan maizena, aduk rata lalu saring. Tuangkan sedikit susu yang mendidih ke adonan telur, aduk rata lalu tuangkan ke panci susu. Masak dengan api kecil sambil terus diaduk hingga mengental. Simpan di wadah lalu tutup permukaannya dengan plastic wrap.',
    'Setelah custard dingin, sisihkan sebagian dan campur dengan Ovomaltine Crunchy Cream.',
    'Panaskan minyak di api kecil, goreng donat hingga cokelat keemasan. Angkat dan tiriskan.',
    'Hangat² gulingkan donat ke palm sugar hingga rata.',
    'Lubangi bagian samping donat menggunakan sumpit, lalu semprotkan custard menggunakan piping bag. Donat Bomboloni siap disajikan.'
  ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(name: 'Tumis Kol', image: 'images/tumis-kol.jpg', ingredients: [
    '300 gr kol',
    '2 sdt minyak goreng',
    '2 siung bawang putih (geprek iris)',
    '1 buah cabe merah besar (buang biji)',
    '1 batang daun bawang',
    '1 batang daun seledri',
    '250 ml air',
    '1/2 sdt kaldu jamur',
    '1/4 sdt kaldu ayam',
    '1/2 sdt gula pasir',
    '1/4 sdt garam',
    '1/8 sdt lada bubuk'
  ], steps: [
    'Siapakan bahan, cuci bersih',
    'Panaskan minyak goreng, tumis bawang putih dan cabe sampai harum',
    'Tuang air, masak sampai mendidih, masukan kol dan irisan daun bawang, aduk rata, masak sampai kol layu, masukan semua bumbu penyedap, aduk rata',
    'Masukan irisan daun seledri, aduk rata, matikan kompor dan sajikan'
  ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Mac & cheese panggang',
      image: 'images/mac-cheese-panggang.jpg',
      ingredients: [
        '250 gr macaroni',
        '300 ml susu cair',
        '1/2 bawang bombay, iris²',
        '1/2 kaleng kornet sapi'
            'Keju ceddar parut secukupnya'
            'Mozarella parut utk topping secukupnya',
        '1 sosis iris tipis',
        'Sdkt merica bubuk',
        'Sdkt garam halus',
        'Sdkt kaldu jamur'
      ],
      steps: [
        'Rebus macaroni dg sdkt garam, stlh empuk tiriskan',
        'Siapkan margarin+minyak goreng, tumis bawang bombay, masukkan kornet dan sosis',
        'Kemudian tuang susu cair, bjsa disesuaikan dg selera mau creamy atau agak kering',
        'Tambahkan merica bubuk, garam halus dan kaldu, tes rasa'
            'Masukkan macaroni, aduk sampai meresap, saya tambahkan keju ceddar larut sesuai selera',
        'Matikan kompor, tuang pd wadah tahan panas',
        'Tabur dg keju ceddar parut, kemudian tabur lagi mozarella parut',
        'Panggang dg suhu 180 c selama kurleb 15 mnt'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Brownies Tahu',
      image: 'images/brownies-tahu.jpg',
      ingredients: [
        '100 gr tahu cina/tahu sutra (haluskan)',
        '75 gr gula pasir',
        '1 butir telur',
        '60 gr terigu (saya pakai segitiga biru)',
        '25 gr coklat bubuk',
        '80 gr DCC/dark cooking chocolate',
        '50 gr butter',
        '1/2 sdt baking powder',
        '1/4 sdt garam',
        '1/4 sdt vanili bubuk'
            'Slide Almond'
            'Remahan kacang mete'
      ],
      steps: [
        'Siapkan bahan. Panaskan oven terlebih dahulu suhu 180 °C selama 10 menit. Alasi loyang dengan baking Paper, saya pakai loyang ukuran 20×10 cm.',
        'Campur butter dengan DCC, tim hingga meleleh. Angkat biarkan dingin.',
        'Campur dan ayak tepung terigu, coklat bubuk, baking powder dan vanili bubuk. Sisihkan',
        'Di wadah lain kocok gula dan telur hingga larut dengan mixer speed sedang. Kalau saya pakai whisk.',
        'Lalu masukkan campuran terigu. Aduk rata dengan spatula/whisk. Kemudian masukkan tahu yg sudah dihaluskan. Aduk rata kembali.',
        'Lalu masukkan campuran DCC+butter yg sudah dingin. Tambahkan garam. Aduk rata. Tuang dalam loyang dan ratakan. Beri toping.',
        'Panggang dengan suhu 160°C selama 35 menit. Sesuaikan dengan oven masing-masing. Setelah matang, angkat dan dinginkan. Brownies Tahu siap dinikmati.'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Dimsum Ayam',
      image: 'images/dimsum-ayam.jpg',
      ingredients: [
        '250 gr paha ayam giling',
        '1 bh wortel parut',
        '5 sdm tepung tapioka',
        '1/2 sdt minyak wijen (bisa skip)',
        '1/2 dt garam',
        '1 sdt gula pasir',
        '2 sdt saos tiram',
        '1 sdm bawang putih bubuk',
        '1/2 sdt lada bubuk',
        '1 sdt kaldu jamur',
        '1 sdt kecap asin',
        '3 sdm esbatu',
        '1 btr putih telur',
        '15 lbr kulit dimsum'
      ],
      steps: [
        'Pertama siapkan niat dan jangan lupa baca basmallah, kemudian potong dadu ayam masukkan kedalam chopper/blender lalu tapioka garam gula lada saos tiram minyak wijen bawang putih bubuk kaldu jamur kecap asin putih telur dan esbatu giling sampai tercampur rata',
        'Kemudian pindahkan ke wadah masukkan parutan wortel aduk rata, ambil kulit dimsum lalu diisi adonan bentuk sesuai selera bisa kasih toping parutan wortel juga',
        'Kemudian kukus selama 15-20menit angkat siap disajikan dengan saos'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(name: 'Sup Merah', image: 'images/sup-merah.jpg', ingredients: [
    '300 ml air',
    '3 buah wortel ukuran besar, potong kotak²',
    '300 gr ayam fillet dada/paha, potong kotak²',
    '3 buah sosis ukuran besar, iris bulat',
    '200 gr kacang polong (kalengan/ frozen)',
    '5 siung bawang putih',
    '5 siung bawang merah',
    '1/2 buah bawang bombai ukuran sedang',
    '1 ruas jahe',
    '3 buah tomat buah yang matang merah, blender halus',
    '5 sdm saus tomat',
    '1 sdt pala bubuk',
    '1 sdt merica bubuk',
    'Garam',
    'Gula',
    'Kaldu bubuk',
    'Croutons/ garlic bread'
  ], steps: [
    'Didihkan air.'
        'Di pan terpisah, tumis bumbu halus hingga matang dan harum. Setelah matang, tambahkan pala dan lada, masukkan wortel dan daging ayam lalu tumis bersama bumbu hingga ayam berubah warna. (Kok wortelnya ditumis juga? Karena saya gak suka aroma wortel mentah yang ketemu sama air kuah 🤭 kalau ditumis seperti ini aroma mentahnya akan hilang. Tapi jika suka wortelnya langsung dicemplung ke kuah juga tidak masalah ya buun...)',
    'Setelah ayam berubah warna, tuangkan pasta tomat, masak hingga air tomat menyusut. Lalu masukkan saus tomat dan masak kembali hingga harum (pasta tomatnya mulai mengering). Matikan api.',
    'Tuangkan tumisan bumbu dkk ke dalam air yang sudah mendidih. Aduk rata hingga kembali mendidih. Jangan lupa beri garam, gula dan kaldu bubuk sambil dicicipin sampai rasanya pas. Matikan api jika sudah mendidih.',
    'Penyajian: tuangkan sup beserta isinya ke mangkuk saji, sendokkan kacang polong dan taburi dengan croutons/ garlic bread. Yuuuuummy, alhamdulillah 😋',
    'Croutons: Lelehkan margarin secukupkan yang dicampur dengan 1 siung bawang putih parut.',
    'Siapkan roti tawar, olesi salah satu sisi saja dengan margarin leleh. Lalu potong roti kecil², tata di loyang dan panggang sampai kering kecoklatan.',
    'Note: Kacang polong tidak perlu dimasak bersama kuah sup karena teksturnya sudah empuk. Jika menggunakan kalengan, cukup buang airnya, bilas dengan air matang/air mineral dan tiriskan. Jika frozen, cukup siram/ rendam sebentar dalam air mendidih lalu tiriskan.'
  ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Custard Pan Bun',
      image: 'images/custard-pan-bun.jpg',
      ingredients: [
        '300 gr tepung terigu serbaguna'
            '1 sdt munjung ragi instan',
        '45 gr gula pasir',
        '150 gr air hangat suam kuku',
        '40 gr susu bubuk',
        '1 butir telur, kocok lepas',
        '2 sdm butter/margarin',
        '1/2 sdt garam halus',
        '2 sdm butter',
        '1/4 sdt vanila bubuk',
        '40 gr gula pasir',
        '30 gr maizena',
        '2 kuning telur',
        '300 ml susu cair'
      ],
      steps: [
        'Buat DOUGHnya dulu. Aduk rata ragi, air hangat dan 1 sdt gula pasir (ambil dari yg 45gr). Biarkan hingga berbuih tanda ragi aktif.',
        'Dalam wadah aduk rata terigu, susu bubuk, sisa gula dan garam. Masukan telur dan air ragi, aduk rata. Masukan butter/margarin, aduk rata.',
        'Bulatkan dough, lalu tutup dengan plastik wrap/serbet bersih, diamkan hingga mengembang 2x lipat.',
        'Sambil menunggu buat custardnya. Aduk rata semua bahan custard kecuali butter. Panaskan hingga meletup2 dgn api kecil sambil terus diaduk. Angkat dari api, masukan butter, aduk rata. Dinginkan.',
        'Setelah dough mengembang bagi dough jadi 10 Bun. Isi dengan bahan custard. Bulatkan lagi. (bentuk sesuai selera). Bentuk oval saya kurang rapi, kapan2 buat lagi dengan bentuk bulat aja',
        'Kemudian panaskan teflon, setelah panas kecilkan apinya, SANGAT KECIL aja biar ngga cepet gosong dan matang merata. Lalu tata adonan di teflon, panggang masing2 sisi hingga kecoklatan. Tutup wajan. Saya tiap sisi kira2 5 menit.',
        'Sajikan. Jangan menilai buku dari sampulnya aja ya hehe.. walaupun tidak rapi dan dark brown tapi ini enak'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Patin Penyet Aroma Kencur',
      image: 'images/patin-penyet-aroma-kencur.jpg',
      ingredients: [
        '1 kg ikan patin',
        'Minyak untuk menggoreng secukupnya',
        '7 buah cabai merah',
        '5 buah cabai rawit',
        '5 siung bawang merah',
        '2 siung bawang putih',
        '1/4 buah tomat, buang biji (bisa jg pakai asem)',
        '1 ruas kencur',
        'Air secukupnya',
        'Garam, gulpas, dan penyedap rasa secukupnya'
      ],
      steps: [
        'Goreng ikan hingga kecoklatan, sisihkan.',
        'Goreng cabai merah, cabai rawit, bawang merah, bawang putih, dan tomat hingga cukup layu saja. Jangan lupa dipotong2 supaya tidak meletus.',
        'Angkat dan langsung letakkan di atas cobek. Beri kencur, garam, gula pasir, dan penyedap rasa lalu uleg hingga halus.',
        'Beri sedikit air, ratakan. Kemudian penyet ikan dan lumuri dengan bumbu. Ikan patin penyet siap untuk dinikmati'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Pancake Vla',
      image: 'images/pancake-vla.jpg',
      ingredients: [
        '500 ml susi UHT putih',
        '200 gr tepung terigu (segitiga biru)',
        '2 btr kuning telur',
        '1.5 sdm mentega, cairkan',
        '1 sdm Gula',
        '2 sdm cocoa powder',
        'Mentega untuk lapisan teflon',
        '600 ml susu UHT putih',
        '50 gr tepung maizena',
        '75 gr Gula',
        '2 btr kuning telur',
        '1/2 sdm rhum',
        '1/2 sdt vanila essence',
        '20 gr butter, lelehkan'
      ],
      steps: [
        'Bahan kulit : blender semua bahan jadi 1 hingga halus, ambil pake sendok sayur masak tipis2 di teflon. Agar tidak lengket setiap lapisan selesai, teflonnya dioles mentega sedikit.',
        'Bahan Vla : dalam wadah, aduk kuning telur dan susu sedikit, setelah tercampur, masukkan tepung maizena dan gula. Aduk rata dengan hand whisker.',
        'Pindahkan adonan ke panci, panaskan, aduk terus, stengah jalan beri rhum, vla essens dan butter. Aduk rata hingga mengental. Boleh dipakai isian setelah uap panas hilang.'
            'Cetak di kulit pancake. Dinginkan.'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Tuna Aglio e Olio',
      image: 'images/tuna-aglio-e-olio.jpg',
      ingredients: [
        'Makanan kaleng Tuna',
        'Spaghetti',
        'Cabe (jika tidak kuat pedas bisa pake cabe besar)',
        'Red pepper flakes (optional)',
        'Bawang putih',
        'Garam',
        'Gula',
        'Keju parmesan (optional)'
      ],
      steps: [
        'Didihkan air, taburi garam pada air rebusan, jika sudah mendidih masukkan spaghetti, boil selama kurang lebih 5 menit',
        'Sambil menunggu spaghetti, tumis bawang putih dengan olive oil, hingga wangi',
        'Tambahkan red pepper flakes/Cabe, lalu masukkan tuna, aduk rata',
        'Tambahkan olive oil lagi ke tumisan, kemudian masukkan pasta yang sudah diboil, jangan lupa tambahkan sedikit pasta water',
        'Aduk rata, tambahkan parsley, koreksi rasa, biarkan pasta teraduk rata hingga 3-4 menit',
        'Selesai, silakan disajikan di Piring, taburi keju parmesan, parsley dan red pepper flakes (jika ada) Selamat mencoba'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Singkong Thailand keju',
      image: 'images/singkong-thailand-keju.jpg',
      ingredients: [
        '1 kg singkong',
        '2 sdm gula pasir',
        '1 sdt garam',
        'Air secukupnya',
        '2 buah santan sasa',
        '10 sdt gula pasir',
        '1 Sdt garam',
        '2 lmbr daun pandan',
        '2 sdm maizena dilarutkan dengan sedikit air',
        'Secukupnya keju parut(keju meg)'
      ],
      steps: [
        'Rebus singkong,gula,garam dan daun pandan sampai empuk lalu tiriskan',
        'Serut keju secukupnya',
        'Masukan bahan vla kecuali larutan maizena masak sampai air mendidih sambil diaduk,. Terakhir masukan larutan maizena masak smpai meletup letup',
        'dan sajikan singkong dengan siraman vla dan taburan keju'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Hurricane swiss roll cake',
      image: 'images/hurricane-swiss-roll-cake.jpg',
      ingredients: [
        '10 kuning telur',
        '90 gram susu cair',
        '90 gram minyak',
        '1/2 sdt vanila bubuk',
        '1/2 sdt garam',
        '180 gram tepung terigu pro sedang',
        '10 putih telur',
        '180 gram gula pasir',
        '1 sdm air jeruk nipis',
        'Pasta taro',
        'Selai nanas siap pakai'
      ],
      steps: [
        'Aduk rata semua bahan A kecuali tepung,lalu masukkan tepung,aduk hingga rata,,adonan sangat kental ya....',
        'Mikser putih telur hingga berbusa,masukkan gula secara bertahap,tambahkan air jeruk,mixer speed tinggi hingga soft peak.matikan.masukkan adonan putih telur keadonan kuning telur,tuang secara bertahap,aduk balik hingga rata.jangan sampai ada minyak yg mengendap ya..',
        'Tuang ke loyang yg sudah diolesi margarin dan dialasi kertas baking.ratakan lalu hentakkan.sisakan 1/3 adonan lalu beri pasta taro.aduk rata.masukkan piping bag,spuitkan diatas adonan putih hingga rata.buat motif topan dengan sumpit.mulai dari kiri atas,tarik garis lurus kesamping,geser kebawah sedikit,tarik lagi kesamping,begitu seterusnya sampai kebawah.ikuti pola ya....selanjutnya ikuti pola B,mulai dr kiri bawah,tarik keatas,geser sedikit,tarik kebawah,geser,tarik keatas,begitu seterusnya.',
        'Oven hingga matang.oven harus sudah nyala 15 menit sebelumnya....setelah matang,angkat dari loyang,taruh dilap bersih untuk menggulung.bagian berwarna dibawah ya,oles selai,panas2 langsung gulung.saya bikin 3 kali resep.yang satu belum kering benar,jadi terkelupas kulitnya.',
        'Potong2,setelah dingin bungkus atau hidangkan'
      ],
    likeStatus: 'not liked'
  ),
  FoodRecipe(
      name: 'Strawberry Oreo chiffon cake',
      image: 'images/strawberry-mini-cake.jpg',
      ingredients: [
        '4 kuning telur',
        '1/4 sdt garam',
        '60 ml minyak sayur',
        '50 ml susu cair strawberry',
        '100 gram terigu',
        '1 sdm gula kastor / biasa',
        '1/2 sdt essen strawberry',
        '50 gram strawberry di blender jd 4 sdm',
        '4 putih telur',
        '1 sdt air jeruk nipis',
        '100 gram gula pasir',
        '5 keping oreo hancurkan (tanpa cream)'
      ],
      steps: [
        'Aduk adonan kuning telur dan gula 1 sdm dengan whisk..tuang minyak, susu, garam serta essen strawberry.Aduk sebentar kemudian masukan terigu, aduk sampai adonan licin atau tidak bergerindil.jangan overmix.',
        'Di wadah terpisah, mixer putih telur sampai berbusa, tambahkan air jeruk nipis. Dan gula bertahap.mixer sampai kaku/ stiff peak',
        'Campurkan adonan putih telur ke kuning telur 3 tahap. Aduk balik sampai rata. Kemudian masukan oreo, aduk lg sampai rata.',
        'Tuang ke dalam loyang..loyang tidak perlu di oles. Saya pakai loyang 20 cm tinggi 10 cm. Oven suhu 170 selama 30 - 40 menit. Atau tergantung oven masing2. Saya pakai api bawah saja..',
        'Setelah matang segera angkat keluar dan telungkupkan di atas leher botol selama 1 jam atau sampai dingin.',
        'Setelah dingin sisir pinggirnya dengan pisau.angkat keluar..sisir bagian bawahnya. Potong2 sajikan. Lembut banget.',
        'Jika ada strawberry segar lebih bagus.bisa pakai 50 gram di blender. Kebetulan saya habis jd pakai bahan yg ada saja.'
      ],
      likeStatus: 'not liked'
  )
];
