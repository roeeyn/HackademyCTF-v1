# TODO: quitar el archivo bandera.txt del mismo archivo del main.py
import os
from random import randint


def es_un_bot(operacion, resultado):
    try:
        resultado_evaluacion = eval(operacion)
        return resultado_evaluacion != resultado
    except:
        return True


if __name__ == "__main__":

    usuario = input("Ingresa tu nombre de usuario: ")
    num_bot = randint(1, 100)
    print(f"{'*'*20}\nRevision de bot\n{'*'*20}")
    print(f"Eres humano {usuario}?")
    print(f"Ingresa una operacion que de como resultado {num_bot}")
    print("Por ejemplo: si el numero es '10', la operacion podria ser '8+2'")
    print("No pongas las comillas")
    operacion = input(f"Operacion: ")
    if es_un_bot(operacion, num_bot):
        print("Lo siento, solo los humanos son permitidos")
    else:
        # TODO registrar al usuario
        print(
            f"Gracias por el interes {usuario}! Te notificaremos cuando el servicio este disponible"
        )
