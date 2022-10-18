// https://www.codewars.com/kata/530e15517bc88ac656000716
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

char *rot13(const char *src)
{
  int length = strlen(src)+1;
  char *output = (char *) malloc(sizeof(src) * length);
  for(int i=0; i<length; i++) {
    if((src[i] >= 'A' && src[i] <= 'M') || (src[i] >= 'a' && src[i] <= 'm')) {
      output[i] = src[i]+13;
      continue;
    }
    if((src[i] >= 'N' && src[i] <= 'Z') || (src[i] >= 'n' && src[i] <= 'z')) {
      output[i] = src[i]-13;
      continue;
    }
    output[i] = src[i];
  }
  output[length] = '\0';
  return output;
}
