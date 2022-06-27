class ModelResep {
  String? nama;
  String? gambar;
  String? informasiKalori;
  List? informasiUmum;
  List? rincianNutrisi;
  List? bahanBahan;
  List? peralatan;
  List? masak;
  List? gambarMasak;

  ModelResep({
    this.nama,
    this.gambar,
    this.informasiKalori,
    this.informasiUmum,
    this.rincianNutrisi,
    this.bahanBahan,
    this.peralatan,
    this.masak,
    this.gambarMasak,
  });
}

class Resep {
  static List<ModelResep> getResep() {
    return [
      ModelResep(
          nama: 'Ommelet telur',
          gambar: 'omelet.jpg',
          informasiKalori: '121 Kalori Persajian',
          informasiUmum: [
            'Porsi 1 Orang',
            'Waktu 20 menit',
            'Tingkat kesulitan Rendah',
          ],
          rincianNutrisi: [
            'Kalori 121, 9kkal',
            'Karbohidrat 3,1 g',
            'Protein 10,6 g',
            'Lemak 7,2 g',
          ],
          bahanBahan: [
            '2 butir telur bagian putih',
            '1/2 butir telur ayam bagian kuning',
            '1/2 sdt minyak zaitun',
            '1 sdt bawang bombai',
            '1/2 buah paprika merah',
            '1 sdt seledri',
            '1/2 sdt keju pemesan',
            '1/2 sdt cabai bubuk',
            '1/4 sdt garam',
            '1/4 sdt merica halus',
          ],
          peralatan: [
            'Pisau',
            'Talenan',
            'Wajan Tumis',
            'Spatula',
            'Kuas',
            'Kuas',
            'Mangkuk Stainless (Uk.sedang)',
          ],
          masak: [
            'Iris Bawang Bombai, Paprika Merah dan Seledri',
            'Panaskan wajan dan Olesi dengan minyak. Tumis Bawang bombai hingga wangi, sisihkan.',
            'Dalam mangkuk kocok Putih dan Kuning Telur,Tambahkan Tumisan Bawang Bombai, Paprika, Seledri, Keju Permesan, Cabai Bubuk, Garam dan Merica',
            'Panaskan Wajan dan Olesi dengan Minyak, Tuang campuran telur, masak dengan api sedang hingga Matang'
          ],
          gambarMasak: [
            'omelet_1.png',
            'omelet_2.png',
            'omelet_3.png',
            'omelet_4.png',
          ]),
      ModelResep(
        nama: 'Kacang Ijo',
        gambar: 'kacang ijo.jpg',
        informasiKalori: '121 Kalori Persajian',
        informasiUmum: [
          'Porsi 1 Orang',
          'Waktu 20 menit',
          'Tingkat kesulitan Rendah',
        ],
        rincianNutrisi: [
          'Kalori 121, 9kkal',
          'Karbohidrat 3,1 g',
          'Protein 10,6 g',
          'Lemak 7,2 g',
        ],
        bahanBahan: [
          '2 butir telur bagian putih',
          '1/2 butir telur ayam bagian kuning',
          '1/2 sdt minyak zaitun',
          '1 sdt bawang bombai',
          '1/2 buah paprika merah',
          '1 sdt seledri',
          '1/2 sdt keju pemesan',
          '1/2 sdt cabai bubuk',
          '1/4 sdt garam',
          '1/4 sdt merica halus',
        ],
        peralatan: [
          'Pisau',
          'Talenan',
          'Wajan Tumis',
          'Spatula',
          'Kuas',
          'Kuas',
          'Mangkuk Stainless (Uk.sedang)',
        ],
      )
    ];
  }
}
