import pygame
import sys
import random
import math

# Inicializar pygame
pygame.init()

# Definir constantes
ANCHO = 600
ALTO = 600
TAMAÑO_CELDA = 120
FILAS = 5
COLUMNAS = 5
LINEA_GROSOR = 15
CIRCULO_RADIO = 45
CIRCULO_GROSOR = 15
CRUZ_GROSOR = 15
ESPACIO = 30

# Colores
ROJO = (255, 0, 0)
AZUL = (0, 0, 255)
FONDO = (28, 170, 156)
LINEA_COLOR = (23, 145, 135)
CIRCULO_COLOR = (239, 231, 200)
CRUZ_COLOR = (66, 66, 66)
LINEA_VICTORIA_COLOR = (255, 255, 0)
MENU_COLOR = (50, 50, 50)

# Inicializar ventana
pantalla = pygame.display.set_mode((ANCHO, ALTO))
pygame.display.set_caption('Gato 5x5')
pantalla.fill(FONDO)

# Tablero
tablero = [[0 for _ in range(COLUMNAS)] for _ in range(FILAS)]

# Fuente de texto
fuente = pygame.font.Font(None, 75)

# Dibujar líneas del tablero
def dibujar_lineas():
    # Líneas horizontales
    for i in range(1, FILAS):
        pygame.draw.line(pantalla, LINEA_COLOR, (0, TAMAÑO_CELDA * i), (ANCHO, TAMAÑO_CELDA * i), LINEA_GROSOR)
    # Líneas verticales
    for j in range(1, COLUMNAS):
        pygame.draw.line(pantalla, LINEA_COLOR, (TAMAÑO_CELDA * j, 0), (TAMAÑO_CELDA * j, ALTO), LINEA_GROSOR)

# Dibujar figuras (círculo o cruz)
def dibujar_figuras():
    for fila in range(FILAS):
        for col in range(COLUMNAS):
            if tablero[fila][col] == 1:
                pygame.draw.circle(pantalla, CIRCULO_COLOR, (int(col * TAMAÑO_CELDA + TAMAÑO_CELDA / 2), int(fila * TAMAÑO_CELDA + TAMAÑO_CELDA / 2)), CIRCULO_RADIO, CIRCULO_GROSOR)
            elif tablero[fila][col] == 2:
                # Dibujar la cruz (X)
                pygame.draw.line(pantalla, CRUZ_COLOR, (col * TAMAÑO_CELDA + ESPACIO, fila * TAMAÑO_CELDA + ESPACIO), 
                                 (col * TAMAÑO_CELDA + TAMAÑO_CELDA - ESPACIO, fila * TAMAÑO_CELDA + TAMAÑO_CELDA - ESPACIO), CRUZ_GROSOR)
                pygame.draw.line(pantalla, CRUZ_COLOR, (col * TAMAÑO_CELDA + ESPACIO, fila * TAMAÑO_CELDA + TAMAÑO_CELDA - ESPACIO), 
                                 (col * TAMAÑO_CELDA + TAMAÑO_CELDA - ESPACIO, fila * TAMAÑO_CELDA + ESPACIO), CRUZ_GROSOR)

# Dibujar línea ganadora
def dibujar_linea_ganadora(coord_inicio, coord_fin):
    pygame.draw.line(pantalla, LINEA_VICTORIA_COLOR, coord_inicio, coord_fin, LINEA_GROSOR)

# Dibujar menú inicial
def mostrar_menu():
    pantalla.fill(FONDO)
    texto_titulo = fuente.render("Gato 5x5", True, MENU_COLOR)
    pantalla.blit(texto_titulo, (ANCHO // 2 - texto_titulo.get_width() // 2, 50))

    texto_opcion1 = fuente.render("1 Jugador", True, MENU_COLOR)
    texto_opcion2 = fuente.render("2 Jugadores", True, MENU_COLOR)

    pantalla.blit(texto_opcion1, (ANCHO // 2 - texto_opcion1.get_width() // 2, 250))
    pantalla.blit(texto_opcion2, (ANCHO // 2 - texto_opcion2.get_width() // 2, 350))

    pygame.display.update()

# Dibujar mensaje de ganador o empate
def mostrar_mensaje(mensaje):
    pantalla.fill(FONDO)
    texto_mensaje = fuente.render(mensaje, True, MENU_COLOR)
    pantalla.blit(texto_mensaje, (ANCHO // 2 - texto_mensaje.get_width() // 2, ALTO // 2 - texto_mensaje.get_height() // 2))
    pygame.display.update()
    pygame.time.wait(2000)

# Marcar celda
def marcar_celda(fila, col, jugador):
    tablero[fila][col] = jugador

# Comprobar si la celda está vacía
def celda_disponible(fila, col):
    return tablero[fila][col] == 0

# Comprobar si el tablero está lleno
def tablero_lleno():
    for fila in range(FILAS):
        for col in range(COLUMNAS):
            if tablero[fila][col] == 0:
                return False
    return True

# Comprobar si hay un ganador y obtener las coordenadas de la línea ganadora
def hay_ganador(jugador):
    # Comprobar filas
    for fila in range(FILAS):
        for col in range(COLUMNAS - 3):
            if tablero[fila][col] == tablero[fila][col + 1] == tablero[fila][col + 2] == tablero[fila][col + 3] == jugador:
                coord_inicio = (col * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, fila * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                coord_fin = ((col + 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, fila * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                return True, coord_inicio, coord_fin
    # Comprobar columnas
    for col in range(COLUMNAS):
        for fila in range(FILAS - 3):
            if tablero[fila][col] == tablero[fila + 1][col] == tablero[fila + 2][col] == tablero[fila + 3][col] == jugador:
                coord_inicio = (col * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, fila * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                coord_fin = (col * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, (fila + 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                return True, coord_inicio, coord_fin
    # Comprobar diagonales (izquierda a derecha)
    for fila in range(FILAS - 3):
        for col in range(COLUMNAS - 3):
            if tablero[fila][col] == tablero[fila + 1][col + 1] == tablero[fila + 2][col + 2] == tablero[fila + 3][col + 3] == jugador:
                coord_inicio = (col * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, fila * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                coord_fin = ((col + 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, (fila + 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                return True, coord_inicio, coord_fin
    # Comprobar diagonales (derecha a izquierda)
    for fila in range(FILAS - 3):
        for col in range(3, COLUMNAS):
            if tablero[fila][col] == tablero[fila + 1][col - 1] == tablero[fila + 2][col - 2] == tablero[fila + 3][col - 3] == jugador:
                coord_inicio = (col * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, fila * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                coord_fin = ((col - 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2, (fila + 3) * TAMAÑO_CELDA + TAMAÑO_CELDA // 2)
                return True, coord_inicio, coord_fin
    return False, None, None

# Función de evaluación del tablero
def evaluar_tablero(tablero, jugador):
    # Verificar si hay una victoria
    ganador, _, _ = hay_ganador(jugador)
    if ganador:
        return 100
    ganador, _, _ = hay_ganador(3 - jugador)
    if ganador:
        return -100
    return 0

# Implementación del algoritmo Minimax con poda alfa-beta
def minimax(tablero, profundidad, alfa, beta, maximizando):
    puntuacion = evaluar_tablero(tablero, 2)
    if abs(puntuacion) == 100 or tablero_lleno() or profundidad == 0:
        return puntuacion

    if maximizando:
        max_eval = -math.inf
        for fila in range(FILAS):
            for col in range(COLUMNAS):
                if celda_disponible(fila, col):
                    tablero[fila][col] = 2
                    eval = minimax(tablero, profundidad - 1, alfa, beta, False)
                    tablero[fila][col] = 0
                    max_eval = max(max_eval, eval)
                    alfa = max(alfa, eval)
                    if beta <= alfa:
                        break
        return max_eval
    else:
        min_eval = math.inf
        for fila in range(FILAS):
            for col in range(COLUMNAS):
                if celda_disponible(fila, col):
                    tablero[fila][col] = 1
                    eval = minimax(tablero, profundidad - 1, alfa, beta, True)
                    tablero[fila][col] = 0
                    min_eval = min(min_eval, eval)
                    beta = min(beta, eval)
                    if beta <= alfa:
                        break
        return min_eval

# Función para obtener el mejor movimiento de la IA
def mejor_movimiento_ia():
    mejor_valor = -math.inf
    mejor_movimiento = None
    for fila in range(FILAS):
        for col in range(COLUMNAS):
            if celda_disponible(fila, col):
                tablero[fila][col] = 2
                valor_movimiento = minimax(tablero, 4, -math.inf, math.inf, False)  # Ajustar profundidad según el nivel de dificultad
                tablero[fila][col] = 0
                if valor_movimiento > mejor_valor:
                    mejor_valor = valor_movimiento
                    mejor_movimiento = (fila, col)
    return mejor_movimiento

# Movimiento de la IA
def movimiento_ia():
    fila, col = mejor_movimiento_ia()
    marcar_celda(fila, col, 2)

# Función para reiniciar el juego
def reanudar_juego():
    global tablero, juego_terminado, jugador
    tablero = [[0 for _ in range(COLUMNAS)] for _ in range(FILAS)]
    pantalla.fill(FONDO)
    dibujar_lineas()
    juego_terminado = False
    jugador = 1

# Función principal del menú
def menu():
    global modo_juego
    mostrar_menu()
    seleccionando = True
    while seleccionando:
        for evento in pygame.event.get():
            if evento.type == pygame.QUIT:
                pygame.quit()
                sys.exit()
            if evento.type == pygame.MOUSEBUTTONDOWN:
                x, y = evento.pos
                if 250 <= y <= 300:  # 1 Jugador
                    modo_juego = 1
                    seleccionando = False
                elif 350 <= y <= 400:  # 2 Jugadores
                    modo_juego = 2
                    seleccionando = False
    reanudar_juego()

# Variables de juego
jugador = 1
juego_terminado = False
modo_juego = 1

# Iniciar en el menú
menu()
dibujar_lineas()

# Bucle principal del juego
while True:
    for evento in pygame.event.get():
        if evento.type == pygame.QUIT:
            pygame.quit()
            sys.exit()

        if evento.type == pygame.MOUSEBUTTONDOWN and not juego_terminado:
            x, y = evento.pos
            fila = y // TAMAÑO_CELDA
            col = x // TAMAÑO_CELDA

            if celda_disponible(fila, col):
                marcar_celda(fila, col, jugador)
                ganador, coord_inicio, coord_fin = hay_ganador(jugador)
                if ganador:
                    juego_terminado = True
                    dibujar_linea_ganadora(coord_inicio, coord_fin)
                    mostrar_mensaje(f"Jugador {jugador} gana!")
                    menu()  # Regresar al menú después del juego

                jugador = 2 if jugador == 1 else 1

                if modo_juego == 1 and jugador == 2 and not juego_terminado:
                    movimiento_ia()
                    ganador, coord_inicio, coord_fin = hay_ganador(2)
                    if ganador:
                        juego_terminado = True
                        dibujar_linea_ganadora(coord_inicio, coord_fin)
                        mostrar_mensaje("¡La computadora gana!")
                        menu()  # Regresar al menú después del juego

                    jugador = 1

                if tablero_lleno() and not juego_terminado:
                    juego_terminado = True
                    mostrar_mensaje("¡Empate!")
                    menu()  # Regresar al menú después del juego

            dibujar_figuras()

        if evento.type == pygame.KEYDOWN:
            if evento.key == pygame.K_r:
                reanudar_juego()

    pygame.display.update()
