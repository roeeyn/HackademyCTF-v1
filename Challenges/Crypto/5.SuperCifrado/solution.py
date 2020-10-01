import base64


def magic(cryptic):
    result = "".join(
        c.lower() if c.isupper() else c.upper() if c.islower() else c for c in cryptic
    )
    return result


def super_cifrar(cadena):
    return str.encode(magic(str(base64.b64encode(cadena))))


def decode_base64(cadena):
    return base64.b64decode(cadena)


bandera = str.encode("mblue{f3l1c1d4d35_p0r_tu_1ng3n13r1a_1nv3rs4!}")

bandera_cifrada = super_cifrar(bandera)
print(bandera_cifrada[2:-1])

descifrada = decode_base64(magic(str(bandera_cifrada[2:-1]))[2:-1])
print(descifrada)

if __name__ == "__main__":
    bandera_cifrada = b"BwjSDwv7zJnSmwmXzdrKmZvFCdbYx3r1xZfUzZnUmtnYmwfFmw52m3jZncf9"
    # TODO comprobar que la bandera original no se puede obtener

    descifrada = decode_base64(magic(str(bandera_cifrada))[2:-1])
