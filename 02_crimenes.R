##API de Nominatim

nominatim_url <- "http://nominatim.openstreetmap.org/reverse"

query.parametros <- list(format = "json", lat = 51.4965946, lon = -0.1436476)
respuesta1 <- GET(nominatim_url, query = query.parametros)
stop_for_status(respuesta1)
direccion <- content(respuesta1)


direccion

##API de la policía de UK

policia_url <- "https://data.police.uk/api/crimes-at-location"
query.parametros <- list(date = "2017-04", lat = 51.4965946, lng = -0.1436476)
respuesta2 <- GET(policia_url, query = query.parametros)
stop_for_status(respuesta2)
crimenes <- content(respuesta2)

crimenes

##Conteo de los crímenes que ha habido por cada categoría


info <- c()
for (crimen in crimenes) {
  info <- c(info, crimen$category)
}

info

table(info)
