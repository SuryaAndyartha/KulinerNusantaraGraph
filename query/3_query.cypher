//Provinsi mana di Sumatera yang mencatat hidangan terbanyak?
MATCH (h:Hidangan)-[:BERASAL_DARI]->(p:Provinsi)-[:PART_OF*1..]->(w:Wilayah {nama: 'Wilayah Sumatera'})
RETURN p.nama AS provinsi, count(DISTINCT h) AS jumlah, max(h.tingkat_pedas) AS pedas_maks, min(h.nama) AS contoh
ORDER BY jumlah DESC, provinsi LIMIT 6;