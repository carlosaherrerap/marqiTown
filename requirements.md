{
    CLIENTE={
        SECCION:{
            PRODUCTOS:{
                - ACCEDE A LA VISTA PRINCIPAL DONDE SE MUESTRAN TODOS LOS PRODUCTOS DE TODAS LAS CATEGORIAS  Y SUBCATEGORIAS
                - BUSCAR PRODUCTO POR TEXTO, VOZ, IMAGEN.
                - PUEDE FILTRAR POR CATEGORIA, SUBCATEGORIA Y LO MAS IMPORTANTE: DEPARTAMENTO, PROVINCIA,DISTRITO
                - PUEDE BUSCAR A UN VENDEDOR, SEGUIRLO(PARA QUE AL INICIO SE MUESTRE MAS SEGUIDOS SUS PUBLICACIONES COMO PREFERENCIA), DARLE UN CORAZON DE CONFIANZA Y VER SU PERFIL DE SUS PRODUCTOS Y PUBLICACIONES(TEXTO, IMAGENES, COLLAGE,VIDEO DE MAXIMO 1 MINUTO) Y ENVIARLE MENSAJE
                - EN LA PARTE SUPERIOR SE PUEDE VER  ESTADOS TIPO FACEBOOK DE LOS VENDEDORES A QUIENES SIGUE Y DURAN SOLO 24 HORAS
                - BOTON FLOTANTE DE CHAT-BOT DONDE SE LE PUEDE HACER PREGUNTAS QUE SOLO DURA HASTA QUE SE CIERRA LA VENTANA DE CONVERSACION DE CHAT CON EL BOT.

            },
            AVISOS:{
                - PUBLICACIONES SIMILARES A LOS DE FB, SOLO SE PUEDE REACCIONAR O CLICKEAR EN EL BOTON "CHAT"
                - LOS CLIENTES NO PUEDEN CREAR AVISOS, SOLO LOS VENDEDORES.
            },  
            MEDIA:{
                - SECCION SOCIAL DE LOS VENDEDORES(TIPO TIK TOK) VIDEOS CORTOS DE 1 MINUTO, LOS CLIENTES PUEDEN VER EL AUTOR DEL VIDEO EN UN ICONO QUE SE VE LA FOTO DE PERFIL DEL VENDEDOR Y AL DARLE CLIC NOS LLEVA A SU PERFIL DONDE PODEMOS DEJAR UN MENSAJE DICIENDO QUE NOS INTERESA TAL PRODUCTO MOSTRADO EN LA IMAGEN
            },
            SERVICIOS:{
                - BUSCAR UN SERVICIO A CONTRATAR POR TEXTO, VOZ, IMAGEN.
            },
            TRABAJO:{
                - SOLICITA AYUDA, O COMENTA LAS PUBLICACIONES DE OTROS CLIENTES QUE REQUIERAN AYUDA EN ALGO.
                - EL DUEÑO DE LA PUBLICACION PUEDE DETERMINAR LOS BOTONES DE SU PUBLICACION(CHAT y/o WHATSAPP)
                - Si la otra persona presiona el boton de CHAT(solo si está visible por el dueño de la publicacion) entonces se abre un chat que dura 24 horas, y si presiona el boton de WHATSAPP lo lleva al chat de whatsapp con el dueño de la publicacion.
                - EL VENDEDOR PODRA INHABILITAR UNA PUBLICACION(cambiando su estado cuando quiera) o eliminarlo
                - Si la otra persona nota que un vendedor realizó una publicacion engañosa o de caracter ofensivo o incluso que no tiene nada que ver con una venta entonces podrá denunciarlo.
                - Los chats del vendedor estarán una zona seccionados por publicacion, cada publicacion tiene un nombre clave de 3 palabras como maximo y 1 como minimo. Cada seccion con el nombre de la publicacion y dentro de la seccion todos los chat de los interesados
                - MUY IMPORTANTE! PARA ACEPTAR UN TRABAJO EL USUARIO CLIENTE DEBERA IR A SU PERFIL Y COMPLETAR TODA SU INFORMACION PERSONAL
            },
            CHAT:{
                - AQUI SE DIVIDE EN 2 SECCIONES, LA PRIMERA ES DE LOS MENSAJES ENVIADOS A VENDEDORES Y LA OTRA SECCION ES DE PUBLICACIONES HECHAS EN LA SECCION DE TRABAJO Y OTRO CLIENTE RESPONDE ABRIENDO UN CHAT EN ESTA SECCION Y DIVIDIENDOLO POR CADA PUBLICACION REALIZADA, CADA PUBLICACION TIENE SU CANTIDAD DE CHATS DE PERSONAS QUE PRESIONARON EL BOTON "CHAT"
                - SE PUEDE VER EL LOGO DEL CLIENTE O VENDEDOR QUE NOS LLEVA A SU PERFIL
            },
            FAVORITOS:{
                - SI AL CLIENTE LE GUSTA UN PRODUCTO PERO AUN NO LO QUIERE COMPRAR ENTONCES LE DA UN CORAZON AL PRODUCTO(SIMILAR AL LIKE) Y AUTOMATICAMENTE SE GUARDA EN LA SECCION FAVORITOS
            },
            CARRITO:{
                - USUALMENTE EL CLIENTE QUERRA COMPRAR MAS DE  UN PRODUCTO E IR CAMBIANDO LA CANTIDAD, PARA ELLO INGRESA A LA  VISTA DE  DETALLES DE UN PRODUCTO Y LE DA EN LA OPCION DE "AGREGAR A CARRITO" Y SE VA GUARDANDO EN ESTA SECCION "CARRITO"
            },
            PERFIL:{
                - EL CLIENTE ACCEDE A SUS DATOS PERSONALES EDITANDO unicamente para ver su informacion o llenar algun dato que falte SIN ALTERAR ALGUN DATO SUYO QUE YA HAYA LLENADO ANTES.
                - EN UN PARTE CORRESPONDIENTE HABRÁ 2 BOTONES: CERRAR SESION, CAMBIAR A VENDEDOR
                - EN LA PARTE FINAL, UN BOTON DE FEEDBACK QUE HABRE UN FORMULARIO DONDE LOS USUARIOS PUEDEN DAR CONSEJOS AL DESARROLLADOR PARA MEJORAR(opcion en spinner de enviar como ANONIMO pero en la base de datos si se guarda el nombre del usuario que lo envió)
            }

        }

},

VENDEDOR={
    SECCION={
        PRODUCTOS:{
            - ACCEDE A LA VISTA PRINCIPAL DONDE SE MUESTRAN TODOS LOS PRODUCTOS DE TODAS LAS CATEGORIAS  Y SUBCATEGORIAS
            - BUSCAR PRODUCTO POR TEXTO, VOZ, IMAGEN.
            - PUEDE FILTRAR POR CATEGORIA, SUBCATEGORIA Y LO MAS IMPORTANTE: DEPARTAMENTO, PROVINCIA,DISTRITO
            - NO PUEDE BUSCAR A UN VENDEDOR, SEGUIRLO(PARA QUE AL INICIO SE MUESTRE MAS SEGUIDOS SUS PUBLICACIONES COMO PREFERENCIA), NI DARLE UN CORAZON DE CONFIANZA Y VER SU PERFIL DE SUS PRODUCTOS Y PUBLICACIONES(TEXTO, IMAGENES, COLLAGE,VIDEO DE MAXIMO 1 MINUTO) Y TAMPOCO ENVIARLE MENSAJE, YA QUE LE SALE UN POP UP ->"<X> INICIE SESION COMO CLIENTE <ACEPTAR>"
            - EN LA PARTE SUPERIOR SE PUEDE VER SUS ESTADOS(TIPO FACEBOOK) DURAN SOLO 24 HORAS Y PUEDE VER QUIENES LO VIERON, Y LOS QUE REACCIONARON (<3)
            - NO PUEDE VER EL BOTON FLOTANTE DE CHAT-BOT DONDE SE LE PUEDE HACER PREGUNTAS QUE SOLO DURA HASTA QUE SE CIERRA LA VENTANA DE CONVERSACION DE CHAT CON EL BOT.

        },
        AVISOS:{
                - PUBLICACIONES SIMILARES A LOS DE FB, SOLO LOS CLIENTES TIENEN LA SECCION AVISOS VISIBLE Y HABILITADA. LOS VENDEDORES NO PUEDEN VER TODOS LOS AVISOS DE TODOS LOS VENDEDORES, ESO SOLO ES VISIBLE E INTERACTUABLE POR LOS CLIENTES.
                - SOLO LOS VENDEDORES PUEDEN CREAR AVISOS
            }, 
        MEDIA:{
                - SECCION SOCIAL DE LOS VENDEDORES(TIPO TIK TOK) VIDEOS CORTOS DE 1 MINUTO, EL VENDEDOR PUEDE CREAR VIDEOS CORTOS MOSTRANDO SU PRODUCTO DE MANERA RAPIDA Y ATRACTIVA Y SELECCIONAR LA OPCION DE "MOSTRAR PRODUCTO" para que el cliente cuando vea el video entonces pueda hacer clic en el icono(foto de perfil del vendedor que lleva al perfil del vendedor) y un segundo icono(icono del producto que lleva directamente al producto)
            },
        SERVICIOS:{
                - EL VENDEDOR SOLO PUEDE PUBLICAR EL SERVICIO QUE ESTÁ REALIZANDO O EN EL QUE SE ESPECIALIZA("SOY TECNICO DE REFRIGERADORAS| DETALLES: 1. REPARO.... 2.INSTALO... 3. ETC") LOS SERVICIOS SON DIFERENTES A LOS PRODUCTO, A ESTOS NO SE LES PUEDE GUARDAR EN FAVORITOS O AGREGAR AL CARRITO, SOLO TIENE 2 BOTONES("CHAT" O "WHATSAPP")
            },
        TRABAJO:{
                - ESTA SECCION NO ESTÁ PERMITIDA, VISIBLE NI HABILITADA PARA EL ROL DE VENDEDOR, SOLO PARA CLIENTES
            },
        CHAT:{
                - AQUI SE VE  LOS MENSAJES CON LOS CLIENTES QUE VISITAN EL PERFIL DEL VENDEDOR O QUE EN LA SECCION DE SERVICIOS SELECCIONAN EL CHAT Y SE ADJUNTA UN MENSAJE COMO SUBTITULO DEL CHAT CON EL NOMBRE DEL CLIENTE + DEBAJO |SERVICIO: XXXXXX|, LOGO(PARA DIRIGIRNOS A SU PERFIL)
            },
        FAVORITOS:{
                - ESTA SECCION NO ESTÁ PERMITIDA, VISIBLE NI HABILITADA PARA EL ROL DE VENDEDOR, SOLO PARA CLIENTES
            },
        CARRITO:{
                - ESTA SECCION NO ESTÁ PERMITIDA, VISIBLE NI HABILITADA PARA EL ROL DE VENDEDOR, SOLO PARA CLIENTES
            },
        PERFIL:{
                - EL VENDEDOR PUEDE VER O LLENAR SU INFORMACION FALTANTE SIN PODER ALTERAR LA INFORMACION PERSONAL QUE YA SE HA REGISTRADO ANTES
                - EN ESTA SECCION PODRÁ AGREGAR UN PRODUCTO->ADEMAS EN EL FORMULARIO/VISTA DONDE AGREGAR EL PRODUCTO PUEDE ACTIVAR EL MICROFONO PARA DESCRIBIR SU PRODUCTO Y CON UN BOTON(mag-IA <🪄>) PUEDE MEJORAR LA DESCRICPION CON AYUDA DE LA IA
                - EN UN PARTE CORRESPONDIENTE HABRÁ 2 BOTONES: CERRAR SESION, CAMBIAR A CLIENTE
                - EN LA PARTE FINAL, UN BOTON DE FEEDBACK QUE HABRE UN FORMULARIO DONDE LOS USUARIOS PUEDEN DAR CONSEJOS AL DESARROLLADOR PARA MEJORAR(opcion en spinner de enviar como ANONIMO pero en la base de datos si se guarda el nombre del usuario que lo envió)
            }
        
        
    }

},

        CONSIDERACIONES_GENERALES={
            SECCION={
                    PRODUCTOS:{
                        - Tendrá una seccion de notificaciones.
                        - Los productos se ven tipo lazy loading.
                        - Hay un boton para cambiar de categoria seccionaria. Es decir un boton que abre un pequeño modal donde el usuario puede elegir si ver todos los productos de todas las categorias o ver por una categoria.
                        Por ejemplo, si el usuario quiere solo ver la categoria "Hogar" pero en hogar solo hay 100 productos que el usuario termina de ver todos en unos segundos entonces a continuacion debe aparecer todos los productos de la siguiente categoria
                        - Los usuario tambien podran ordenar por de mayor a menor precio
                        - Los vendedores podrán colocar -># a sus productos, que los clientes tambien pueden buscarlo
                        - El vendedor puede inhabilitar un producto por un tiempo o automaticamente cuando el stock es 0. puede eliminar o editar el producto, cuando el precio editado es menor al anterior en el card del producto se muestra tachado el precio anterior realzando el precio actual
                    },
                    AVISOS:{
                        - SECCION VISIBLE SOLO PARA CLIENTES. LOS AVISOS CREADOS POR UN VENDEDOR ELLOS PUEDEN VERLO EN SU SECCION PERFIL PERO NO EN SECCION AVISOS DEBIDO QUE PARA EL VENDEDOR NO EXISTE ESTA SECCION.
                    }
                    MEDIA:{
                        - Se muestra el icono del vendedor que publicó el video, descripcion breve, iconos de "<3"
                        - Si el vendedor selecciono un producto especifico entonces cuando el cliente selecciona el icono de "CHAT" entonces le lleva al chat con el vendedor adjuntando un titulo que es el nombre del producto o servicio
                    },
                    SERVICIOS:{
                        - En esta seccion se puede filtrar por la categoria de servicios, localidad(DEPARTAMENTO, PROVINCIA,DISTRITO)
                        - Si se presiona sobre el card del servicio nos lleva a mas detalles de dicho servicio para ver mas informacion como el costo de servicio, que incluye, formas de adquirir el servicio, terminos y condiciones, etc.
                    },
                    TRABAJO:{
                        - Solo el rol cliente puede ver e ingresar a esta seccion, filtrando por la categoria de servicios, localidad(DEPARTAMENTO, PROVINCIA,DISTRITO)
                        - - Si se presiona sobre el card del TRABAJO  nos lleva a mas detalles de dicho TRABAJO para ver mas informacion como el pago, el tiempo que toma, que hay que hacer ,pago, formas o metodos de pago, etc.
                    },
                    CHAT:{
                        - Está habilitado el envío de mensajes de texto, audio, imagenes.
                        - Está hecho en tiempo real.
                    },
                    FAVORITOS:{
                        - SE PUEDE ELIMINAR LOS FAVORITOS, AL PRESIONAR SOBRE EL CARD DEL ELEMENTO GUARDADO NOS LLEVA  DIRECTAMENTE A LOS DETALLES DE DICHO PRODUCTO O SERVICIO
                    },
                    CARRITO:{
                        - ESTA SECCION NO ESTÁ PERMITIDA, VISIBLE NI HABILITADA PARA EL ROL DE VENDEDOR, SOLO PARA CLIENTES, aquí se puede verificar si uno está de acuerdo con los productos que tiene registrado además de pasar a la siguiente vista de calcular la cantidad de un producto * precio unitario = total y por ultimo la suma de los totales =>subtotal a pagar. Proceder con el pago
                    },
                    PERFIL:{
                        - El cliente tendrá una descripcion publica y su informacion personal es privada, solo la puede ver el vendedor al momento que el mismo cliente es quien se presenta interesado por el producto. Por ejemplo: El cliente "Alex" ve un auto en venta del vendedor "Carlos". Al momento que Alex abre un chat con Carlos para preguntarle más sobre el auto entonces Carlos puede ver los datos privados de Alex y Alex puede ver los datos personales de Carlos.
                        - NOTA: la app no debe permitir toma captura de pantalla
                        - Desde esta vista se puede solicitar la verificacion de perfil:Se necesita cumplir con requisitos como alcanzar 10 ventas oficiales, completar el perfil de vendedor si solicita verificacion de perfil como vendedor.
                        - Solicitar verificacion de perfil como cliente necesita completar todos sus datos personales y tener como minimo 1 compra oficial exitosa
                        - Los datos personales a completar para lograr cualquier verificacion de perfil es: foto de perfil de rostro, foto lateral derecha de rostro, foto lateral izquierda de rostro, foto de dni por delante y detras, el audio que solo el cliente debe decir="Yo, [Nombre completo del cliente], con documento de identidad [Número de DNI o documento], declaro de manera libre, voluntaria y expresa lo siguiente:

Finalidad de uso: Entiendo y acepto que la aplicación [Nombre de la App] tiene como único fin permitirme adquirir productos y servicios reales ofrecidos por vendedores, pagando por ellos con las monedas virtuales 'Intis' en el caso que quede acordado así, que previamente he comprado con dinero real dentro de la plataforma. Me comprometo a usar la aplicación exclusivamente para este fin legal.

Compromiso de buena fe y rechazo al fraude: Me comprometo a actuar siempre con honestidad, transparencia y buena fe en todas mis comunicaciones con los vendedores, ya sea a través del chat interno o por cualquier otro medio acordado detallando sin malas intenciones con comunicacion clara y directa. Me obligo a no realizar, promover o participar en ningún acto que pueda considerarse estafa, engaño, suplantación de identidad, manipulación de la plataforma, o cualquier otra conducta que cause perjuicio, molestia o daño a los vendedores o a la propia aplicación.

Consecuencias ante incumplimiento: Reconozco que, si incumplo cualquiera de estas obligaciones, la aplicación [Nombre de la App] tiene el derecho de eliminar mi cuenta de forma inmediata y definitiva, sin posibilidad de recuperación, perdiendo yo cualquier saldo de monedas 'Intis' que pudiera tener. Además, autorizo expresamente a [Nombre de la App] a presentar una denuncia formal ante las autoridades policiales y judiciales, y a colaborar plenamente con ellas en la investigación. Esto incluye, de ser necesario, el rastreo de mi identidad y ubicación, así como una visita al domicilio que he registrado, acompañados de efectivos policiales, con el fin de esclarecer los hechos y asumir las consecuencias legales que correspondan.

Consentimiento para el tratamiento de datos personales y grabación de compromiso: Con el objetivo de verificar mi identidad, prevenir el fraude y dejar constancia de mi aceptación, otorgo mi consentimiento inequívoco para que [Nombre de la App] recopile, almacene y utilice:

Las fotografías de mi Documento Nacional de Identidad (DNI) o documento equivalente.

Las fotografías de mi rostro (selfie).

La grabación de mi voz, incluyendo este mismo audio que estoy realizando.
Entiendo que esta grabación de voz, en la que leo y acepto estas condiciones, forma parte del acuerdo legal y servirá como prueba de mi adhesión voluntaria a estos términos.

Declaro que he comprendido cada una de estas cláusulas y las acepto en su totalidad."

                        - Los datos personales a completar para lograr cualquier verificacion de perfil es: foto de perfil de rostro, foto lateral derecha de rostro, foto lateral izquierda de rostro, foto de dni por delante y detras, el audio que solo el vendedor  debe decir --> "Yo, [Nombre completo del vendedor], con documento de identidad [Número de DNI o documento], declaro de manera libre, voluntaria y expresa lo siguiente:

Finalidad de uso: Entiendo y acepto que la aplicación [Nombre de la App] tiene como único fin permitirme ofrecer y vender productos o servicios lícitos a los clientes, aceptando como medio de pago exclusivo las monedas virtuales 'Intis' en el caso que quede acordado así. Me comprometo a describir mis ofertas con veracidad, de manera clara y a cumplir fielmente los acuerdos de entrega y condiciones pactadas con los compradores a través del chat interno.

Compromiso de buena fe y rechazo al fraude: Me comprometo a actuar siempre con honestidad, transparencia y buena fe en todas mis comunicaciones con los clientes. Me obligo a no realizar, promover o participar en ningún acto que pueda considerarse estafa, publicidad engañosa, no entrega de lo acordado, suplantación de identidad, manipulación de la plataforma, o cualquier otra conducta que cause perjuicio, molestia o daño a los compradores o a la propia aplicación.

Consecuencias ante incumplimiento: Reconozco que, si incumplo cualquiera de estas obligaciones, la aplicación [Nombre de la App] tiene el derecho de eliminar mi cuenta de forma inmediata y definitiva, sin posibilidad de recuperación, perdiendo yo cualquier saldo de monedas 'Intis' que pudiera tener y quedando inhabilitado para futuros registros. Además, autorizo expresamente a [Nombre de la App] a presentar una denuncia formal ante las autoridades policiales y judiciales, y a colaborar plenamente con ellas en la investigación. Esto incluye, de ser necesario, el rastreo de mi identidad y ubicación, así como una visita al domicilio que he registrado, acompañados de efectivos policiales, con el fin de esclarecer los hechos y asumir las consecuencias legales que correspondan.

Consentimiento para el tratamiento de datos personales y grabación de compromiso: Con el objetivo de verificar mi identidad, prevenir el fraude y dejar constancia de mi aceptación, otorgo mi consentimiento inequívoco para que [Nombre de la App] recopile, almacene y utilice:

Las fotografías de mi Documento Nacional de Identidad (DNI) o documento equivalente.

Las fotografías de mi rostro (selfie).

La grabación de mi voz, incluyendo este mismo audio que estoy realizando.
Entiendo que esta grabación de voz, en la que leo y acepto estas condiciones, forma parte del acuerdo legal y servirá como prueba de mi adhesión voluntaria a estos términos.

Declaro que he comprendido cada una de estas cláusulas y las acepto en su totalidad."
                    }


            }
        },
    
    EXTRAS={
        NOTIFICACIONES={
            - Las notificaciones se muestran para cliente y vendedor por separado, y al mismo tiempo separado por categoria. Por ejemplo si de una publicacion/AVISO creada por un vendedor alguien le da like(<3) entonces le llega una notificacion [El Cliente:@aasdas le gusta tu AVISO] pero si otro le da like entonces no se crea una nueva notificacion sino que el mismo cuadro se actualiza y cambia de estado de leído a no-leído, debido que pertenece a un mismo objeto(AVISO), asi para : "Tienes un mensaje en tu perfil de vendedor" luego si llega otro solo cambia a "Tienes 2 mensajes en tu perfil de vendedor"
            - Recargaste exitosamente x.xx soles <--estas notificaciones si van por separado

        },
        PERFIL={
            - El cliente puede ver unicamente los videos cortos del vendedor en una seccion de su perfil tipo tik tok, seccion de puros videos cortos(SECCION MEDIA), puros AVISOS, puros PRODUCTOS, descripcion de vendedor.

        },
        INTIS={
            - La moneda virtual Inti, cada Inti equivale a 1 sol. Se recarga y se muestra en la parte superior la cantidad solo es visible para el usuario con sesion activa. Nadie más puede verlo
        },
        PRODUCTO={
            - Cuando un cliente ve un producto y presiona sobre la card va a la vista de Detalles de producto donde sale toda la informacion completa del producto: todas sus fotos, video de tenerlo, descripcion como precios por cantidad, etc. Lugar de entrega, metodos de pago:Intis, efectivo, pago contra entrega, delivery a: X soles, etc. Ademas que puede generar un link el cual puede compartir con otra persona para que lo lleve directamente a la seccion de detalles completos del producto compartido.
            - El vendedor puede asignar el precio en monedas virtuales(INTIS)
            - El retiro de dinero <-------------------------------------------VER CULQI
        },
        FEEDBACK={
            - EL CLIENTE O VENDEDOR PUEDE ADJUNTAR IMAGENES PARA MEJORAR LA APP
        } 
    },

    CORRECCIONES={
        AVISOS={
            - LA SECCION AVISOS ES MEJOR QUE ESTE HABILITADA PARA AMBOS USUARIOS, PERO EN EL CASO DEL CLIENTE CUANDO CREA UN AVISO SOLO SE PODRÁ REACCIONAR Y NO ABRIR UN CHAT. ESTARÁ HABILITADO Y VISIBLE PARA EL VENDEDOR TAMBIEN PORQUE ES BUENO QUE ELLOS SEPAN LAS PREFERENCIAS DE LOS CLIENTES.
        }
    },
    MODO DE RECARGA={
        - Al momento de solicitar una recargar tomar una captura de su foto(no subir foto) y aautomaticamente se genera un token de 4 caracteres(CAPTCHA) valido por 15 segundos, usarlo para recargar por yape y colocar como descripcion ese token y luego subir la foto.
        - Se recomienda tener abierto yape listo para yapear al numero: 900124654 y solo colocar el token.
        - La foto subida debe cumplir con el nombre: Carlos A. Herrera Palma, fecha, token <--validado con tensorflow y AI, evitando suplantacion tal vez con movimiento de rostro para evitar que usen una fotografia
    }


}