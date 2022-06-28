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
  static List<ModelResep> getResepSarapan() {
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
          informasiKalori: '332 kkal',
          informasiUmum: [
            'porsi 1 orang',
            'Waktu 20 menit',
            'Tingkat kesulitan Rendah',
          ],
          rincianNutrisi: [
            '212 kalori',
            '14 gram protein',
            '15 gram serat',
            '1 gram lemak',
            '4 gram gula',
            '321 mikrogram folat (100%)',
            '97 miligram magnesium (36%)',
            '0,33 miligram vitamin b1 tiamin (36%)',
            '0,6 miligram mangan (33%)',
            ' 7 miligram seng (24%)',
            '0,8 miligram vitamin B5',
            'asam pantotenat (8%)',
            ' 0,13 miligram vitamin B6 (11%)',
            '55 miligram kalsium (5%)'
          ],
          bahanBahan: [
            '100 gr kacang hijau',
            '65 ml santan instan',
            'Selembar daun pandan',
            'Gula pasir sesuai selera',
            'Sedikit garam',
            'Jahe sesuai selera',
            '1/2 sdt keju pemesan',
            '650 ml air',
          ],
          peralatan: [
            'mangkok',
            ' sendok',
            'panci,' ' kompor',
          ],
          masak: [
            'Rendam kacang hijau selama 1 jam atau semakin lama lebih baik. Tiriskan kacang hijau.',
            'Masak air sampai mendidih lalu masukan kacang hijau yang sudah direndam,Kemudian masukan daun pandan dan jahe. Masak dalam air mendidih selama 5 menit. Tutup panci dan matikan api. Diamkan selama 30 menit.',
            'Nyalakan kembali api dan campurkan santan instan beserta gula pasir. Masak santan instan dan gula pasir selama 7 menit dan aduk terus sambil dicek tingkat kemanisannya.',
            'Jika sudah pas, matikan api. Bubur kacang hijau siap disajikan.',
          ],
          gambarMasak: [
            'bubur_1.png',
            'bubur_2.png',
            'bubur_3.png',
            'kacang ijo.jpg',
          ]),
      ModelResep(
        nama: 'Nasi Goreng',
        gambar: 'nasi goreng.jpg',
      )
    ];
  }

  static List<ModelResep>? getResepManis() {
    return [
      ModelResep(
        nama: 'Kue Serabi',
        gambar: 'serabi.jpg',
      ),
      ModelResep(
        nama: 'klepon',
        gambar: 'klepon.jpg',
      ),
      ModelResep(
        nama: 'Es Cingcau',
        gambar: 'cingcau.jpg',
      ),
    ];
  }

  static List<ModelResep>? getResep() {
    return [
      ModelResep(
        nama: 'Sate',
        gambar: 'sate.jpg',
      ),
      ModelResep(
        nama: 'Mie Baso',
        gambar: 'baso.jpg',
      ),
      ModelResep(
        nama: 'Rujak Buah',
        gambar: 'rujak.jpg',
      ),
    ];
  }
}
