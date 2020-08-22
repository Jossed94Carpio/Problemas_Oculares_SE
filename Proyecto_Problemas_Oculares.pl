%Enfermedades
enfermedad(1, 'ASTIGMATISMO').
enfermedad(2, 'CATARATA').
enfermedad(3, 'CONJUNTIVITIS').

%Sintomas Astigmatismo
sintoma(sa1, 'visión borrosa').
sintoma(sa2, 'dolor de cabeza').
sintoma(sa3, 'la percepción de ver las imágenes distorcionadas(cambiadas de forma)').
sintoma(sa4, 'fatiga o cansanció visual').
sintoma(sa5, 'guiños continuos').
sintoma(sa6, 'la percepción de visión doble').
sintoma(sa7, 'dificultad de ver en las noches').
sintoma(sa8, 'mareos').

%Sintomas Catarata
sintoma(sc1, 'la sensación de una nube que obstaculiza la visión y suele desaparecer').
sintoma(sc2, 'deterioro en la visión lejana').
sintoma(sc3, 'la necesidad de más luz de la normal para leer').
sintoma(sc4, 'la percepción de ver los colores desteñidos').
sintoma(sc5, 'la percepción de destellos al entrar en contacto con la luz').
sintoma(sc6, 'deslumbramiento o resplandores al conducir o leer').
sintoma(sc7, 'la percepción de circulos alrededor de las luces').
sintoma(sc8, 'vizualización de puntos negros al exponerse a una gran iluminación').

%Sintomas Conjuntivitis
sintoma(scj1, 'ojos rojos').
sintoma(scj2, 'picazón en los ojos').
sintoma(scj3, 'secreción acuosa (humedad) en los ojos').
sintoma(scj4, 'la sensación de un cuerpo extraño en el ojo').
sintoma(scj5, 'limitacion de movimientos oculares').
sintoma(scj6, 'molestias al exponerse a la luz').
sintoma(scj7, 'lagrimeo continuo').
sintoma(scj8, 'malestar en los parpados').

msj_inicio:-
    write('\n                                    ...::::SISTEMA VISUAL::::...\n\n'),
    write('                                         PROBLEMAS OCULARES\n\n'),
    write('                               ASTIGMATISMO - CATARATA - CONJUNTIVITIS\n\n'),
    write('Este sistema experto le permitira determinar si usted presenta uno de los tres problemas oculares en base a los sintomas que presente\n\n').

preguntas_astigmatismo:-
    write('\n  ¿Presenta '),sintoma(sa1,A),write(A),write('?\n\n'),opcion(V1),(V1==si,C1=1;V1==no,C1=0),
    write('\n  ¿Presenta '),sintoma(sa2,B),write(B),write('?\n\n'),opcion(V2),(V2==si,C2=1;V2==no,C2=0),
    write('\n  ¿Presenta '),sintoma(sa3,C),write(C),write('?\n\n'),opcion(V3),(V3==si,C3=1;V3==no,C3=0),
    write('\n  ¿Presenta '),sintoma(sa4,D),write(D),write('?\n\n'),opcion(V4),(V4==si,C4=1;V4==no,C4=0),
    write('\n  ¿Presenta '),sintoma(sa5,E),write(E),write('?\n\n'),opcion(V5),(V5==si,C5=1;V5==no,C5=0),
    write('\n  ¿Presenta '),sintoma(sa6,F),write(F),write('?\n\n'),opcion(V6),(V6==si,C6=1;V6==no,C6=0),
    write('\n  ¿Presenta '),sintoma(sa7,G),write(G),write('?\n\n'),opcion(V7),(V7==si,C7=1;V7==no,C7=0),
    write('\n  ¿Presenta '),sintoma(sa8,H),write(H),write('?\n\n'),opcion(V8),(V8==si,C8=1;V8==no,C8=0),
    TOTAL is C1+C2+C3+C4+C5+C6+C7+C8,
    control_Ast(TOTAL).

preguntas_catarata:-
    write('\n  ¿Presenta '),sintoma(sc1,A),write(A),write('?\n\n'),opcion(V1),(V1==si,C1=1;V1==no,C1=0),
    write('\n  ¿Presenta '),sintoma(sc2,B),write(B),write('?\n\n'),opcion(V2),(V2==si,C2=1;V2==no,C2=0),
    write('\n  ¿Presenta '),sintoma(sc3,C),write(C),write('?\n\n'),opcion(V3),(V3==si,C3=1;V3==no,C3=0),
    write('\n  ¿Presenta '),sintoma(sc4,D),write(D),write('?\n\n'),opcion(V4),(V4==si,C4=1;V4==no,C4=0),
    write('\n  ¿Presenta '),sintoma(sc5,E),write(E),write('?\n\n'),opcion(V5),(V5==si,C5=1;V5==no,C5=0),
    write('\n  ¿Presenta '),sintoma(sc6,F),write(F),write('?\n\n'),opcion(V6),(V6==si,C6=1;V6==no,C6=0),
    write('\n  ¿Presenta '),sintoma(sc7,G),write(G),write('?\n\n'),opcion(V7),(V7==si,C7=1;V7==no,C7=0),
    write('\n  ¿Presenta '),sintoma(sc8,H),write(H),write('?\n\n'),opcion(V8),(V8==si,C8=1;V8==no,C8=0),
    TOTAL is C1+C2+C3+C4+C5+C6+C7+C8,
    control_Cat(TOTAL).

preguntas_conjuntivitis:-
    write('\n  ¿Presenta '),sintoma(scj1,A),write(A),write('?\n\n'),opcion(V1),(V1==si,C1=1;V1==no,C1=0),
    write('\n  ¿Presenta '),sintoma(scj2,B),write(B),write('?\n\n'),opcion(V2),(V2==si,C2=1;V2==no,C2=0),
    write('\n  ¿Presenta '),sintoma(scj3,C),write(C),write('?\n\n'),opcion(V3),(V3==si,C3=1;V3==no,C3=0),
    write('\n  ¿Presenta '),sintoma(scj4,D),write(D),write('?\n\n'),opcion(V4),(V4==si,C4=1;V4==no,C4=0),
    write('\n  ¿Presenta '),sintoma(scj5,E),write(E),write('?\n\n'),opcion(V5),(V5==si,C5=1;V5==no,C5=0),
    write('\n  ¿Presenta '),sintoma(scj6,F),write(F),write('?\n\n'),opcion(V6),(V6==si,C6=1;V6==no,C6=0),
    write('\n  ¿Presenta '),sintoma(scj7,G),write(G),write('?\n\n'),opcion(V7),(V7==si,C7=1;V7==no,C7=0),
    write('\n  ¿Presenta '),sintoma(scj8,H),write(H),write('?\n\n'),opcion(V8),(V8==si,C8=1;V8==no,C8=0),
    TOTAL is C1+C2+C3+C4+C5+C6+C7+C8,
    control_Con(TOTAL).

control_Ast(T):-T>=4,imprimirDP(1,_);T<4,preguntas_catarata.
control_Cat(T):-T>=3,imprimirDP(2,_);T<3,preguntas_conjuntivitis.
control_Con(T):-T>=2,imprimirDP(3,_);T<2,imprimirDN.

imprimirDN:-
    write('\n\n\n\n  :::::::::::::::::::::::::::::::::::::DIAGNOSTICO::::::::::::::::::::::::::::\n\n    Sus síntomas no se relacionan a las enfermedades que reconoce el sistema\n\n  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n\n\n').

imprimirDP(X,Y):-
    write('\n\n\n\n                  :::::::::::::::::::::DIAGNOSTICO::::::::::::::::::::\n\n                    Usted presenta un posible cuadro de '),
    enfermedad(X,Y),write(Y),
    write('\n\n                  ::::::::::::::::::::::::::::::::::::::::::::::::::::'),nl,nl,nl.

opcion(V):-
    write('     [1] SI\n'),
    write('     [2] NO\n\n'),
    write('  Ingrese un valor:'),
    read(Valor),
    opc(Valor,V).

opc(1, si).
opc(2, no).
opc(Val,V):-Val\=1,Val\=2,
    write('\n\n      VALOR INCORRECTO!!\n\n  Vuelva a ingresar un valor\n\n'),
    opcion(V2),V=V2.

realizar_NC:-
    write('\n\n     ...::::SISTEMA VISUAL::::...\n\n  Desea realizar una nueva consulta?\n\n'),opcion(NC),NC==si,ejecutar.


ejecutar:-msj_inicio,preguntas_astigmatismo,realizar_NC.





