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
                           (li (a ((href "")) "Hardware")
                               '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Todos los productos")
                                     (li (a ((href ""))) "Para la industria")
                                     (li (a ((href ""))) "Documentación")
                                     (li (a ((href ""))) "Foros")
                                  (button ((class "button-submenu")) "Comprar Raspberry Pi 4")
                                  (button ((class "button-submenu")) "Comprar Raspberry Pi 400")))
                           (li (a ((href "")) "Software")
                               '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Sistema operativo Raspberry Pi")
                                     (li (a ((href ""))) "Escritorio Raspberry Pi")
                                     (li (a ((href ""))) "Ayudar")
                                     (li (a ((href ""))) "Foros")
                                   (button ((class "button-submenu")) "Nuestro software")))
                           (li (a ((href "")) "Libros y Revistas")
                                '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "El MagPi")
                                     (li (a ((href ""))) "HackSpace")
                                     (li (a ((href ""))) "Estructura alámbrica")
                                     (li (a ((href ""))) "PC personalizado")
                                   (button ((class "button-submenu")) "Explore nuestros titulos")))
                           (li (a ((href "")) "Aprender")
                               '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Proyectos de codificación guiada")
                                     (li (a ((href ""))) "Para la industria")
                                     (li (a ((href ""))) "Aprende en un CoderDojo")
                                   (button ((class "button-submenu")) "Aprender en casa")))
                           (li (a ((href "")) "Enseñar")
                               '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Enseñar Computación")
                                     (li (a ((href ""))) "Iniciar un club de códigos")
                                     (li (a ((href ""))) "Cursos de formación online")
                                   (button ((class "button-submenu")) "Apoyo a los profesores")))
                           (li (a ((href "")) "Nosotros")
                               '(ul ((class "Submenu"))
                                     (li (a ((href ""))) "Donar")
                                     (li (a ((href ""))) "Apoyanos")
                                     (li (a ((href ""))) "Investigar")
                                     (li (a ((href ""))) "Blog")
                                   (button ((class "button-submenu")) "Sobre nosotros")))))))

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
                     "Raspberry Pi 400 para trabajar y aprender en casa")))))))


(serve/servlet start
               #:listen-ip #f
               #:servlet-path "/ubiotstore.rkt"
               #:port 8000
               #:extra-files-paths
                (list
                 (build-path "/home/training1/Migue/Pagina-Web/docs/htdocs")
                 (build-path "/home/training1/Migue/Pagina-Web/docs/images")))
