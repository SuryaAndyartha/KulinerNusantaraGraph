//Hidangan berkuah apa saja selain sup?
MATCH (h:Hidangan)-[:INSTANCE_OF]->(k:KelasHidangan)-[:IS_A*1..3]->(u:KelasHidangan {nama:'Hidangan Berkuah'})
MATCH (h)-[:BERASAL_DARI]->(p:Provinsi)
WHERE k.nama <> 'Sup'
RETURN DISTINCT h.nama AS hidangan, p.nama AS provinsi, k.nama AS jenis, u.nama AS kategori, h.rasa AS rasa, h.tingkat_pedas AS pedas
ORDER BY hidangan, provinsi LIMIT 6;