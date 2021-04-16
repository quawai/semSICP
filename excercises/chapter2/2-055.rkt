(car ''abracadabra)



; apostrophe only represents the procedure (quote), sho when one expands this
; one will get the same as

(car (quote (quote abracadabara)))

; which meams

(car '(quote abaracadabra))

; One can understand this with the example bellow

(car (quote 'abaracadabra))