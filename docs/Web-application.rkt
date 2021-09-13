#lang racket
(require web-server/servlet
         web-server/servlet-env)

(define (start req)
  (response/xexpr
   `(html (head (title "Ubiot Store")
                (link ((rel "stylesheet")
                       (href "/test-static.css")
                       (type "text/css"))))
          (body
           '(div ((class "parte-superior"))
            '(header (nav ((class "navegacion"))
                     '(ul ((class "menu"))
                           (li (a ((href "")) "Hardware"))
                           (li (a ((href "")) "Software"))
                           (li (a ((href "")) "Libros y Revistas")
                                '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Motores Sumergibles")
                                     (li (a ((href ""))) "Tablero Electrico Inteligente")
                                     (li (a ((href ""))) "PLC Logo")
                                     (li (a ((href ""))) "Antena Microtik"))
                           (li (a ((href "")) "Aprender")
                           (li (a ((href "")) "Enseñar")
                           (li (a ((href "")) "Nosotros"))))))))

           '(div ((class "page-content"))
             '(div ((class "base"))                   
                     (h2 "Raspberry Pi 400")
                     (h3 "Tu computadora personal, integrada en un teclado compacto")
                     (button ((class "button-Saber-mas")) "Saber más")                    
                     (button
                      ((class "button-one")) "Raspberry Pi 400: La PC de escritorio de 70$")
                     (button
                      ((class "button-two")) "Empieza a usar tu Raspberry Pi 400")
                     (button
                      ((class "button-three"))
                     "Raspberry Pi 400 para trabajar y aprender en casa"))))))))


(serve/servlet start
               #:listen-ip #f
               #:servlet-path "/ubiotstore.rkt"
               #:port 8000
               #:extra-files-paths
                (list
                 (build-path "/home/training1/Migue/Pagina-Web/docs/htdocs")
                 (build-path "/home/training1/Migue/Pagina-Web/docs/images")))
