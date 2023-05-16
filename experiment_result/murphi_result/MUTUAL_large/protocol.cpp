/******************************
  Program "protocol.m" compiled by "Caching Murphi Release 5.5.0"

  Murphi Last Compiled date: "Mar 12 2023"
 ******************************/

/********************
  Parameter
 ********************/
#define MURPHI_VERSION "Caching Murphi Release 5.5.0"
#define MURPHI_DATE "Mar 12 2023"
#define PROTOCOL_NAME "protocol"
#define BITS_IN_WORLD 136
#define ALIGN
#define HASHC

/********************
  Include
 ********************/
#include "mu_prolog.hpp"

/********************
  Decl declaration
 ********************/

class mu_1_state: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_state& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_state& val)
  {
    if (val.defined())
      return ( s << mu_1_state::values[ int(val) - 1] );
    else return ( s << "Undefined" );
  };

  mu_1_state (const char *name, int os): mu__byte(1, 4, 3, name, os) {};
  mu_1_state (void): mu__byte(1, 4, 3) {};
  mu_1_state (int val): mu__byte(1, 4, 3, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -1]; };
  virtual void Permute(PermSet& Perm, int i);
  virtual void SimpleCanonicalize(PermSet& Perm);
  virtual void Canonicalize(PermSet& Perm);
  virtual void SimpleLimit(PermSet& Perm);
  virtual void ArrayLimit(PermSet& Perm);
  virtual void Limit(PermSet& Perm);
  virtual void MultisetLimit(PermSet& Perm);
  virtual void MultisetSort() {};
  void print_statistic() {};
  virtual void print()
  {
    if (defined())
      cout << name << ":" << values[ value() -1] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_state::values[] = {"I","T","C","E",NULL };

/*** end of enum declaration ***/
mu_1_state mu_1_state_undefined_var;

class mu_1_client: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_client& val) { return mu__byte::operator=((int) val); };
  mu_1_client (const char *name, int os): mu__byte(1, 16, 5, name, os) {};
  mu_1_client (void): mu__byte(1, 16, 5) {};
  mu_1_client (int val): mu__byte(1, 16, 5, "Parameter or function result.", 0)
  {
    operator=(val);
  };
  char * Name() { return tsprintf("%d",value()); };
  virtual void Permute(PermSet& Perm, int i);
  virtual void SimpleCanonicalize(PermSet& Perm);
  virtual void Canonicalize(PermSet& Perm);
  virtual void SimpleLimit(PermSet& Perm);
  virtual void ArrayLimit(PermSet& Perm);
  virtual void Limit(PermSet& Perm);
  virtual void MultisetLimit(PermSet& Perm);
  virtual void MultisetSort() {};
  void print_statistic() {};
};

/*** end of subrange decl ***/
mu_1_client mu_1_client_undefined_var;

class mu_1__type_0
{
 public:
  mu_1_state array[ 16 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_0 (const char *n, int os) { set_self(n, os); };
  mu_1__type_0 ( void ) {};
  virtual ~mu_1__type_0 ();
  mu_1_state& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 16 ) )
      return array[ index - 1 ];
    else {
      if (index==UNDEFVAL) 
	Error.Error("Indexing to %s using an undefined value.", name);
      else
	Error.Error("%d not in index range of %s.", index, name);
      return array[0];
    }
#else
    return array[ index - 1 ];
#endif
  };
  mu_1__type_0& operator= (const mu_1__type_0& from)
  {
    for (int i = 0; i < 16; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<16; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<16; i++) {
      w = Compare(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
  virtual void Permute(PermSet& Perm, int i);
  virtual void SimpleCanonicalize(PermSet& Perm);
  virtual void Canonicalize(PermSet& Perm);
  virtual void SimpleLimit(PermSet& Perm);
  virtual void ArrayLimit(PermSet& Perm);
  virtual void Limit(PermSet& Perm);
  virtual void MultisetLimit(PermSet& Perm);
  virtual void MultisetSort()
  {
    for (int i=0; i<16; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<16; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 16; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 16; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 16; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 16; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 16; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 16; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_0::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_0::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_0::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 16; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
    delete[] s;
  }
};
mu_1__type_0::~mu_1__type_0()
{
}
/*** end array declaration ***/
mu_1__type_0 mu_1__type_0_undefined_var;

const int mu_clientNUMS = 16;
const int mu_I = 1;
const int mu_T = 2;
const int mu_C = 3;
const int mu_E = 4;
/*** Variable declaration ***/
mu_1__type_0 mu_n("n",0);

/*** Variable declaration ***/
mu_0_boolean mu_x("x",128);





/********************
  The world
 ********************/
void world_class::clear()
{
  mu_n.clear();
  mu_x.clear();
}
void world_class::undefine()
{
  mu_n.undefine();
  mu_x.undefine();
}
void world_class::reset()
{
  mu_n.reset();
  mu_x.reset();
}
void world_class::print()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_n.print();
  mu_x.print();
    num_calls--;
}
}
void world_class::print_statistic()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_n.print_statistic();
  mu_x.print_statistic();
    num_calls--;
}
}
void world_class::print_diff( state *prevstate )
{
  if ( prevstate != NULL )
  {
    mu_n.print_diff(prevstate);
    mu_x.print_diff(prevstate);
  }
  else
print();
}
void world_class::to_state(state *newstate)
{
  mu_n.to_state( newstate );
  mu_x.to_state( newstate );
}
void world_class::setstate(state *thestate)
{
}


/********************
  Rule declarations
 ********************/
/******************** RuleBase0 ********************/
class RuleBase0
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return tsprintf("Idle, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return (mu_n[mu_i]) == (mu_E);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 0;
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    while (what_rule < 16 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_n[mu_i]) == (mu_E)) {
		if ( ( TRUE  ) )
		  return;
		else
		  what_rule++;
	      }
	      else
		what_rule += 1;
	}
	else
	  what_rule += 1;
    r = what_rule - 0;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
mu_n[mu_i] = mu_I;
mu_x = mu_true;
  };

};
/******************** RuleBase1 ********************/
class RuleBase1
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return tsprintf("Exit, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return (mu_n[mu_i]) == (mu_C);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 16;
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    while (what_rule < 32 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_n[mu_i]) == (mu_C)) {
		if ( ( TRUE  ) )
		  return;
		else
		  what_rule++;
	      }
	      else
		what_rule += 1;
	}
	else
	  what_rule += 1;
    r = what_rule - 16;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
mu_n[mu_i] = mu_E;
  };

};
/******************** RuleBase2 ********************/
class RuleBase2
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return tsprintf("Crit, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
bool mu__boolexpr1;
  if (!((mu_n[mu_i]) == (mu_T))) mu__boolexpr1 = FALSE ;
  else {
  mu__boolexpr1 = ((mu_x) == (mu_true)) ; 
}
    return mu__boolexpr1;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 32;
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    while (what_rule < 48 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr2;
  if (!((mu_n[mu_i]) == (mu_T))) mu__boolexpr2 = FALSE ;
  else {
  mu__boolexpr2 = ((mu_x) == (mu_true)) ; 
}
	      if (mu__boolexpr2) {
		if ( ( TRUE  ) )
		  return;
		else
		  what_rule++;
	      }
	      else
		what_rule += 1;
	}
	else
	  what_rule += 1;
    r = what_rule - 32;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
mu_n[mu_i] = mu_C;
mu_x = mu_false;
  };

};
/******************** RuleBase3 ********************/
class RuleBase3
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return tsprintf("Try, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    return (mu_n[mu_i]) == (mu_I);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 48;
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    while (what_rule < 64 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_n[mu_i]) == (mu_I)) {
		if ( ( TRUE  ) )
		  return;
		else
		  what_rule++;
	      }
	      else
		what_rule += 1;
	}
	else
	  what_rule += 1;
    r = what_rule - 48;
    mu_i.value((r % 16) + 1);
    r = r / 16;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_i;
    mu_i.value((r % 16) + 1);
    r = r / 16;
mu_n[mu_i] = mu_T;
  };

};
class NextStateGenerator
{
  RuleBase0 R0;
  RuleBase1 R1;
  RuleBase2 R2;
  RuleBase3 R3;
public:
void SetNextEnabledRule(unsigned & what_rule)
{
  category = CONDITION;
  if (what_rule<16)
    { R0.NextRule(what_rule);
      if (what_rule<16) return; }
  if (what_rule>=16 && what_rule<32)
    { R1.NextRule(what_rule);
      if (what_rule<32) return; }
  if (what_rule>=32 && what_rule<48)
    { R2.NextRule(what_rule);
      if (what_rule<48) return; }
  if (what_rule>=48 && what_rule<64)
    { R3.NextRule(what_rule);
      if (what_rule<64) return; }
}
bool Condition(unsigned r)
{
  category = CONDITION;
  if (r<=15) return R0.Condition(r-0);
  if (r>=16 && r<=31) return R1.Condition(r-16);
  if (r>=32 && r<=47) return R2.Condition(r-32);
  if (r>=48 && r<=63) return R3.Condition(r-48);
Error.Notrace("Internal: NextStateGenerator -- checking condition for nonexisting rule.");
return 0;}
void Code(unsigned r)
{
  if (r<=15) { R0.Code(r-0); return; } 
  if (r>=16 && r<=31) { R1.Code(r-16); return; } 
  if (r>=32 && r<=47) { R2.Code(r-32); return; } 
  if (r>=48 && r<=63) { R3.Code(r-48); return; } 
}
int Priority(unsigned short r)
{
  if (r<=15) { return R0.Priority(); } 
  if (r>=16 && r<=31) { return R1.Priority(); } 
  if (r>=32 && r<=47) { return R2.Priority(); } 
  if (r>=48 && r<=63) { return R3.Priority(); } 
return 0;}
char * Name(unsigned r)
{
  if (r<=15) return R0.Name(r-0);
  if (r>=16 && r<=31) return R1.Name(r-16);
  if (r>=32 && r<=47) return R2.Name(r-32);
  if (r>=48 && r<=63) return R3.Name(r-48);
  return NULL;
}
};
const unsigned numrules = 64;

/********************
  parameter
 ********************/
#define RULES_IN_WORLD 64


/********************
  Startstate records
 ********************/
/******************** StartStateBase0 ********************/
class StartStateBase0
{
public:
  char * Name(unsigned short r)
  {
    return tsprintf("Init");
  }
  void Code(unsigned short r)
  {
{
for(int mu_i = 1; mu_i <= 16; mu_i++) {
mu_n[mu_i] = mu_I;
};
};
mu_x = mu_true;
  };

};
class StartStateGenerator
{
  StartStateBase0 S0;
public:
void Code(unsigned short r)
{
  if (r<=0) { S0.Code(r-0); return; }
}
char * Name(unsigned short r)
{
  if (r<=0) return S0.Name(r-0);
  return NULL;
}
};
const rulerec startstates[] = {
{ NULL, NULL, NULL, FALSE},
};
unsigned short StartStateManager::numstartstates = 1;

/********************
  Invariant records
 ********************/
int mu__invariant_3( const mu_1_client &mu_j, const mu_1_client &mu_i) // Invariant "coherence"
{
bool mu__boolexpr4;
  if (!((mu_i) != (mu_j))) mu__boolexpr4 = TRUE ;
  else {
bool mu__boolexpr5;
  if (!((mu_n[mu_i]) == (mu_C))) mu__boolexpr5 = TRUE ;
  else {
  mu__boolexpr5 = ((mu_n[mu_j]) != (mu_C)) ; 
}
  mu__boolexpr4 = (mu__boolexpr5) ; 
}
return mu__boolexpr4;
};

bool mu__condition_8() // Condition for Rule "coherence, j:1, i:1"
{
  return mu__invariant_3( 1, 1 );
}

bool mu__condition_9() // Condition for Rule "coherence, j:1, i:2"
{
  return mu__invariant_3( 1, 2 );
}

bool mu__condition_10() // Condition for Rule "coherence, j:1, i:3"
{
  return mu__invariant_3( 1, 3 );
}

bool mu__condition_11() // Condition for Rule "coherence, j:1, i:4"
{
  return mu__invariant_3( 1, 4 );
}

bool mu__condition_12() // Condition for Rule "coherence, j:1, i:5"
{
  return mu__invariant_3( 1, 5 );
}

bool mu__condition_13() // Condition for Rule "coherence, j:1, i:6"
{
  return mu__invariant_3( 1, 6 );
}

bool mu__condition_14() // Condition for Rule "coherence, j:1, i:7"
{
  return mu__invariant_3( 1, 7 );
}

bool mu__condition_15() // Condition for Rule "coherence, j:1, i:8"
{
  return mu__invariant_3( 1, 8 );
}

bool mu__condition_16() // Condition for Rule "coherence, j:1, i:9"
{
  return mu__invariant_3( 1, 9 );
}

bool mu__condition_17() // Condition for Rule "coherence, j:1, i:10"
{
  return mu__invariant_3( 1, 10 );
}

bool mu__condition_18() // Condition for Rule "coherence, j:1, i:11"
{
  return mu__invariant_3( 1, 11 );
}

bool mu__condition_19() // Condition for Rule "coherence, j:1, i:12"
{
  return mu__invariant_3( 1, 12 );
}

bool mu__condition_20() // Condition for Rule "coherence, j:1, i:13"
{
  return mu__invariant_3( 1, 13 );
}

bool mu__condition_21() // Condition for Rule "coherence, j:1, i:14"
{
  return mu__invariant_3( 1, 14 );
}

bool mu__condition_22() // Condition for Rule "coherence, j:1, i:15"
{
  return mu__invariant_3( 1, 15 );
}

bool mu__condition_23() // Condition for Rule "coherence, j:1, i:16"
{
  return mu__invariant_3( 1, 16 );
}

bool mu__condition_25() // Condition for Rule "coherence, j:2, i:1"
{
  return mu__invariant_3( 2, 1 );
}

bool mu__condition_26() // Condition for Rule "coherence, j:2, i:2"
{
  return mu__invariant_3( 2, 2 );
}

bool mu__condition_27() // Condition for Rule "coherence, j:2, i:3"
{
  return mu__invariant_3( 2, 3 );
}

bool mu__condition_28() // Condition for Rule "coherence, j:2, i:4"
{
  return mu__invariant_3( 2, 4 );
}

bool mu__condition_29() // Condition for Rule "coherence, j:2, i:5"
{
  return mu__invariant_3( 2, 5 );
}

bool mu__condition_30() // Condition for Rule "coherence, j:2, i:6"
{
  return mu__invariant_3( 2, 6 );
}

bool mu__condition_31() // Condition for Rule "coherence, j:2, i:7"
{
  return mu__invariant_3( 2, 7 );
}

bool mu__condition_32() // Condition for Rule "coherence, j:2, i:8"
{
  return mu__invariant_3( 2, 8 );
}

bool mu__condition_33() // Condition for Rule "coherence, j:2, i:9"
{
  return mu__invariant_3( 2, 9 );
}

bool mu__condition_34() // Condition for Rule "coherence, j:2, i:10"
{
  return mu__invariant_3( 2, 10 );
}

bool mu__condition_35() // Condition for Rule "coherence, j:2, i:11"
{
  return mu__invariant_3( 2, 11 );
}

bool mu__condition_36() // Condition for Rule "coherence, j:2, i:12"
{
  return mu__invariant_3( 2, 12 );
}

bool mu__condition_37() // Condition for Rule "coherence, j:2, i:13"
{
  return mu__invariant_3( 2, 13 );
}

bool mu__condition_38() // Condition for Rule "coherence, j:2, i:14"
{
  return mu__invariant_3( 2, 14 );
}

bool mu__condition_39() // Condition for Rule "coherence, j:2, i:15"
{
  return mu__invariant_3( 2, 15 );
}

bool mu__condition_40() // Condition for Rule "coherence, j:2, i:16"
{
  return mu__invariant_3( 2, 16 );
}

bool mu__condition_42() // Condition for Rule "coherence, j:3, i:1"
{
  return mu__invariant_3( 3, 1 );
}

bool mu__condition_43() // Condition for Rule "coherence, j:3, i:2"
{
  return mu__invariant_3( 3, 2 );
}

bool mu__condition_44() // Condition for Rule "coherence, j:3, i:3"
{
  return mu__invariant_3( 3, 3 );
}

bool mu__condition_45() // Condition for Rule "coherence, j:3, i:4"
{
  return mu__invariant_3( 3, 4 );
}

bool mu__condition_46() // Condition for Rule "coherence, j:3, i:5"
{
  return mu__invariant_3( 3, 5 );
}

bool mu__condition_47() // Condition for Rule "coherence, j:3, i:6"
{
  return mu__invariant_3( 3, 6 );
}

bool mu__condition_48() // Condition for Rule "coherence, j:3, i:7"
{
  return mu__invariant_3( 3, 7 );
}

bool mu__condition_49() // Condition for Rule "coherence, j:3, i:8"
{
  return mu__invariant_3( 3, 8 );
}

bool mu__condition_50() // Condition for Rule "coherence, j:3, i:9"
{
  return mu__invariant_3( 3, 9 );
}

bool mu__condition_51() // Condition for Rule "coherence, j:3, i:10"
{
  return mu__invariant_3( 3, 10 );
}

bool mu__condition_52() // Condition for Rule "coherence, j:3, i:11"
{
  return mu__invariant_3( 3, 11 );
}

bool mu__condition_53() // Condition for Rule "coherence, j:3, i:12"
{
  return mu__invariant_3( 3, 12 );
}

bool mu__condition_54() // Condition for Rule "coherence, j:3, i:13"
{
  return mu__invariant_3( 3, 13 );
}

bool mu__condition_55() // Condition for Rule "coherence, j:3, i:14"
{
  return mu__invariant_3( 3, 14 );
}

bool mu__condition_56() // Condition for Rule "coherence, j:3, i:15"
{
  return mu__invariant_3( 3, 15 );
}

bool mu__condition_57() // Condition for Rule "coherence, j:3, i:16"
{
  return mu__invariant_3( 3, 16 );
}

bool mu__condition_59() // Condition for Rule "coherence, j:4, i:1"
{
  return mu__invariant_3( 4, 1 );
}

bool mu__condition_60() // Condition for Rule "coherence, j:4, i:2"
{
  return mu__invariant_3( 4, 2 );
}

bool mu__condition_61() // Condition for Rule "coherence, j:4, i:3"
{
  return mu__invariant_3( 4, 3 );
}

bool mu__condition_62() // Condition for Rule "coherence, j:4, i:4"
{
  return mu__invariant_3( 4, 4 );
}

bool mu__condition_63() // Condition for Rule "coherence, j:4, i:5"
{
  return mu__invariant_3( 4, 5 );
}

bool mu__condition_64() // Condition for Rule "coherence, j:4, i:6"
{
  return mu__invariant_3( 4, 6 );
}

bool mu__condition_65() // Condition for Rule "coherence, j:4, i:7"
{
  return mu__invariant_3( 4, 7 );
}

bool mu__condition_66() // Condition for Rule "coherence, j:4, i:8"
{
  return mu__invariant_3( 4, 8 );
}

bool mu__condition_67() // Condition for Rule "coherence, j:4, i:9"
{
  return mu__invariant_3( 4, 9 );
}

bool mu__condition_68() // Condition for Rule "coherence, j:4, i:10"
{
  return mu__invariant_3( 4, 10 );
}

bool mu__condition_69() // Condition for Rule "coherence, j:4, i:11"
{
  return mu__invariant_3( 4, 11 );
}

bool mu__condition_70() // Condition for Rule "coherence, j:4, i:12"
{
  return mu__invariant_3( 4, 12 );
}

bool mu__condition_71() // Condition for Rule "coherence, j:4, i:13"
{
  return mu__invariant_3( 4, 13 );
}

bool mu__condition_72() // Condition for Rule "coherence, j:4, i:14"
{
  return mu__invariant_3( 4, 14 );
}

bool mu__condition_73() // Condition for Rule "coherence, j:4, i:15"
{
  return mu__invariant_3( 4, 15 );
}

bool mu__condition_74() // Condition for Rule "coherence, j:4, i:16"
{
  return mu__invariant_3( 4, 16 );
}

bool mu__condition_76() // Condition for Rule "coherence, j:5, i:1"
{
  return mu__invariant_3( 5, 1 );
}

bool mu__condition_77() // Condition for Rule "coherence, j:5, i:2"
{
  return mu__invariant_3( 5, 2 );
}

bool mu__condition_78() // Condition for Rule "coherence, j:5, i:3"
{
  return mu__invariant_3( 5, 3 );
}

bool mu__condition_79() // Condition for Rule "coherence, j:5, i:4"
{
  return mu__invariant_3( 5, 4 );
}

bool mu__condition_80() // Condition for Rule "coherence, j:5, i:5"
{
  return mu__invariant_3( 5, 5 );
}

bool mu__condition_81() // Condition for Rule "coherence, j:5, i:6"
{
  return mu__invariant_3( 5, 6 );
}

bool mu__condition_82() // Condition for Rule "coherence, j:5, i:7"
{
  return mu__invariant_3( 5, 7 );
}

bool mu__condition_83() // Condition for Rule "coherence, j:5, i:8"
{
  return mu__invariant_3( 5, 8 );
}

bool mu__condition_84() // Condition for Rule "coherence, j:5, i:9"
{
  return mu__invariant_3( 5, 9 );
}

bool mu__condition_85() // Condition for Rule "coherence, j:5, i:10"
{
  return mu__invariant_3( 5, 10 );
}

bool mu__condition_86() // Condition for Rule "coherence, j:5, i:11"
{
  return mu__invariant_3( 5, 11 );
}

bool mu__condition_87() // Condition for Rule "coherence, j:5, i:12"
{
  return mu__invariant_3( 5, 12 );
}

bool mu__condition_88() // Condition for Rule "coherence, j:5, i:13"
{
  return mu__invariant_3( 5, 13 );
}

bool mu__condition_89() // Condition for Rule "coherence, j:5, i:14"
{
  return mu__invariant_3( 5, 14 );
}

bool mu__condition_90() // Condition for Rule "coherence, j:5, i:15"
{
  return mu__invariant_3( 5, 15 );
}

bool mu__condition_91() // Condition for Rule "coherence, j:5, i:16"
{
  return mu__invariant_3( 5, 16 );
}

bool mu__condition_93() // Condition for Rule "coherence, j:6, i:1"
{
  return mu__invariant_3( 6, 1 );
}

bool mu__condition_94() // Condition for Rule "coherence, j:6, i:2"
{
  return mu__invariant_3( 6, 2 );
}

bool mu__condition_95() // Condition for Rule "coherence, j:6, i:3"
{
  return mu__invariant_3( 6, 3 );
}

bool mu__condition_96() // Condition for Rule "coherence, j:6, i:4"
{
  return mu__invariant_3( 6, 4 );
}

bool mu__condition_97() // Condition for Rule "coherence, j:6, i:5"
{
  return mu__invariant_3( 6, 5 );
}

bool mu__condition_98() // Condition for Rule "coherence, j:6, i:6"
{
  return mu__invariant_3( 6, 6 );
}

bool mu__condition_99() // Condition for Rule "coherence, j:6, i:7"
{
  return mu__invariant_3( 6, 7 );
}

bool mu__condition_100() // Condition for Rule "coherence, j:6, i:8"
{
  return mu__invariant_3( 6, 8 );
}

bool mu__condition_101() // Condition for Rule "coherence, j:6, i:9"
{
  return mu__invariant_3( 6, 9 );
}

bool mu__condition_102() // Condition for Rule "coherence, j:6, i:10"
{
  return mu__invariant_3( 6, 10 );
}

bool mu__condition_103() // Condition for Rule "coherence, j:6, i:11"
{
  return mu__invariant_3( 6, 11 );
}

bool mu__condition_104() // Condition for Rule "coherence, j:6, i:12"
{
  return mu__invariant_3( 6, 12 );
}

bool mu__condition_105() // Condition for Rule "coherence, j:6, i:13"
{
  return mu__invariant_3( 6, 13 );
}

bool mu__condition_106() // Condition for Rule "coherence, j:6, i:14"
{
  return mu__invariant_3( 6, 14 );
}

bool mu__condition_107() // Condition for Rule "coherence, j:6, i:15"
{
  return mu__invariant_3( 6, 15 );
}

bool mu__condition_108() // Condition for Rule "coherence, j:6, i:16"
{
  return mu__invariant_3( 6, 16 );
}

bool mu__condition_110() // Condition for Rule "coherence, j:7, i:1"
{
  return mu__invariant_3( 7, 1 );
}

bool mu__condition_111() // Condition for Rule "coherence, j:7, i:2"
{
  return mu__invariant_3( 7, 2 );
}

bool mu__condition_112() // Condition for Rule "coherence, j:7, i:3"
{
  return mu__invariant_3( 7, 3 );
}

bool mu__condition_113() // Condition for Rule "coherence, j:7, i:4"
{
  return mu__invariant_3( 7, 4 );
}

bool mu__condition_114() // Condition for Rule "coherence, j:7, i:5"
{
  return mu__invariant_3( 7, 5 );
}

bool mu__condition_115() // Condition for Rule "coherence, j:7, i:6"
{
  return mu__invariant_3( 7, 6 );
}

bool mu__condition_116() // Condition for Rule "coherence, j:7, i:7"
{
  return mu__invariant_3( 7, 7 );
}

bool mu__condition_117() // Condition for Rule "coherence, j:7, i:8"
{
  return mu__invariant_3( 7, 8 );
}

bool mu__condition_118() // Condition for Rule "coherence, j:7, i:9"
{
  return mu__invariant_3( 7, 9 );
}

bool mu__condition_119() // Condition for Rule "coherence, j:7, i:10"
{
  return mu__invariant_3( 7, 10 );
}

bool mu__condition_120() // Condition for Rule "coherence, j:7, i:11"
{
  return mu__invariant_3( 7, 11 );
}

bool mu__condition_121() // Condition for Rule "coherence, j:7, i:12"
{
  return mu__invariant_3( 7, 12 );
}

bool mu__condition_122() // Condition for Rule "coherence, j:7, i:13"
{
  return mu__invariant_3( 7, 13 );
}

bool mu__condition_123() // Condition for Rule "coherence, j:7, i:14"
{
  return mu__invariant_3( 7, 14 );
}

bool mu__condition_124() // Condition for Rule "coherence, j:7, i:15"
{
  return mu__invariant_3( 7, 15 );
}

bool mu__condition_125() // Condition for Rule "coherence, j:7, i:16"
{
  return mu__invariant_3( 7, 16 );
}

bool mu__condition_127() // Condition for Rule "coherence, j:8, i:1"
{
  return mu__invariant_3( 8, 1 );
}

bool mu__condition_128() // Condition for Rule "coherence, j:8, i:2"
{
  return mu__invariant_3( 8, 2 );
}

bool mu__condition_129() // Condition for Rule "coherence, j:8, i:3"
{
  return mu__invariant_3( 8, 3 );
}

bool mu__condition_130() // Condition for Rule "coherence, j:8, i:4"
{
  return mu__invariant_3( 8, 4 );
}

bool mu__condition_131() // Condition for Rule "coherence, j:8, i:5"
{
  return mu__invariant_3( 8, 5 );
}

bool mu__condition_132() // Condition for Rule "coherence, j:8, i:6"
{
  return mu__invariant_3( 8, 6 );
}

bool mu__condition_133() // Condition for Rule "coherence, j:8, i:7"
{
  return mu__invariant_3( 8, 7 );
}

bool mu__condition_134() // Condition for Rule "coherence, j:8, i:8"
{
  return mu__invariant_3( 8, 8 );
}

bool mu__condition_135() // Condition for Rule "coherence, j:8, i:9"
{
  return mu__invariant_3( 8, 9 );
}

bool mu__condition_136() // Condition for Rule "coherence, j:8, i:10"
{
  return mu__invariant_3( 8, 10 );
}

bool mu__condition_137() // Condition for Rule "coherence, j:8, i:11"
{
  return mu__invariant_3( 8, 11 );
}

bool mu__condition_138() // Condition for Rule "coherence, j:8, i:12"
{
  return mu__invariant_3( 8, 12 );
}

bool mu__condition_139() // Condition for Rule "coherence, j:8, i:13"
{
  return mu__invariant_3( 8, 13 );
}

bool mu__condition_140() // Condition for Rule "coherence, j:8, i:14"
{
  return mu__invariant_3( 8, 14 );
}

bool mu__condition_141() // Condition for Rule "coherence, j:8, i:15"
{
  return mu__invariant_3( 8, 15 );
}

bool mu__condition_142() // Condition for Rule "coherence, j:8, i:16"
{
  return mu__invariant_3( 8, 16 );
}

bool mu__condition_144() // Condition for Rule "coherence, j:9, i:1"
{
  return mu__invariant_3( 9, 1 );
}

bool mu__condition_145() // Condition for Rule "coherence, j:9, i:2"
{
  return mu__invariant_3( 9, 2 );
}

bool mu__condition_146() // Condition for Rule "coherence, j:9, i:3"
{
  return mu__invariant_3( 9, 3 );
}

bool mu__condition_147() // Condition for Rule "coherence, j:9, i:4"
{
  return mu__invariant_3( 9, 4 );
}

bool mu__condition_148() // Condition for Rule "coherence, j:9, i:5"
{
  return mu__invariant_3( 9, 5 );
}

bool mu__condition_149() // Condition for Rule "coherence, j:9, i:6"
{
  return mu__invariant_3( 9, 6 );
}

bool mu__condition_150() // Condition for Rule "coherence, j:9, i:7"
{
  return mu__invariant_3( 9, 7 );
}

bool mu__condition_151() // Condition for Rule "coherence, j:9, i:8"
{
  return mu__invariant_3( 9, 8 );
}

bool mu__condition_152() // Condition for Rule "coherence, j:9, i:9"
{
  return mu__invariant_3( 9, 9 );
}

bool mu__condition_153() // Condition for Rule "coherence, j:9, i:10"
{
  return mu__invariant_3( 9, 10 );
}

bool mu__condition_154() // Condition for Rule "coherence, j:9, i:11"
{
  return mu__invariant_3( 9, 11 );
}

bool mu__condition_155() // Condition for Rule "coherence, j:9, i:12"
{
  return mu__invariant_3( 9, 12 );
}

bool mu__condition_156() // Condition for Rule "coherence, j:9, i:13"
{
  return mu__invariant_3( 9, 13 );
}

bool mu__condition_157() // Condition for Rule "coherence, j:9, i:14"
{
  return mu__invariant_3( 9, 14 );
}

bool mu__condition_158() // Condition for Rule "coherence, j:9, i:15"
{
  return mu__invariant_3( 9, 15 );
}

bool mu__condition_159() // Condition for Rule "coherence, j:9, i:16"
{
  return mu__invariant_3( 9, 16 );
}

bool mu__condition_161() // Condition for Rule "coherence, j:10, i:1"
{
  return mu__invariant_3( 10, 1 );
}

bool mu__condition_162() // Condition for Rule "coherence, j:10, i:2"
{
  return mu__invariant_3( 10, 2 );
}

bool mu__condition_163() // Condition for Rule "coherence, j:10, i:3"
{
  return mu__invariant_3( 10, 3 );
}

bool mu__condition_164() // Condition for Rule "coherence, j:10, i:4"
{
  return mu__invariant_3( 10, 4 );
}

bool mu__condition_165() // Condition for Rule "coherence, j:10, i:5"
{
  return mu__invariant_3( 10, 5 );
}

bool mu__condition_166() // Condition for Rule "coherence, j:10, i:6"
{
  return mu__invariant_3( 10, 6 );
}

bool mu__condition_167() // Condition for Rule "coherence, j:10, i:7"
{
  return mu__invariant_3( 10, 7 );
}

bool mu__condition_168() // Condition for Rule "coherence, j:10, i:8"
{
  return mu__invariant_3( 10, 8 );
}

bool mu__condition_169() // Condition for Rule "coherence, j:10, i:9"
{
  return mu__invariant_3( 10, 9 );
}

bool mu__condition_170() // Condition for Rule "coherence, j:10, i:10"
{
  return mu__invariant_3( 10, 10 );
}

bool mu__condition_171() // Condition for Rule "coherence, j:10, i:11"
{
  return mu__invariant_3( 10, 11 );
}

bool mu__condition_172() // Condition for Rule "coherence, j:10, i:12"
{
  return mu__invariant_3( 10, 12 );
}

bool mu__condition_173() // Condition for Rule "coherence, j:10, i:13"
{
  return mu__invariant_3( 10, 13 );
}

bool mu__condition_174() // Condition for Rule "coherence, j:10, i:14"
{
  return mu__invariant_3( 10, 14 );
}

bool mu__condition_175() // Condition for Rule "coherence, j:10, i:15"
{
  return mu__invariant_3( 10, 15 );
}

bool mu__condition_176() // Condition for Rule "coherence, j:10, i:16"
{
  return mu__invariant_3( 10, 16 );
}

bool mu__condition_178() // Condition for Rule "coherence, j:11, i:1"
{
  return mu__invariant_3( 11, 1 );
}

bool mu__condition_179() // Condition for Rule "coherence, j:11, i:2"
{
  return mu__invariant_3( 11, 2 );
}

bool mu__condition_180() // Condition for Rule "coherence, j:11, i:3"
{
  return mu__invariant_3( 11, 3 );
}

bool mu__condition_181() // Condition for Rule "coherence, j:11, i:4"
{
  return mu__invariant_3( 11, 4 );
}

bool mu__condition_182() // Condition for Rule "coherence, j:11, i:5"
{
  return mu__invariant_3( 11, 5 );
}

bool mu__condition_183() // Condition for Rule "coherence, j:11, i:6"
{
  return mu__invariant_3( 11, 6 );
}

bool mu__condition_184() // Condition for Rule "coherence, j:11, i:7"
{
  return mu__invariant_3( 11, 7 );
}

bool mu__condition_185() // Condition for Rule "coherence, j:11, i:8"
{
  return mu__invariant_3( 11, 8 );
}

bool mu__condition_186() // Condition for Rule "coherence, j:11, i:9"
{
  return mu__invariant_3( 11, 9 );
}

bool mu__condition_187() // Condition for Rule "coherence, j:11, i:10"
{
  return mu__invariant_3( 11, 10 );
}

bool mu__condition_188() // Condition for Rule "coherence, j:11, i:11"
{
  return mu__invariant_3( 11, 11 );
}

bool mu__condition_189() // Condition for Rule "coherence, j:11, i:12"
{
  return mu__invariant_3( 11, 12 );
}

bool mu__condition_190() // Condition for Rule "coherence, j:11, i:13"
{
  return mu__invariant_3( 11, 13 );
}

bool mu__condition_191() // Condition for Rule "coherence, j:11, i:14"
{
  return mu__invariant_3( 11, 14 );
}

bool mu__condition_192() // Condition for Rule "coherence, j:11, i:15"
{
  return mu__invariant_3( 11, 15 );
}

bool mu__condition_193() // Condition for Rule "coherence, j:11, i:16"
{
  return mu__invariant_3( 11, 16 );
}

bool mu__condition_195() // Condition for Rule "coherence, j:12, i:1"
{
  return mu__invariant_3( 12, 1 );
}

bool mu__condition_196() // Condition for Rule "coherence, j:12, i:2"
{
  return mu__invariant_3( 12, 2 );
}

bool mu__condition_197() // Condition for Rule "coherence, j:12, i:3"
{
  return mu__invariant_3( 12, 3 );
}

bool mu__condition_198() // Condition for Rule "coherence, j:12, i:4"
{
  return mu__invariant_3( 12, 4 );
}

bool mu__condition_199() // Condition for Rule "coherence, j:12, i:5"
{
  return mu__invariant_3( 12, 5 );
}

bool mu__condition_200() // Condition for Rule "coherence, j:12, i:6"
{
  return mu__invariant_3( 12, 6 );
}

bool mu__condition_201() // Condition for Rule "coherence, j:12, i:7"
{
  return mu__invariant_3( 12, 7 );
}

bool mu__condition_202() // Condition for Rule "coherence, j:12, i:8"
{
  return mu__invariant_3( 12, 8 );
}

bool mu__condition_203() // Condition for Rule "coherence, j:12, i:9"
{
  return mu__invariant_3( 12, 9 );
}

bool mu__condition_204() // Condition for Rule "coherence, j:12, i:10"
{
  return mu__invariant_3( 12, 10 );
}

bool mu__condition_205() // Condition for Rule "coherence, j:12, i:11"
{
  return mu__invariant_3( 12, 11 );
}

bool mu__condition_206() // Condition for Rule "coherence, j:12, i:12"
{
  return mu__invariant_3( 12, 12 );
}

bool mu__condition_207() // Condition for Rule "coherence, j:12, i:13"
{
  return mu__invariant_3( 12, 13 );
}

bool mu__condition_208() // Condition for Rule "coherence, j:12, i:14"
{
  return mu__invariant_3( 12, 14 );
}

bool mu__condition_209() // Condition for Rule "coherence, j:12, i:15"
{
  return mu__invariant_3( 12, 15 );
}

bool mu__condition_210() // Condition for Rule "coherence, j:12, i:16"
{
  return mu__invariant_3( 12, 16 );
}

bool mu__condition_212() // Condition for Rule "coherence, j:13, i:1"
{
  return mu__invariant_3( 13, 1 );
}

bool mu__condition_213() // Condition for Rule "coherence, j:13, i:2"
{
  return mu__invariant_3( 13, 2 );
}

bool mu__condition_214() // Condition for Rule "coherence, j:13, i:3"
{
  return mu__invariant_3( 13, 3 );
}

bool mu__condition_215() // Condition for Rule "coherence, j:13, i:4"
{
  return mu__invariant_3( 13, 4 );
}

bool mu__condition_216() // Condition for Rule "coherence, j:13, i:5"
{
  return mu__invariant_3( 13, 5 );
}

bool mu__condition_217() // Condition for Rule "coherence, j:13, i:6"
{
  return mu__invariant_3( 13, 6 );
}

bool mu__condition_218() // Condition for Rule "coherence, j:13, i:7"
{
  return mu__invariant_3( 13, 7 );
}

bool mu__condition_219() // Condition for Rule "coherence, j:13, i:8"
{
  return mu__invariant_3( 13, 8 );
}

bool mu__condition_220() // Condition for Rule "coherence, j:13, i:9"
{
  return mu__invariant_3( 13, 9 );
}

bool mu__condition_221() // Condition for Rule "coherence, j:13, i:10"
{
  return mu__invariant_3( 13, 10 );
}

bool mu__condition_222() // Condition for Rule "coherence, j:13, i:11"
{
  return mu__invariant_3( 13, 11 );
}

bool mu__condition_223() // Condition for Rule "coherence, j:13, i:12"
{
  return mu__invariant_3( 13, 12 );
}

bool mu__condition_224() // Condition for Rule "coherence, j:13, i:13"
{
  return mu__invariant_3( 13, 13 );
}

bool mu__condition_225() // Condition for Rule "coherence, j:13, i:14"
{
  return mu__invariant_3( 13, 14 );
}

bool mu__condition_226() // Condition for Rule "coherence, j:13, i:15"
{
  return mu__invariant_3( 13, 15 );
}

bool mu__condition_227() // Condition for Rule "coherence, j:13, i:16"
{
  return mu__invariant_3( 13, 16 );
}

bool mu__condition_229() // Condition for Rule "coherence, j:14, i:1"
{
  return mu__invariant_3( 14, 1 );
}

bool mu__condition_230() // Condition for Rule "coherence, j:14, i:2"
{
  return mu__invariant_3( 14, 2 );
}

bool mu__condition_231() // Condition for Rule "coherence, j:14, i:3"
{
  return mu__invariant_3( 14, 3 );
}

bool mu__condition_232() // Condition for Rule "coherence, j:14, i:4"
{
  return mu__invariant_3( 14, 4 );
}

bool mu__condition_233() // Condition for Rule "coherence, j:14, i:5"
{
  return mu__invariant_3( 14, 5 );
}

bool mu__condition_234() // Condition for Rule "coherence, j:14, i:6"
{
  return mu__invariant_3( 14, 6 );
}

bool mu__condition_235() // Condition for Rule "coherence, j:14, i:7"
{
  return mu__invariant_3( 14, 7 );
}

bool mu__condition_236() // Condition for Rule "coherence, j:14, i:8"
{
  return mu__invariant_3( 14, 8 );
}

bool mu__condition_237() // Condition for Rule "coherence, j:14, i:9"
{
  return mu__invariant_3( 14, 9 );
}

bool mu__condition_238() // Condition for Rule "coherence, j:14, i:10"
{
  return mu__invariant_3( 14, 10 );
}

bool mu__condition_239() // Condition for Rule "coherence, j:14, i:11"
{
  return mu__invariant_3( 14, 11 );
}

bool mu__condition_240() // Condition for Rule "coherence, j:14, i:12"
{
  return mu__invariant_3( 14, 12 );
}

bool mu__condition_241() // Condition for Rule "coherence, j:14, i:13"
{
  return mu__invariant_3( 14, 13 );
}

bool mu__condition_242() // Condition for Rule "coherence, j:14, i:14"
{
  return mu__invariant_3( 14, 14 );
}

bool mu__condition_243() // Condition for Rule "coherence, j:14, i:15"
{
  return mu__invariant_3( 14, 15 );
}

bool mu__condition_244() // Condition for Rule "coherence, j:14, i:16"
{
  return mu__invariant_3( 14, 16 );
}

bool mu__condition_246() // Condition for Rule "coherence, j:15, i:1"
{
  return mu__invariant_3( 15, 1 );
}

bool mu__condition_247() // Condition for Rule "coherence, j:15, i:2"
{
  return mu__invariant_3( 15, 2 );
}

bool mu__condition_248() // Condition for Rule "coherence, j:15, i:3"
{
  return mu__invariant_3( 15, 3 );
}

bool mu__condition_249() // Condition for Rule "coherence, j:15, i:4"
{
  return mu__invariant_3( 15, 4 );
}

bool mu__condition_250() // Condition for Rule "coherence, j:15, i:5"
{
  return mu__invariant_3( 15, 5 );
}

bool mu__condition_251() // Condition for Rule "coherence, j:15, i:6"
{
  return mu__invariant_3( 15, 6 );
}

bool mu__condition_252() // Condition for Rule "coherence, j:15, i:7"
{
  return mu__invariant_3( 15, 7 );
}

bool mu__condition_253() // Condition for Rule "coherence, j:15, i:8"
{
  return mu__invariant_3( 15, 8 );
}

bool mu__condition_254() // Condition for Rule "coherence, j:15, i:9"
{
  return mu__invariant_3( 15, 9 );
}

bool mu__condition_255() // Condition for Rule "coherence, j:15, i:10"
{
  return mu__invariant_3( 15, 10 );
}

bool mu__condition_256() // Condition for Rule "coherence, j:15, i:11"
{
  return mu__invariant_3( 15, 11 );
}

bool mu__condition_257() // Condition for Rule "coherence, j:15, i:12"
{
  return mu__invariant_3( 15, 12 );
}

bool mu__condition_258() // Condition for Rule "coherence, j:15, i:13"
{
  return mu__invariant_3( 15, 13 );
}

bool mu__condition_259() // Condition for Rule "coherence, j:15, i:14"
{
  return mu__invariant_3( 15, 14 );
}

bool mu__condition_260() // Condition for Rule "coherence, j:15, i:15"
{
  return mu__invariant_3( 15, 15 );
}

bool mu__condition_261() // Condition for Rule "coherence, j:15, i:16"
{
  return mu__invariant_3( 15, 16 );
}

bool mu__condition_263() // Condition for Rule "coherence, j:16, i:1"
{
  return mu__invariant_3( 16, 1 );
}

bool mu__condition_264() // Condition for Rule "coherence, j:16, i:2"
{
  return mu__invariant_3( 16, 2 );
}

bool mu__condition_265() // Condition for Rule "coherence, j:16, i:3"
{
  return mu__invariant_3( 16, 3 );
}

bool mu__condition_266() // Condition for Rule "coherence, j:16, i:4"
{
  return mu__invariant_3( 16, 4 );
}

bool mu__condition_267() // Condition for Rule "coherence, j:16, i:5"
{
  return mu__invariant_3( 16, 5 );
}

bool mu__condition_268() // Condition for Rule "coherence, j:16, i:6"
{
  return mu__invariant_3( 16, 6 );
}

bool mu__condition_269() // Condition for Rule "coherence, j:16, i:7"
{
  return mu__invariant_3( 16, 7 );
}

bool mu__condition_270() // Condition for Rule "coherence, j:16, i:8"
{
  return mu__invariant_3( 16, 8 );
}

bool mu__condition_271() // Condition for Rule "coherence, j:16, i:9"
{
  return mu__invariant_3( 16, 9 );
}

bool mu__condition_272() // Condition for Rule "coherence, j:16, i:10"
{
  return mu__invariant_3( 16, 10 );
}

bool mu__condition_273() // Condition for Rule "coherence, j:16, i:11"
{
  return mu__invariant_3( 16, 11 );
}

bool mu__condition_274() // Condition for Rule "coherence, j:16, i:12"
{
  return mu__invariant_3( 16, 12 );
}

bool mu__condition_275() // Condition for Rule "coherence, j:16, i:13"
{
  return mu__invariant_3( 16, 13 );
}

bool mu__condition_276() // Condition for Rule "coherence, j:16, i:14"
{
  return mu__invariant_3( 16, 14 );
}

bool mu__condition_277() // Condition for Rule "coherence, j:16, i:15"
{
  return mu__invariant_3( 16, 15 );
}

bool mu__condition_278() // Condition for Rule "coherence, j:16, i:16"
{
  return mu__invariant_3( 16, 16 );
}

/**** end rule declaration ****/

const rulerec invariants[] = {
{"coherence, j:16, i:16", &mu__condition_278, NULL, },
{"coherence, j:16, i:15", &mu__condition_277, NULL, },
{"coherence, j:16, i:14", &mu__condition_276, NULL, },
{"coherence, j:16, i:13", &mu__condition_275, NULL, },
{"coherence, j:16, i:12", &mu__condition_274, NULL, },
{"coherence, j:16, i:11", &mu__condition_273, NULL, },
{"coherence, j:16, i:10", &mu__condition_272, NULL, },
{"coherence, j:16, i:9", &mu__condition_271, NULL, },
{"coherence, j:16, i:8", &mu__condition_270, NULL, },
{"coherence, j:16, i:7", &mu__condition_269, NULL, },
{"coherence, j:16, i:6", &mu__condition_268, NULL, },
{"coherence, j:16, i:5", &mu__condition_267, NULL, },
{"coherence, j:16, i:4", &mu__condition_266, NULL, },
{"coherence, j:16, i:3", &mu__condition_265, NULL, },
{"coherence, j:16, i:2", &mu__condition_264, NULL, },
{"coherence, j:16, i:1", &mu__condition_263, NULL, },
{"coherence, j:15, i:16", &mu__condition_261, NULL, },
{"coherence, j:15, i:15", &mu__condition_260, NULL, },
{"coherence, j:15, i:14", &mu__condition_259, NULL, },
{"coherence, j:15, i:13", &mu__condition_258, NULL, },
{"coherence, j:15, i:12", &mu__condition_257, NULL, },
{"coherence, j:15, i:11", &mu__condition_256, NULL, },
{"coherence, j:15, i:10", &mu__condition_255, NULL, },
{"coherence, j:15, i:9", &mu__condition_254, NULL, },
{"coherence, j:15, i:8", &mu__condition_253, NULL, },
{"coherence, j:15, i:7", &mu__condition_252, NULL, },
{"coherence, j:15, i:6", &mu__condition_251, NULL, },
{"coherence, j:15, i:5", &mu__condition_250, NULL, },
{"coherence, j:15, i:4", &mu__condition_249, NULL, },
{"coherence, j:15, i:3", &mu__condition_248, NULL, },
{"coherence, j:15, i:2", &mu__condition_247, NULL, },
{"coherence, j:15, i:1", &mu__condition_246, NULL, },
{"coherence, j:14, i:16", &mu__condition_244, NULL, },
{"coherence, j:14, i:15", &mu__condition_243, NULL, },
{"coherence, j:14, i:14", &mu__condition_242, NULL, },
{"coherence, j:14, i:13", &mu__condition_241, NULL, },
{"coherence, j:14, i:12", &mu__condition_240, NULL, },
{"coherence, j:14, i:11", &mu__condition_239, NULL, },
{"coherence, j:14, i:10", &mu__condition_238, NULL, },
{"coherence, j:14, i:9", &mu__condition_237, NULL, },
{"coherence, j:14, i:8", &mu__condition_236, NULL, },
{"coherence, j:14, i:7", &mu__condition_235, NULL, },
{"coherence, j:14, i:6", &mu__condition_234, NULL, },
{"coherence, j:14, i:5", &mu__condition_233, NULL, },
{"coherence, j:14, i:4", &mu__condition_232, NULL, },
{"coherence, j:14, i:3", &mu__condition_231, NULL, },
{"coherence, j:14, i:2", &mu__condition_230, NULL, },
{"coherence, j:14, i:1", &mu__condition_229, NULL, },
{"coherence, j:13, i:16", &mu__condition_227, NULL, },
{"coherence, j:13, i:15", &mu__condition_226, NULL, },
{"coherence, j:13, i:14", &mu__condition_225, NULL, },
{"coherence, j:13, i:13", &mu__condition_224, NULL, },
{"coherence, j:13, i:12", &mu__condition_223, NULL, },
{"coherence, j:13, i:11", &mu__condition_222, NULL, },
{"coherence, j:13, i:10", &mu__condition_221, NULL, },
{"coherence, j:13, i:9", &mu__condition_220, NULL, },
{"coherence, j:13, i:8", &mu__condition_219, NULL, },
{"coherence, j:13, i:7", &mu__condition_218, NULL, },
{"coherence, j:13, i:6", &mu__condition_217, NULL, },
{"coherence, j:13, i:5", &mu__condition_216, NULL, },
{"coherence, j:13, i:4", &mu__condition_215, NULL, },
{"coherence, j:13, i:3", &mu__condition_214, NULL, },
{"coherence, j:13, i:2", &mu__condition_213, NULL, },
{"coherence, j:13, i:1", &mu__condition_212, NULL, },
{"coherence, j:12, i:16", &mu__condition_210, NULL, },
{"coherence, j:12, i:15", &mu__condition_209, NULL, },
{"coherence, j:12, i:14", &mu__condition_208, NULL, },
{"coherence, j:12, i:13", &mu__condition_207, NULL, },
{"coherence, j:12, i:12", &mu__condition_206, NULL, },
{"coherence, j:12, i:11", &mu__condition_205, NULL, },
{"coherence, j:12, i:10", &mu__condition_204, NULL, },
{"coherence, j:12, i:9", &mu__condition_203, NULL, },
{"coherence, j:12, i:8", &mu__condition_202, NULL, },
{"coherence, j:12, i:7", &mu__condition_201, NULL, },
{"coherence, j:12, i:6", &mu__condition_200, NULL, },
{"coherence, j:12, i:5", &mu__condition_199, NULL, },
{"coherence, j:12, i:4", &mu__condition_198, NULL, },
{"coherence, j:12, i:3", &mu__condition_197, NULL, },
{"coherence, j:12, i:2", &mu__condition_196, NULL, },
{"coherence, j:12, i:1", &mu__condition_195, NULL, },
{"coherence, j:11, i:16", &mu__condition_193, NULL, },
{"coherence, j:11, i:15", &mu__condition_192, NULL, },
{"coherence, j:11, i:14", &mu__condition_191, NULL, },
{"coherence, j:11, i:13", &mu__condition_190, NULL, },
{"coherence, j:11, i:12", &mu__condition_189, NULL, },
{"coherence, j:11, i:11", &mu__condition_188, NULL, },
{"coherence, j:11, i:10", &mu__condition_187, NULL, },
{"coherence, j:11, i:9", &mu__condition_186, NULL, },
{"coherence, j:11, i:8", &mu__condition_185, NULL, },
{"coherence, j:11, i:7", &mu__condition_184, NULL, },
{"coherence, j:11, i:6", &mu__condition_183, NULL, },
{"coherence, j:11, i:5", &mu__condition_182, NULL, },
{"coherence, j:11, i:4", &mu__condition_181, NULL, },
{"coherence, j:11, i:3", &mu__condition_180, NULL, },
{"coherence, j:11, i:2", &mu__condition_179, NULL, },
{"coherence, j:11, i:1", &mu__condition_178, NULL, },
{"coherence, j:10, i:16", &mu__condition_176, NULL, },
{"coherence, j:10, i:15", &mu__condition_175, NULL, },
{"coherence, j:10, i:14", &mu__condition_174, NULL, },
{"coherence, j:10, i:13", &mu__condition_173, NULL, },
{"coherence, j:10, i:12", &mu__condition_172, NULL, },
{"coherence, j:10, i:11", &mu__condition_171, NULL, },
{"coherence, j:10, i:10", &mu__condition_170, NULL, },
{"coherence, j:10, i:9", &mu__condition_169, NULL, },
{"coherence, j:10, i:8", &mu__condition_168, NULL, },
{"coherence, j:10, i:7", &mu__condition_167, NULL, },
{"coherence, j:10, i:6", &mu__condition_166, NULL, },
{"coherence, j:10, i:5", &mu__condition_165, NULL, },
{"coherence, j:10, i:4", &mu__condition_164, NULL, },
{"coherence, j:10, i:3", &mu__condition_163, NULL, },
{"coherence, j:10, i:2", &mu__condition_162, NULL, },
{"coherence, j:10, i:1", &mu__condition_161, NULL, },
{"coherence, j:9, i:16", &mu__condition_159, NULL, },
{"coherence, j:9, i:15", &mu__condition_158, NULL, },
{"coherence, j:9, i:14", &mu__condition_157, NULL, },
{"coherence, j:9, i:13", &mu__condition_156, NULL, },
{"coherence, j:9, i:12", &mu__condition_155, NULL, },
{"coherence, j:9, i:11", &mu__condition_154, NULL, },
{"coherence, j:9, i:10", &mu__condition_153, NULL, },
{"coherence, j:9, i:9", &mu__condition_152, NULL, },
{"coherence, j:9, i:8", &mu__condition_151, NULL, },
{"coherence, j:9, i:7", &mu__condition_150, NULL, },
{"coherence, j:9, i:6", &mu__condition_149, NULL, },
{"coherence, j:9, i:5", &mu__condition_148, NULL, },
{"coherence, j:9, i:4", &mu__condition_147, NULL, },
{"coherence, j:9, i:3", &mu__condition_146, NULL, },
{"coherence, j:9, i:2", &mu__condition_145, NULL, },
{"coherence, j:9, i:1", &mu__condition_144, NULL, },
{"coherence, j:8, i:16", &mu__condition_142, NULL, },
{"coherence, j:8, i:15", &mu__condition_141, NULL, },
{"coherence, j:8, i:14", &mu__condition_140, NULL, },
{"coherence, j:8, i:13", &mu__condition_139, NULL, },
{"coherence, j:8, i:12", &mu__condition_138, NULL, },
{"coherence, j:8, i:11", &mu__condition_137, NULL, },
{"coherence, j:8, i:10", &mu__condition_136, NULL, },
{"coherence, j:8, i:9", &mu__condition_135, NULL, },
{"coherence, j:8, i:8", &mu__condition_134, NULL, },
{"coherence, j:8, i:7", &mu__condition_133, NULL, },
{"coherence, j:8, i:6", &mu__condition_132, NULL, },
{"coherence, j:8, i:5", &mu__condition_131, NULL, },
{"coherence, j:8, i:4", &mu__condition_130, NULL, },
{"coherence, j:8, i:3", &mu__condition_129, NULL, },
{"coherence, j:8, i:2", &mu__condition_128, NULL, },
{"coherence, j:8, i:1", &mu__condition_127, NULL, },
{"coherence, j:7, i:16", &mu__condition_125, NULL, },
{"coherence, j:7, i:15", &mu__condition_124, NULL, },
{"coherence, j:7, i:14", &mu__condition_123, NULL, },
{"coherence, j:7, i:13", &mu__condition_122, NULL, },
{"coherence, j:7, i:12", &mu__condition_121, NULL, },
{"coherence, j:7, i:11", &mu__condition_120, NULL, },
{"coherence, j:7, i:10", &mu__condition_119, NULL, },
{"coherence, j:7, i:9", &mu__condition_118, NULL, },
{"coherence, j:7, i:8", &mu__condition_117, NULL, },
{"coherence, j:7, i:7", &mu__condition_116, NULL, },
{"coherence, j:7, i:6", &mu__condition_115, NULL, },
{"coherence, j:7, i:5", &mu__condition_114, NULL, },
{"coherence, j:7, i:4", &mu__condition_113, NULL, },
{"coherence, j:7, i:3", &mu__condition_112, NULL, },
{"coherence, j:7, i:2", &mu__condition_111, NULL, },
{"coherence, j:7, i:1", &mu__condition_110, NULL, },
{"coherence, j:6, i:16", &mu__condition_108, NULL, },
{"coherence, j:6, i:15", &mu__condition_107, NULL, },
{"coherence, j:6, i:14", &mu__condition_106, NULL, },
{"coherence, j:6, i:13", &mu__condition_105, NULL, },
{"coherence, j:6, i:12", &mu__condition_104, NULL, },
{"coherence, j:6, i:11", &mu__condition_103, NULL, },
{"coherence, j:6, i:10", &mu__condition_102, NULL, },
{"coherence, j:6, i:9", &mu__condition_101, NULL, },
{"coherence, j:6, i:8", &mu__condition_100, NULL, },
{"coherence, j:6, i:7", &mu__condition_99, NULL, },
{"coherence, j:6, i:6", &mu__condition_98, NULL, },
{"coherence, j:6, i:5", &mu__condition_97, NULL, },
{"coherence, j:6, i:4", &mu__condition_96, NULL, },
{"coherence, j:6, i:3", &mu__condition_95, NULL, },
{"coherence, j:6, i:2", &mu__condition_94, NULL, },
{"coherence, j:6, i:1", &mu__condition_93, NULL, },
{"coherence, j:5, i:16", &mu__condition_91, NULL, },
{"coherence, j:5, i:15", &mu__condition_90, NULL, },
{"coherence, j:5, i:14", &mu__condition_89, NULL, },
{"coherence, j:5, i:13", &mu__condition_88, NULL, },
{"coherence, j:5, i:12", &mu__condition_87, NULL, },
{"coherence, j:5, i:11", &mu__condition_86, NULL, },
{"coherence, j:5, i:10", &mu__condition_85, NULL, },
{"coherence, j:5, i:9", &mu__condition_84, NULL, },
{"coherence, j:5, i:8", &mu__condition_83, NULL, },
{"coherence, j:5, i:7", &mu__condition_82, NULL, },
{"coherence, j:5, i:6", &mu__condition_81, NULL, },
{"coherence, j:5, i:5", &mu__condition_80, NULL, },
{"coherence, j:5, i:4", &mu__condition_79, NULL, },
{"coherence, j:5, i:3", &mu__condition_78, NULL, },
{"coherence, j:5, i:2", &mu__condition_77, NULL, },
{"coherence, j:5, i:1", &mu__condition_76, NULL, },
{"coherence, j:4, i:16", &mu__condition_74, NULL, },
{"coherence, j:4, i:15", &mu__condition_73, NULL, },
{"coherence, j:4, i:14", &mu__condition_72, NULL, },
{"coherence, j:4, i:13", &mu__condition_71, NULL, },
{"coherence, j:4, i:12", &mu__condition_70, NULL, },
{"coherence, j:4, i:11", &mu__condition_69, NULL, },
{"coherence, j:4, i:10", &mu__condition_68, NULL, },
{"coherence, j:4, i:9", &mu__condition_67, NULL, },
{"coherence, j:4, i:8", &mu__condition_66, NULL, },
{"coherence, j:4, i:7", &mu__condition_65, NULL, },
{"coherence, j:4, i:6", &mu__condition_64, NULL, },
{"coherence, j:4, i:5", &mu__condition_63, NULL, },
{"coherence, j:4, i:4", &mu__condition_62, NULL, },
{"coherence, j:4, i:3", &mu__condition_61, NULL, },
{"coherence, j:4, i:2", &mu__condition_60, NULL, },
{"coherence, j:4, i:1", &mu__condition_59, NULL, },
{"coherence, j:3, i:16", &mu__condition_57, NULL, },
{"coherence, j:3, i:15", &mu__condition_56, NULL, },
{"coherence, j:3, i:14", &mu__condition_55, NULL, },
{"coherence, j:3, i:13", &mu__condition_54, NULL, },
{"coherence, j:3, i:12", &mu__condition_53, NULL, },
{"coherence, j:3, i:11", &mu__condition_52, NULL, },
{"coherence, j:3, i:10", &mu__condition_51, NULL, },
{"coherence, j:3, i:9", &mu__condition_50, NULL, },
{"coherence, j:3, i:8", &mu__condition_49, NULL, },
{"coherence, j:3, i:7", &mu__condition_48, NULL, },
{"coherence, j:3, i:6", &mu__condition_47, NULL, },
{"coherence, j:3, i:5", &mu__condition_46, NULL, },
{"coherence, j:3, i:4", &mu__condition_45, NULL, },
{"coherence, j:3, i:3", &mu__condition_44, NULL, },
{"coherence, j:3, i:2", &mu__condition_43, NULL, },
{"coherence, j:3, i:1", &mu__condition_42, NULL, },
{"coherence, j:2, i:16", &mu__condition_40, NULL, },
{"coherence, j:2, i:15", &mu__condition_39, NULL, },
{"coherence, j:2, i:14", &mu__condition_38, NULL, },
{"coherence, j:2, i:13", &mu__condition_37, NULL, },
{"coherence, j:2, i:12", &mu__condition_36, NULL, },
{"coherence, j:2, i:11", &mu__condition_35, NULL, },
{"coherence, j:2, i:10", &mu__condition_34, NULL, },
{"coherence, j:2, i:9", &mu__condition_33, NULL, },
{"coherence, j:2, i:8", &mu__condition_32, NULL, },
{"coherence, j:2, i:7", &mu__condition_31, NULL, },
{"coherence, j:2, i:6", &mu__condition_30, NULL, },
{"coherence, j:2, i:5", &mu__condition_29, NULL, },
{"coherence, j:2, i:4", &mu__condition_28, NULL, },
{"coherence, j:2, i:3", &mu__condition_27, NULL, },
{"coherence, j:2, i:2", &mu__condition_26, NULL, },
{"coherence, j:2, i:1", &mu__condition_25, NULL, },
{"coherence, j:1, i:16", &mu__condition_23, NULL, },
{"coherence, j:1, i:15", &mu__condition_22, NULL, },
{"coherence, j:1, i:14", &mu__condition_21, NULL, },
{"coherence, j:1, i:13", &mu__condition_20, NULL, },
{"coherence, j:1, i:12", &mu__condition_19, NULL, },
{"coherence, j:1, i:11", &mu__condition_18, NULL, },
{"coherence, j:1, i:10", &mu__condition_17, NULL, },
{"coherence, j:1, i:9", &mu__condition_16, NULL, },
{"coherence, j:1, i:8", &mu__condition_15, NULL, },
{"coherence, j:1, i:7", &mu__condition_14, NULL, },
{"coherence, j:1, i:6", &mu__condition_13, NULL, },
{"coherence, j:1, i:5", &mu__condition_12, NULL, },
{"coherence, j:1, i:4", &mu__condition_11, NULL, },
{"coherence, j:1, i:3", &mu__condition_10, NULL, },
{"coherence, j:1, i:2", &mu__condition_9, NULL, },
{"coherence, j:1, i:1", &mu__condition_8, NULL, },
};
const unsigned short numinvariants = 256;

/********************
  Normal/Canonicalization for scalarset
 ********************/
/*
n:NoScalarset
x:NoScalarset
*/

/********************
Code for symmetry
 ********************/

/********************
 Permutation Set Class
 ********************/
class PermSet
{
public:
  // book keeping
  enum PresentationType {Simple, Explicit};
  PresentationType Presentation;

  void ResetToSimple();
  void ResetToExplicit();
  void SimpleToExplicit();
  void SimpleToOne();
  bool NextPermutation();

  void Print_in_size()
  { int ret=0; for (int i=0; i<count; i++) if (in[i]) ret++; cout << "in_size:" << ret << "\n"; }


  /********************
   Simple and efficient representation
   ********************/
  bool AlreadyOnlyOneRemain;
  bool MoreThanOneRemain();


  /********************
   Explicit representation
  ********************/
  unsigned long size;
  unsigned long count;
  // in will be of product of factorial sizes for fast canonicalize
  // in will be of size 1 for reduced local memory canonicalize
  bool * in;

  // auxiliary for explicit representation

  // in/perm/revperm will be of factorial size for fast canonicalize
  // they will be of size 1 for reduced local memory canonicalize
  // second range will be size of the scalarset
  // procedure for explicit representation
  // General procedure
  PermSet();
  bool In(int i) const { return in[i]; };
  void Add(int i) { for (int j=0; j<i; j++) in[j] = FALSE;};
  void Remove(int i) { in[i] = FALSE; };
};
bool PermSet::MoreThanOneRemain()
{
  int i,j;
  if (AlreadyOnlyOneRemain)
    return FALSE;
  else {
  }
  AlreadyOnlyOneRemain = TRUE;
  return FALSE;
}
PermSet::PermSet()
: Presentation(Simple)
{
  int i,j,k;
  if (  args->sym_alg.mode == argsym_alg::Exhaustive_Fast_Canonicalize) {

  /********************
   declaration of class variables
  ********************/
  in = new bool[1];

    // Set perm and revperm

    // setting up combination of permutations
    // for different scalarset
    int carry;
    size = 1;
    count = 1;
    for (i=0; i<1; i++)
      {
        carry = 1;
        in[i]= TRUE;
    }
  }
  else
  {

  /********************
   declaration of class variables
  ********************/
  in = new bool[1];
  in[0] = TRUE;
  }
}
void PermSet::ResetToSimple()
{
  int i;

  AlreadyOnlyOneRemain = FALSE;
  Presentation = Simple;
}
void PermSet::ResetToExplicit()
{
  for (int i=0; i<1; i++) in[i] = TRUE;
  Presentation = Explicit;
}
void PermSet::SimpleToExplicit()
{
  int i,j,k;
  int start, class_size;

  // Setup range for mapping

  // To be In or not to be

  // setup explicit representation 
  // Set perm and revperm
  for (i=0; i<1; i++)
    {
      in[i] = TRUE;
    }
  Presentation = Explicit;
  if (args->test_parameter1.value==0) Print_in_size();
}
void PermSet::SimpleToOne()
{
  int i,j,k;
  int class_size;
  int start;


  // Setup range for mapping
  Presentation = Explicit;
}
bool PermSet::NextPermutation()
{
  bool nexted = FALSE;
  int start, end; 
  int class_size;
  int temp;
  int j,k;

  // algorithm
  // for each class
  //   if forall in the same class reverse_sorted, 
  //     { sort again; goto next class }
  //   else
  //     {
  //       nexted = TRUE;
  //       for (j from l to r)
  // 	       if (for all j+ are reversed sorted)
  // 	         {
  // 	           swap j, j+1
  // 	           sort all j+ again
  // 	           break;
  // 	         }
  //     }
if (!nexted) return FALSE;
  return TRUE;
}

/********************
 Symmetry Class
 ********************/
class SymmetryClass
{
  PermSet Perm;
  bool BestInitialized;
  state BestPermutedState;

  // utilities
  void SetBestResult(int i, state* temp);
  void ResetBestResult() {BestInitialized = FALSE;};

public:
  // initializer
  SymmetryClass() : Perm(), BestInitialized(FALSE) {};
  ~SymmetryClass() {};

  void Normalize(state* s);

  void Exhaustive_Fast_Canonicalize(state *s);
  void Heuristic_Fast_Canonicalize(state *s);
  void Heuristic_Small_Mem_Canonicalize(state *s);
  void Heuristic_Fast_Normalize(state *s);

  void MultisetSort(state* s);
};


/********************
 Symmetry Class Members
 ********************/
void SymmetryClass::MultisetSort(state* s)
{
        mu_n.MultisetSort();
        mu_x.MultisetSort();
}
void SymmetryClass::Normalize(state* s)
{
  switch (args->sym_alg.mode) {
  case argsym_alg::Exhaustive_Fast_Canonicalize:
    Exhaustive_Fast_Canonicalize(s);
    break;
  case argsym_alg::Heuristic_Fast_Canonicalize:
    Heuristic_Fast_Canonicalize(s);
    break;
  case argsym_alg::Heuristic_Small_Mem_Canonicalize:
    Heuristic_Small_Mem_Canonicalize(s);
    break;
  case argsym_alg::Heuristic_Fast_Normalize:
    Heuristic_Fast_Normalize(s);
    break;
  default:
    Heuristic_Fast_Canonicalize(s);
  }
}

/********************
 Permute and Canonicalize function for different types
 ********************/
void mu_1_state::Permute(PermSet& Perm, int i) {};
void mu_1_state::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_state::Canonicalize(PermSet& Perm) {};
void mu_1_state::SimpleLimit(PermSet& Perm) {};
void mu_1_state::ArrayLimit(PermSet& Perm) {};
void mu_1_state::Limit(PermSet& Perm) {};
void mu_1_state::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_client::Permute(PermSet& Perm, int i) {};
void mu_1_client::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_client::Canonicalize(PermSet& Perm) {};
void mu_1_client::SimpleLimit(PermSet& Perm) {};
void mu_1_client::ArrayLimit(PermSet& Perm) {};
void mu_1_client::Limit(PermSet& Perm) {};
void mu_1_client::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1__type_0::Permute(PermSet& Perm, int i)
{
  static mu_1__type_0 temp("Permute_mu_1__type_0",-1);
  int j;
  for (j=0; j<16; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_0::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_0::Canonicalize(PermSet& Perm){};
void mu_1__type_0::SimpleLimit(PermSet& Perm){}
void mu_1__type_0::ArrayLimit(PermSet& Perm) {}
void mu_1__type_0::Limit(PermSet& Perm){}
void mu_1__type_0::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for scalarset array.\n"); };

/********************
 Auxiliary function for error trace printing
 ********************/
bool match(state* ns, StatePtr p)
{
  int i;
  static PermSet Perm;
  static state temp;
  StateCopy(&temp, ns);
  if (args->symmetry_reduction.value)
    {
      if (  args->sym_alg.mode == argsym_alg::Exhaustive_Fast_Canonicalize) {
        Perm.ResetToExplicit();
        for (i=0; i<Perm.count; i++)
          if (Perm.In(i))
            {
              if (ns != workingstate)
                  StateCopy(workingstate, ns);
              
              mu_n.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_n.MultisetSort();
              mu_x.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_x.MultisetSort();
            if (p.compare(workingstate)) {
              StateCopy(workingstate,&temp); return TRUE; }
          }
        StateCopy(workingstate,&temp);
        return FALSE;
      }
      else {
        Perm.ResetToSimple();
        Perm.SimpleToOne();
        if (ns != workingstate)
          StateCopy(workingstate, ns);

          mu_n.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_n.MultisetSort();
          mu_x.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_x.MultisetSort();
        if (p.compare(workingstate)) {
          StateCopy(workingstate,&temp); return TRUE; }

        while (Perm.NextPermutation())
          {
            if (ns != workingstate)
              StateCopy(workingstate, ns);
              
              mu_n.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_n.MultisetSort();
              mu_x.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_x.MultisetSort();
            if (p.compare(workingstate)) {
              StateCopy(workingstate,&temp); return TRUE; }
          }
        StateCopy(workingstate,&temp);
        return FALSE;
      }
    }
  if (!args->symmetry_reduction.value
      && args->multiset_reduction.value)
    {
      if (ns != workingstate)
          StateCopy(workingstate, ns);
      mu_n.MultisetSort();
      mu_x.MultisetSort();
      if (p.compare(workingstate)) {
        StateCopy(workingstate,&temp); return TRUE; }
      StateCopy(workingstate,&temp);
      return FALSE;
    }
  return (p.compare(ns));
}

/********************
 Canonicalization by fast exhaustive generation of
 all permutations
 ********************/
void SymmetryClass::Exhaustive_Fast_Canonicalize(state* s)
{
  int i;
  static state temp;
  Perm.ResetToExplicit();

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_n.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_n.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_x.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_x.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

};

/********************
 Canonicalization by fast simple variable canonicalization,
 fast simple scalarset array canonicalization,
 fast restriction on permutation set with simple scalarset array of scalarset,
 and fast exhaustive generation of
 all permutations for other variables
 ********************/
void SymmetryClass::Heuristic_Fast_Canonicalize(state* s)
{
  int i;
  static state temp;

  Perm.ResetToSimple();

};

/********************
 Canonicalization by fast simple variable canonicalization,
 fast simple scalarset array canonicalization,
 fast restriction on permutation set with simple scalarset array of scalarset,
 and fast exhaustive generation of
 all permutations for other variables
 and use less local memory
 ********************/
void SymmetryClass::Heuristic_Small_Mem_Canonicalize(state* s)
{
  unsigned long cycle;
  static state temp;

  Perm.ResetToSimple();

};

/********************
 Normalization by fast simple variable canonicalization,
 fast simple scalarset array canonicalization,
 fast restriction on permutation set with simple scalarset array of scalarset,
 and for all other variables, pick any remaining permutation
 ********************/
void SymmetryClass::Heuristic_Fast_Normalize(state* s)
{
  int i;
  static state temp;

  Perm.ResetToSimple();

};

/********************
  Include
 ********************/
#include "mu_epilog.hpp"
