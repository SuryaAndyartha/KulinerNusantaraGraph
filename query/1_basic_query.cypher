//Query: Makanan apa saja yang paling pedas?
MATCH (h:Hidangan)
WHERE h.tingkat_pedas >= 4
RETURN h.nama AS `Nama Kuliner`, h.tingkat_pedas AS `Tingkat Pedas`, h.rasa AS Rasa
ORDER BY h.tingkat_pedas DESC, h.rasa;