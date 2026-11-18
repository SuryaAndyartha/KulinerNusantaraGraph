//Tambahkan hidangan baru Seblak beserta relasinya. Perbarui atribut dengan SET. Lalu hapus dengan DETACH DELETE

//Tambahkan
MATCH (k:KelasHidangan {nama: 'Hidangan Berkuah'})
MATCH (p:Provinsi {nama: 'Jawa Barat'})
MATCH (kencur:Bahan {nama: 'Kencur'})
MATCH (cabai:Bahan {nama: 'Cabai'})
MATCH (telur:Bahan {nama: 'Telur Ayam'})
MERGE (s:Hidangan {nama: 'Seblak'})
SET s.tingkat_pedas = 3, s.rasa = 'gurih pedas', s.metode_masak = 'rebus'
MERGE (s)-[:INSTANCE_OF]->(k)
MERGE (s)-[:BERASAL_DARI]->(p)
MERGE (s)-[:MENGANDUNG {peran: 'utama'}]->(kencur)
MERGE (s)-[:MENGANDUNG {peran: 'pelengkap'}]->(cabai)
MERGE (s)-[:MENGANDUNG {peran: 'pelengkap'}]->(telur)
RETURN s.nama AS hidangan, s.tingkat_pedas AS pedas, s.rasa AS rasa;

//Perbarui atribut
MATCH (s:Hidangan {nama: 'Seblak'})
SET s.tingkat_pedas = 5,
    s.catatan = 'Khas Bandung, level pedas bisa dipilih'
RETURN s.nama AS hidangan, s.tingkat_pedas AS pedas,
       s.rasa AS rasa, s.catatan AS catatan;

//Hapus
MATCH (s:Hidangan {nama: 'Seblak'})
DETACH DELETE s;