#lang racket
(require web-server/servlet)
(provide/contract (ubiot-store (request? . -> . response?)))

(define (ubiot-store req)
  (define (response-generator embed/url)
   (response/xexpr
   `(html (head (title "Ubiot Store")
                (link ((rel "stylesheet")
                       (href "/styles.css")
                       (type "text/css")))
                (meta ((name "viewport")
                       (content "width=device-width, user-scalable=no,initial-scale=1, maximum-scale=1, minimum-scale=1"))))
           ;     (script ([src "https://kit.fontawesome.com/e52591ecb3.js"]) (crossorigin "anonymous"))
          
          (body
           '(div
             (header
              (a ((href "/ubiotstore.rkt")) (img ([src "logo-chamo.png"])))
              (input ((type "checkbox") (id "button-menu")))
              (label ((for "button-menu")) (img ([src "icono-menu.png"])))
              
               (div ((class "navegacion"))
                     (nav ((class "menu"))
                        (ul        
                           (li (a ((href "products-section.html")) "Productos")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Computadoras Raspberry Pi de bajo costo y alto rendimiento"))
                                       (p (a ((href "RaspberryPiZero2W.html")) (button ((class "button-submenu")) "Raspberry Pi Zero 2W")))
                                       (p (a ((href "RaspberryPi400.html")) (button ((class "button-submenu")) "Raspberry Pi 400"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "")) "Todos los productos"))
                                       (li (a ((href "")) "Raspberry Pi 400"))
                                       (li (a ((href "")) "Raspberry Pi Zero 2W"))))))
                           
                         #|  (li (a ((href "https://www.raspberrypi.com/software/")) "Software")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Instale el sistema operativo Raspberry Pi usando Raspberry Pi Imager"))
                                       (p (a ((href "https://www.raspberrypi.com/software/")) (button ((class "button-submenu")) "Nuestro software"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "")) "Raspberry Pi OS"))
                                       (li (a ((href "")) "Raspberry Pi Desktop"))
                                       (li (a ((href "")) "Ayuda"))
                                       (li (a ((href "")) "Foros"))))))
                           
                           (li (a ((href "books-section.html")) "Libros y Revistas")
                               (div
                                 (ul ((class "Submenu"))
                                     (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Libros y revistas de Raspberry Pi Press Libros y revistas de Raspberry Pi Press"))
                                       (p (a ((href "books-section.html")) (button ((class "button-submenu")) "Explore nuestros titulos"))))

                                     (div ((class "right-content"))
                                       (li (a ((href "")) "El MagPi"))
                                       (li (a ((href "")) "HackSpace"))
                                       (li (a ((href "")) "Estructura alámbrica"))
                                       (li (a ((href "")) "PC personalizado"))))))
                           
                           (li (a ((href "https://raspberrypi-espana.es/")) "Aprende")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Todo lo que necesitas saber para empezar con tu Raspberry Pi"))
                                       (p (a ((href "https://raspberrypi-espana.es/")) (button ((class "button-submenu")) "Aprender en casa"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "https://raspberrypi-espana.es/tutoriales/")) "Tutoriales"))
                                       (li (a ((href "")) "Guias de implementación"))
                                       (li (a ((href "https://raspberrypi-espana.es/noticias-de-raspberry-pi/")) "Actualidades"))))))
                           
                           (li (a ((href "teach-section.html")) "Enseñar")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                           (h1 "Capacitación, recursos y orientación gratuitos para ayudarlo a enseñar informática con confianza."))
                                       (p (a ((href "teach-section.html")) (button ((class "button-submenu")) "Apoyo a los profesores"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "")) "Enseñar Computación"))
                                       (li (a ((href "")) "Iniciar un club de códigos"))
                                       (li (a ((href "")) "Cursos de formación online")))))) |#
                           
                           (li (a ((href "about-us-section.html")) "Sobre nosotros")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                           (h1 "Trabajamos para poner el poder de la informática y la creación digital en manos de personas de todo el mundo."))
                                       (p (a ((href "https://www.raspberrypi.org/about/")) (button ((class "button-submenu")) "Sobre nosotros"))))

                                    (div ((class "right-content"))   
                                       (li (a ((href "")) "Quienes somos"))
                                       (li (a ((href "")) "Ubiot"))
                                       (li (a ((href "")) "TEI"))
                                       (li (a ((href "")) "Agropezim Group")))))))))))

           '(div ((class "page-content"))
             '(div ((class "backgroud-image"))                   
                     (h2 "Raspberry Pi")
                     (h3 "Desarrolla tus proyectos con una Raspberry Pi")
                     (li (a ((href "software-section.html")) (button ((class "button-Saber-mas")) "Saber más")))
                     
              '(div ((class "right-buttons"))
                     (li (a ((href "teach-section.html")) (button ((class "button-one")) "Raspberry Pi 400: La PC de escritorio de 70$")))
                     (li (a ((href "software-section.html")) (button ((class "button-two")) "Empieza a usar tu Raspberry Pi 400")))
                     (li (a ((href "learn-section.html")) (button ((class "button-three"))"Raspberry Pi 400 para trabajar y aprender en casa"))))))


              '(footer
                #| '(div ((class "container__footer"))
                            
                     '(div ((class "box__footer"))
                           (h3 "SOBRE NOSOTROS")
                           (p (a ((href "")) "Sobre nosotros"))
                           (p (a ((href "")) "Nuestro equipo"))
                           (p (a ((href "")) "Gobernancia"))
                           (p (a ((href "")) "Salvaguardar"))
                           (p (a ((href "")) "Investigar"))
                           (p (a ((href "")) "Trabajos"))
                           (p (a ((href "")) "Contáctenos")))

                     '(div ((class "box__footer"))
                           (h3 "APOYO")
                           (p (a ((href "")) "Ayudar"))
                           (p (a ((href "")) "Documentación"))
                           (p (a ((href "")) "Proyectos"))
                           (p (a ((href "")) "Capacitación"))
                           (p (a ((href "")) "Software"))
                           (p (a ((href "")) "Foros")))
                     
                     '(div ((class "box__footer"))
                           (div ((class "our-social-media"))
                                (a ((href "")) (i ((class "fab fa-facebook-f"))))
                                (a ((href "")) (i ((class "fab fa-instagram"))))
                                (a ((href "")) (i ((class "fab fa-twitter"))))
                                (a ((href "")) (i ((class "fab fa-youtube")))))

                                (hr)
                                
                                (div ((class "logo"))
                                      (img ([src "logo-ubiot-2.png"]))))
                     
                     '(div ((class "box__footer"))
                           (h3 "CONTACTANOS")
                           (p (a ((href "")) "Contacto 1"))
                           (p (a ((href "")) "Contacto 2")))) |#
                 
                 '(div ((class "box__copyright"))
                       (hr)
                       (p copy " 2021 " (b "Ubiot") " - Todos los derechos reservados."))) ))))

(send/suspend/dispatch response-generator))

(require web-server/servlet-env)
(serve/servlet ubiot-store
               #:listen-ip #f
               #:launch-browser? #t
               #:quit? #f
               #:servlet-path "/ubiotstore.rkt"
               #:port 8081
               #:extra-files-paths
                (list (build-path (current-directory) "../htdocs")
                      (build-path (current-directory) "../images")
                      (build-path (current-directory) "../files")))