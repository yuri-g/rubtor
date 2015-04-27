#include "ruby.h"

static VALUE rb_mRubtor;
static VALUE rb_cRubtorWrapper;

void
Init_test()
{
  rb_mRubtor = rb_define_module("Rubtor");
  rb_cRubtorWrapper = rb_define_class_under(rb_mRubtor, "Wrapper", rb_cObject);
}

