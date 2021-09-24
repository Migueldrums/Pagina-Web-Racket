#lang racket
(require web-server/servlet)
(provide/contract (ubiot-store (request? . -> . response?)))

(define (ubiot-store req)
  (define (response-generator embed/url)
   (response/xexpr
   `(html (head (title "Ubiot Store")
                (link ((rel "stylesheet")
                       (href "/test-static.css")
                       (type "text/css")))
                (meta ((name "viewport")
                       (content "width=device-width, initial-scale=1.0"))))
          (body
           '(div ((class "backgroud"))
             (header
               (nav ((class "navegacion"))
                   (a ((href ,(embed/url ubiot-store))) (img ([src "logo-ubiot.png"])))
                     (ul ((class "menu"))
                                
                           (li (a ((href "hardware-section.html")) "Hardware")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Computadoras y accesorios Raspberry Pi de bajo costo y alto rendimiento"))
                                       (p (a ((href "https://www.raspberrypi.org/products/raspberry-pi-4-model-b/")) (button ((class "button-submenu")) "Comprar Raspberry Pi 4")))
                                       (p (a ((href "https://www.raspberrypi.org/products/raspberry-pi-400/")) (button ((class "button-submenu")) "Comprar Raspberry Pi 400"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "")) "Todos los productos"))
                                       (li (a ((href "")) "Para la industria"))
                                       (li (a ((href "")) "Documentación"))
                                       (li (a ((href "")) "Foros"))))))
                           
                           (li (a ((href "software-section.html")) "Software")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Todo lo que necesita para comenzar con su computadora Raspberry Pi"))
                                       (p (a ((href "software-section.html")) (button ((class "button-submenu")) "Nuestro software"))))

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
                           
                           (li (a ((href "learn-section.html")) "Aprender")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                          (h1 "Recursos gratuitos para que los jóvenes aprendan a codificar y se conviertan en creadores digitales"))
                                       (p (a ((href "learn-section.html")) (button ((class "button-submenu")) "Aprender en casa"))))

                                    (div ((class "right-content"))
                                       (li (a ((href "")) "Proyectos de codificación guiada"))
                                       (li (a ((href "")) "Para la industria"))
                                       (li (a ((href "")) "Aprende en un CoderDojo"))))))
                           
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
                                       (li (a ((href "")) "Cursos de formación online"))))))
                           
                           (li (a ((href "about-us-section.html")) "Nosotros")
                               (div
                                 (ul ((class "Submenu"))
                                    (div ((class "left-content"))
                                       (li ((class "Titulo"))
                                           (h1 "Trabajamos para poner el poder de la informática y la creación digital en manos de personas de todo el mundo."))
                                       (p (a ((href "https://www.raspberrypi.org/about/")) (button ((class "button-submenu")) "Sobre nosotros"))))

                                    (div ((class "right-content"))   
                                       (li (a ((href "")) "Donar"))
                                       (li (a ((href "")) "Apoyanos"))
                                       (li (a ((href "")) "Investigar"))
                                       (li (a ((href "")) "Blog"))))))))))

           '(div ((class "page-content"))
             '(div ((class "backgroud-image"))                   
                     (h2 "Controlador Lógico Programable")
                     (h3 "Automatiza tus procesos con un PLC")
                     (link (a ((href "https://new.siemens.com/global/en/products/automation/systems/industrial/plc-old.html")) (button ((class "button-Saber-mas")) "Saber más")))
                     
              '(div ((class "right-buttons"))
                     (link (a ((href "hardware-section.html")) (button ((class "button-one")) "Raspberry Pi 400: La PC de escritorio de 70$")))
                     (link (a ((href "software-section.html")) (button ((class "button-two")) "Empieza a usar tu Raspberry Pi 400")))
                     (link (a ((href "learn-section.html")) (button ((class "button-three"))"Raspberry Pi 400 para trabajar y aprender en casa"))))))))))

(send/suspend/dispatch response-generator))

(require web-server/servlet-env)
(serve/servlet ubiot-store
               #:listen-ip #f
               #:launch-browser? #t
               #:quit? #f
               #:servlet-path "/ubiotstore.rkt"
               #:port 8000
               #:extra-files-paths
                (list (build-path (current-directory) "../htdocs")
                      (build-path (current-directory) "../images")
                      (build-path (current-directory) "../files")))