// gcc -o buffer-overflow buffer-overflow.c

#include <stdio.h>

int main() {
  struct Data {
    char buff[ 10 ] ;
    int  flag ;
  } data = {
    "" ,
    0
  } ;

  printf( "Type any string <enter>:" ) ;
  gets( data.buff ) ;

  if ( data.flag ) {
    // strings コマンド対策 bit反転文字列で保存
    char str[] = {
      'F' ^ 0xFF ,
      'L' ^ 0xFF ,
      'A' ^ 0xFF ,
      'G' ^ 0xFF ,
      '{' ^ 0xFF ,
      'L' ^ 0xFF ,
      'o' ^ 0xFF ,
      'v' ^ 0xFF ,
      'e' ^ 0xFF ,
      'O' ^ 0xFF ,
      'v' ^ 0xFF ,
      'e' ^ 0xFF ,
      'r' ^ 0xFF ,
      'f' ^ 0xFF ,
      'l' ^ 0xFF ,
      'o' ^ 0xFF ,
      'w' ^ 0xFF ,
      's' ^ 0xFF ,
      '}' ^ 0xFF ,
      '\0'
    } ;
    for( int i = 0 ; str[i] != '\0' ; i++ )
      putchar( str[i] ^ 0xFF ) ;
    printf( "\n" ) ;
  } else {
    printf( "You enter %s\n" , data.buff ) ;
  }
  return 0 ;
}
