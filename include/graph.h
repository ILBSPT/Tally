#ifndef GRAPH_
#define GRAPH_

#include "minithread_api.h"

//graph
extern int** G;
extern int* Glen; //number of edges of every node
extern int N_G;

struct graph_struct{
	struct gcctally_module_wrapper module;
	int hops;
};

void load_graph(char*);

#endif //GRAPH_
