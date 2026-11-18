//Hidangan apa saja yang gurih dan tidak pedas?
MATCH (h:Hidangan)-[:BERASAL_DARI]->(p:Provinsi)
MATCH (h)-[:INSTANCE_OF]->(k:KelasHidangan)
WHERE h.rasa = 'gurih' AND h.tingkat_pedas = 0
RETURN h.nama AS hidangan, p.nama AS provinsi, k.nama AS kategori, h.rasa AS rasa, h.metode_masak AS metode, h.tingkat_pedas AS pedas
ORDER BY hidangan, provinsi LIMIT 6;