#include "rubtor_poll_select.h"

void Init_poll_select()
{
  VALUE cPollSelect = rb_define_class_under(mRubtor, "PollSelect", rbObject);
}
