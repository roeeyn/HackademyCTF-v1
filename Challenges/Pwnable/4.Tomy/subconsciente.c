
#include <stdio.h>
#include <string.h>
#include <unistd.h>

void imprimir_bandera() {
  /* uses kind of ROT3 to "hide" the flag */
  /* char rot_str[] = "mblue{y4_t3_3st4s_v0lv13nd0_bu3n0_3n_35t0!!}"; */
  char rot_str[] = "j_irbxv1\\q0\\0pq1p\\s-is.0ka-\\_r0k-\\0k\\02q-z";

  for ( int i = 0; i < strlen(rot_str); i++ ) {
    rot_str[i] = rot_str[i] + 3;
  }

  printf("%s\n", rot_str);
}


int main() {
  printf("Bienvenido al cerebro de Tomy\n");
  printf("Para poder entrar a su subconsciente, necesitamos que se duerma\n");
  sleep(3);
  printf("Parece que ya está bostezando\n");
  sleep(5);
  printf("Se está resistiendo un poco\n");
  sleep(7);
  printf("Creo que estamos cerca\n");
  sleep(10);
  printf("Ya casi...\n");
  sleep(20);
  printf("Listo! ya se quedó dormido\n");
  printf("Pero hay que esperar a que entre en el sueño profundo\n");
  sleep(20); 
  printf("Creo que deberíamos buscar otra forma de hacer esto...\n");
  sleep(360000);
  printf("Bien! Ya está en el sueño profundo, ésta es la bandera\n");
  imprimir_bandera();

  return 0;
}
