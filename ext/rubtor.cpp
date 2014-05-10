#include <rubtor.h>

VALUE mRubtor;

void Init_rubtor()
{
  mRubtor = rb_define_module("Rubtor");
  Init_poll_select();
}

