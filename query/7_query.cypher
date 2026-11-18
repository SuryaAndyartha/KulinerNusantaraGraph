//Hidangan apa saja yang punya alergen gluten?
MATCH (h:Hidangan)-[r:MENGANDUNG]->(b:Bahan)-[:MEMICU_ALERGI]->(a:Alergen {nama:'Gluten'})
MATCH (h)-[:BERASAL_DARI]->(p:Provinsi)
RETURN DISTINCT h.nama AS hidangan, b.nama AS bahan, a.nama AS alergen, r.peran AS peran, p.nama AS provinsi, h.metode_masak AS metode
ORDER BY hidangan, bahan, provinsi LIMIT 6;