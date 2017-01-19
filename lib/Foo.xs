#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#include "ppport.h"

MODULE = Foo  PACKAGE = Foo

PROTOTYPES: DISABLE

void
hello()
CODE:
{
  SV* const hello = sv_2mortal(newSVpv("hello", 5));
  XPUSHs(hello);
  XSRETURN(1);
}
