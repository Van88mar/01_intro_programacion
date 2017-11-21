query.parametros <- list(
  lat = 36.9003409,
  lon = -3.4244838
)

url <- "http://www.cartociudad.es/services/api/geocoder/reverseGeocode"

respuesta <- GET(url, query = query.parametros)

## Cuerpo

info <- content(respuesta)

info

## El código HTTP de estado 

status_code(respuesta)


## Las cabeceras

headers(respuesta)


