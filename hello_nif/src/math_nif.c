#include "erl_nif.h"

static ERL_NIF_TERM dot_product_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    ERL_NIF_TERM list1 = argv[0];
    ERL_NIF_TERM list2 = argv[1];
    
    unsigned int list1_size, list2_size;
    ERL_NIF_TERM head1, tail1, head2, tail2;
    
    if (!enif_get_list_length(env, list1, &list1_size)) {
        return enif_make_badarg(env);
    }
    if (!enif_get_list_length(env, list2, &list2_size)) {
        return enif_make_badarg(env);
    }
    if (list1_size != list2_size) {
        return enif_make_badarg(env);
    }
    
    double x1, x2, ret;
    
    ret = 0.0;
    while(enif_get_list_cell(env, list1, &head1, &tail1) && enif_get_list_cell(env, list2, &head2, &tail2)) {
        if(!enif_get_double(env, head1, &x1)) {
          return enif_make_badarg(env);    
        }
        if(!enif_get_double(env, head2, &x2)) {
          return enif_make_badarg(env);
        }
        list1 = tail1;
        list2 = tail2;
        ret += x1 * x2;
    }
    
    return enif_make_double(env, ret);
}

static ErlNifFunc nif_funcs[] =
{
    {"dot_product", 2, dot_product_nif}
};

ERL_NIF_INIT(Elixir.HelloNif.Math,nif_funcs,NULL,NULL,NULL,NULL)
