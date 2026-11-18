//Hidangan apa saja yang memakai santan?”
MATCH (h:Hidangan)-[:MENGANDUNG {peran:'utama'}]->(b:Bahan {nama:'Santan'})
MATCH (h)-[:BERASAL_DARI]->(p:Provinsi)
RETURN h.nama AS hidangan, b.nama AS bahan, p.nama AS provinsi, h.rasa AS rasa, h.tingkat_pedas AS pedas, h.metode_masak AS metode
ORDER BY pedas, hidangan, provinsi LIMIT 6;