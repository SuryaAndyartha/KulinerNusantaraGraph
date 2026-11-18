//Provinsi mana yang HANYA punya satu hidangan?
MATCH (p:Provinsi)-[:PART_OF]->(w:Wilayah)-[:PART_OF]->(n:Negara)
MATCH (h:Hidangan)-[:BERASAL_DARI]->(p)
WITH p,w,n,count(DISTINCT h) AS jumlah, collect(DISTINCT h)[0] AS contoh
WHERE jumlah = 1
RETURN p.nama AS provinsi, w.nama AS wilayah, n.nama AS negara, jumlah, contoh.nama AS hidangan, contoh.metode_masak AS metode
ORDER BY provinsi;