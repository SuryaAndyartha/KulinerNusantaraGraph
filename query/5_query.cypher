//Hidangan apa saja yang punya catatan alergen ikan?
MATCH (h:Hidangan)-[r:MENGANDUNG]->(b:Bahan)-[:MEMICU_ALERGI]->(a:Alergen {nama:'Ikan'})
MATCH (h)-[:BERASAL_DARI]->(p:Provinsi)
RETURN DISTINCT h.nama AS menu, p.nama AS provinsi, b.nama AS bahan, r.peran AS peran, a.nama AS alergen, h.metode_masak AS metode
ORDER BY menu, bahan, provinsi LIMIT 6;