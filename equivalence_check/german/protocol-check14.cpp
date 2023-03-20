/******************************
  Program "protocol-check14.m" compiled by "Caching Murphi Release 5.5.0"

  Murphi Last Compiled date: "Mar 12 2023"
 ******************************/

/********************
  Parameter
 ********************/
#define MURPHI_VERSION "Caching Murphi Release 5.5.0"
#define MURPHI_DATE "Mar 12 2023"
#define PROTOCOL_NAME "protocol-check14"
#define BITS_IN_WORLD 200
#define ALIGN
#define HASHC

/********************
  Include
 ********************/
#include "mu_prolog.hpp"

/********************
  Decl declaration
 ********************/

class mu_1_NODE: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_NODE& val) { return mu__byte::operator=((int) val); };
  mu_1_NODE (const char *name, int os): mu__byte(1, 2, 2, name, os) {};
  mu_1_NODE (void): mu__byte(1, 2, 2) {};
  mu_1_NODE (int val): mu__byte(1, 2, 2, "Parameter or function result.", 0)
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
mu_1_NODE mu_1_NODE_undefined_var;

class mu_1_DATA: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_DATA& val) { return mu__byte::operator=((int) val); };
  mu_1_DATA (const char *name, int os): mu__byte(1, 2, 2, name, os) {};
  mu_1_DATA (void): mu__byte(1, 2, 2) {};
  mu_1_DATA (int val): mu__byte(1, 2, 2, "Parameter or function result.", 0)
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
mu_1_DATA mu_1_DATA_undefined_var;

class mu_1_CACHE_STATE: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_CACHE_STATE& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_CACHE_STATE& val)
  {
    if (val.defined())
      return ( s << mu_1_CACHE_STATE::values[ int(val) - 1] );
    else return ( s << "Undefined" );
  };

  mu_1_CACHE_STATE (const char *name, int os): mu__byte(1, 3, 2, name, os) {};
  mu_1_CACHE_STATE (void): mu__byte(1, 3, 2) {};
  mu_1_CACHE_STATE (int val): mu__byte(1, 3, 2, "Parameter or function result.", 0)
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

const char *mu_1_CACHE_STATE::values[] = {"I","S","E",NULL };

/*** end of enum declaration ***/
mu_1_CACHE_STATE mu_1_CACHE_STATE_undefined_var;

class mu_1_CACHE
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_CACHE_STATE mu_State;
  mu_1_DATA mu_Data;
  mu_1_CACHE ( const char *n, int os ) { set_self(n,os); };
  mu_1_CACHE ( void ) {};

  virtual ~mu_1_CACHE(); 
friend int CompareWeight(mu_1_CACHE& a, mu_1_CACHE& b)
  {
    int w;
    w = CompareWeight(a.mu_State, b.mu_State);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_CACHE& a, mu_1_CACHE& b)
  {
    int w;
    w = Compare(a.mu_State, b.mu_State);
    if (w!=0) return w;
    w = Compare(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
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
    mu_State.MultisetSort();
    mu_Data.MultisetSort();
  }
  void print_statistic()
  {
    mu_State.print_statistic();
    mu_Data.print_statistic();
  }
  void clear() {
    mu_State.clear();
    mu_Data.clear();
 };
  void undefine() {
    mu_State.undefine();
    mu_Data.undefine();
 };
  void reset() {
    mu_State.reset();
    mu_Data.reset();
 };
  void print() {
    mu_State.print();
    mu_Data.print();
  };
  void print_diff(state *prevstate) {
    mu_State.print_diff(prevstate);
    mu_Data.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_State.to_state(thestate);
    mu_Data.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_CACHE& operator= (const mu_1_CACHE& from) {
    mu_State.value(from.mu_State.value());
    mu_Data.value(from.mu_Data.value());
    return *this;
  };
};

  void mu_1_CACHE::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_CACHE::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_CACHE::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_State.set_self_2(name, ".State", os + 0 ); else mu_State.set_self_2(NULL, NULL, 0);
  if (name) mu_Data.set_self_2(name, ".Data", os + 8 ); else mu_Data.set_self_2(NULL, NULL, 0);
}

mu_1_CACHE::~mu_1_CACHE()
{
}

/*** end record declaration ***/
mu_1_CACHE mu_1_CACHE_undefined_var;

class mu_1_MSG_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_MSG_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_MSG_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_MSG_CMD::values[ int(val) - 4] );
    else return ( s << "Undefined" );
  };

  mu_1_MSG_CMD (const char *name, int os): mu__byte(4, 10, 3, name, os) {};
  mu_1_MSG_CMD (void): mu__byte(4, 10, 3) {};
  mu_1_MSG_CMD (int val): mu__byte(4, 10, 3, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -4]; };
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
      cout << name << ":" << values[ value() -4] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_MSG_CMD::values[] = {"Empty","ReqS","ReqE","Inv","InvAck","GntS","GntE",NULL };

/*** end of enum declaration ***/
mu_1_MSG_CMD mu_1_MSG_CMD_undefined_var;

class mu_1_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_MSG_CMD mu_Cmd;
  mu_1_DATA mu_Data;
  mu_1_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_MSG ( void ) {};

  virtual ~mu_1_MSG(); 
friend int CompareWeight(mu_1_MSG& a, mu_1_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_MSG& a, mu_1_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = Compare(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
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
    mu_Cmd.MultisetSort();
    mu_Data.MultisetSort();
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
    mu_Data.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
    mu_Data.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
    mu_Data.undefine();
 };
  void reset() {
    mu_Cmd.reset();
    mu_Data.reset();
 };
  void print() {
    mu_Cmd.print();
    mu_Data.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
    mu_Data.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
    mu_Data.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_MSG& operator= (const mu_1_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    mu_Data.value(from.mu_Data.value());
    return *this;
  };
};

  void mu_1_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
  if (name) mu_Data.set_self_2(name, ".Data", os + 8 ); else mu_Data.set_self_2(NULL, NULL, 0);
}

mu_1_MSG::~mu_1_MSG()
{
}

/*** end record declaration ***/
mu_1_MSG mu_1_MSG_undefined_var;

class mu_1__type_0
{
 public:
  mu_1_CACHE array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_0 (const char *n, int os) { set_self(n, os); };
  mu_1__type_0 ( void ) {};
  virtual ~mu_1__type_0 ();
  mu_1_CACHE& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
    for (int i = 0; i < 2; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
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
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 16 + os);
    delete[] s;
  }
};
mu_1__type_0::~mu_1__type_0()
{
}
/*** end array declaration ***/
mu_1__type_0 mu_1__type_0_undefined_var;

class mu_1__type_1
{
 public:
  mu_1_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_1 (const char *n, int os) { set_self(n, os); };
  mu_1__type_1 ( void ) {};
  virtual ~mu_1__type_1 ();
  mu_1_MSG& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
  mu_1__type_1& operator= (const mu_1__type_1& from)
  {
    for (int i = 0; i < 2; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_1& a, mu_1__type_1& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_1& a, mu_1__type_1& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_1::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_1::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_1::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 16 + os);
    delete[] s;
  }
};
mu_1__type_1::~mu_1__type_1()
{
}
/*** end array declaration ***/
mu_1__type_1 mu_1__type_1_undefined_var;

class mu_1__type_2
{
 public:
  mu_1_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_2 (const char *n, int os) { set_self(n, os); };
  mu_1__type_2 ( void ) {};
  virtual ~mu_1__type_2 ();
  mu_1_MSG& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
  mu_1__type_2& operator= (const mu_1__type_2& from)
  {
    for (int i = 0; i < 2; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_2& a, mu_1__type_2& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_2& a, mu_1__type_2& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_2::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_2::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_2::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 16 + os);
    delete[] s;
  }
};
mu_1__type_2::~mu_1__type_2()
{
}
/*** end array declaration ***/
mu_1__type_2 mu_1__type_2_undefined_var;

class mu_1__type_3
{
 public:
  mu_1_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_3 (const char *n, int os) { set_self(n, os); };
  mu_1__type_3 ( void ) {};
  virtual ~mu_1__type_3 ();
  mu_1_MSG& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
  mu_1__type_3& operator= (const mu_1__type_3& from)
  {
    for (int i = 0; i < 2; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_3::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_3::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_3::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 16 + os);
    delete[] s;
  }
};
mu_1__type_3::~mu_1__type_3()
{
}
/*** end array declaration ***/
mu_1__type_3 mu_1__type_3_undefined_var;

class mu_1__type_4
{
 public:
  mu_0_boolean array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_4 (const char *n, int os) { set_self(n, os); };
  mu_1__type_4 ( void ) {};
  virtual ~mu_1__type_4 ();
  mu_0_boolean& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
  mu_1__type_4& operator= (const mu_1__type_4& from)
  {
    for (int i = 0; i < 2; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_4& a, mu_1__type_4& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_4& a, mu_1__type_4& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_4::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_4::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_4::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
    delete[] s;
  }
};
mu_1__type_4::~mu_1__type_4()
{
}
/*** end array declaration ***/
mu_1__type_4 mu_1__type_4_undefined_var;

class mu_1__type_5
{
 public:
  mu_0_boolean array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_5 (const char *n, int os) { set_self(n, os); };
  mu_1__type_5 ( void ) {};
  virtual ~mu_1__type_5 ();
  mu_0_boolean& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 2 ) )
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
  mu_1__type_5& operator= (const mu_1__type_5& from)
  {
    for (int i = 0; i < 2; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<2; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<2; i++) {
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
    for (int i=0; i<2; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<2; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 2; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 2; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 2; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 2; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 2; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 2; i++)
      array[i].print_diff(prevstate);
  };
};

  void mu_1__type_5::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1__type_5::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1__type_5::set_self( const char *n, int os)
{
  char* s;
  name = (char *)n;
  for(int i = 0; i < 2; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
    delete[] s;
  }
};
mu_1__type_5::~mu_1__type_5()
{
}
/*** end array declaration ***/
mu_1__type_5 mu_1__type_5_undefined_var;

const int mu_NODE_NUM = 2;
const int mu_DATA_NUM = 2;
const int mu_I = 1;
const int mu_S = 2;
const int mu_E = 3;
const int mu_Empty = 4;
const int mu_ReqS = 5;
const int mu_ReqE = 6;
const int mu_Inv = 7;
const int mu_InvAck = 8;
const int mu_GntS = 9;
const int mu_GntE = 10;
/*** Variable declaration ***/
mu_1__type_0 mu_Cache("Cache",0);

/*** Variable declaration ***/
mu_1__type_1 mu_Chan1("Chan1",32);

/*** Variable declaration ***/
mu_1__type_2 mu_Chan2("Chan2",64);

/*** Variable declaration ***/
mu_1__type_3 mu_Chan3("Chan3",96);

/*** Variable declaration ***/
mu_1__type_4 mu_InvSet("InvSet",128);

/*** Variable declaration ***/
mu_1__type_5 mu_ShrSet("ShrSet",144);

/*** Variable declaration ***/
mu_0_boolean mu_ExGntd("ExGntd",160);

/*** Variable declaration ***/
mu_1_MSG_CMD mu_CurCmd("CurCmd",168);

/*** Variable declaration ***/
mu_1_NODE mu_CurPtr("CurPtr",176);

/*** Variable declaration ***/
mu_1_DATA mu_MemData("MemData",184);

/*** Variable declaration ***/
mu_1_DATA mu_AuxData("AuxData",192);





/********************
  The world
 ********************/
void world_class::clear()
{
  mu_Cache.clear();
  mu_Chan1.clear();
  mu_Chan2.clear();
  mu_Chan3.clear();
  mu_InvSet.clear();
  mu_ShrSet.clear();
  mu_ExGntd.clear();
  mu_CurCmd.clear();
  mu_CurPtr.clear();
  mu_MemData.clear();
  mu_AuxData.clear();
}
void world_class::undefine()
{
  mu_Cache.undefine();
  mu_Chan1.undefine();
  mu_Chan2.undefine();
  mu_Chan3.undefine();
  mu_InvSet.undefine();
  mu_ShrSet.undefine();
  mu_ExGntd.undefine();
  mu_CurCmd.undefine();
  mu_CurPtr.undefine();
  mu_MemData.undefine();
  mu_AuxData.undefine();
}
void world_class::reset()
{
  mu_Cache.reset();
  mu_Chan1.reset();
  mu_Chan2.reset();
  mu_Chan3.reset();
  mu_InvSet.reset();
  mu_ShrSet.reset();
  mu_ExGntd.reset();
  mu_CurCmd.reset();
  mu_CurPtr.reset();
  mu_MemData.reset();
  mu_AuxData.reset();
}
void world_class::print()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Cache.print();
  mu_Chan1.print();
  mu_Chan2.print();
  mu_Chan3.print();
  mu_InvSet.print();
  mu_ShrSet.print();
  mu_ExGntd.print();
  mu_CurCmd.print();
  mu_CurPtr.print();
  mu_MemData.print();
  mu_AuxData.print();
    num_calls--;
}
}
void world_class::print_statistic()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Cache.print_statistic();
  mu_Chan1.print_statistic();
  mu_Chan2.print_statistic();
  mu_Chan3.print_statistic();
  mu_InvSet.print_statistic();
  mu_ShrSet.print_statistic();
  mu_ExGntd.print_statistic();
  mu_CurCmd.print_statistic();
  mu_CurPtr.print_statistic();
  mu_MemData.print_statistic();
  mu_AuxData.print_statistic();
    num_calls--;
}
}
void world_class::print_diff( state *prevstate )
{
  if ( prevstate != NULL )
  {
    mu_Cache.print_diff(prevstate);
    mu_Chan1.print_diff(prevstate);
    mu_Chan2.print_diff(prevstate);
    mu_Chan3.print_diff(prevstate);
    mu_InvSet.print_diff(prevstate);
    mu_ShrSet.print_diff(prevstate);
    mu_ExGntd.print_diff(prevstate);
    mu_CurCmd.print_diff(prevstate);
    mu_CurPtr.print_diff(prevstate);
    mu_MemData.print_diff(prevstate);
    mu_AuxData.print_diff(prevstate);
  }
  else
print();
}
void world_class::to_state(state *newstate)
{
  mu_Cache.to_state( newstate );
  mu_Chan1.to_state( newstate );
  mu_Chan2.to_state( newstate );
  mu_Chan3.to_state( newstate );
  mu_InvSet.to_state( newstate );
  mu_ShrSet.to_state( newstate );
  mu_ExGntd.to_state( newstate );
  mu_CurCmd.to_state( newstate );
  mu_CurPtr.to_state( newstate );
  mu_MemData.to_state( newstate );
  mu_AuxData.to_state( newstate );
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
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("RecvInvAck, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr6;
  if (!((mu_Chan3[mu_i].mu_Cmd) == (mu_InvAck))) mu__boolexpr6 = FALSE ;
  else {
  mu__boolexpr6 = ((mu_CurCmd) != (mu_Empty)) ; 
}
    return mu__boolexpr6;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 0;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 2 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr7;
  if (!((mu_Chan3[mu_i].mu_Cmd) == (mu_InvAck))) mu__boolexpr7 = FALSE ;
  else {
  mu__boolexpr7 = ((mu_CurCmd) != (mu_Empty)) ; 
}
	      if (mu__boolexpr7) {
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
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan3[mu_i].mu_Cmd = mu_Empty;
mu_ShrSet[mu_i] = mu_false;
if ( (mu_ExGntd) == (mu_true) )
{
mu_ExGntd = mu_false;
mu_MemData = mu_Chan3[mu_i].mu_Data;
}
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
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendInvAck, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr8;
  if (!((mu_Chan2[mu_i].mu_Cmd) == (mu_Inv))) mu__boolexpr8 = FALSE ;
  else {
  mu__boolexpr8 = ((mu_Chan3[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
    return mu__boolexpr8;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 2;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 4 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr9;
  if (!((mu_Chan2[mu_i].mu_Cmd) == (mu_Inv))) mu__boolexpr9 = FALSE ;
  else {
  mu__boolexpr9 = ((mu_Chan3[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
	      if (mu__boolexpr9) {
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
    r = what_rule - 2;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan2[mu_i].mu_Cmd = mu_Empty;
mu_Chan3[mu_i].mu_Cmd = mu_InvAck;
if ( (mu_Cache[mu_i].mu_State) == (mu_E) )
{
mu_Chan3[mu_i].mu_Data = mu_Cache[mu_i].mu_Data;
}
mu_Cache[mu_i].mu_State = mu_I;
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
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("RecvGntE, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return (mu_Chan2[mu_i].mu_Cmd) == (mu_GntE);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 4;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 6 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Chan2[mu_i].mu_Cmd) == (mu_GntE)) {
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
    r = what_rule - 4;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Cache[mu_i].mu_State = mu_E;
mu_Cache[mu_i].mu_Data = mu_Chan2[mu_i].mu_Data;
mu_Chan2[mu_i].mu_Cmd = mu_Empty;
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
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("RecvGntS, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return (mu_Chan2[mu_i].mu_Cmd) == (mu_GntS);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 6;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 8 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Chan2[mu_i].mu_Cmd) == (mu_GntS)) {
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
    r = what_rule - 6;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Cache[mu_i].mu_State = mu_S;
mu_Cache[mu_i].mu_Data = mu_Chan2[mu_i].mu_Data;
mu_Chan2[mu_i].mu_Cmd = mu_Empty;
  };

};
/******************** RuleBase4 ********************/
class RuleBase4
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendGntE, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr10;
bool mu__boolexpr11;
bool mu__boolexpr12;
bool mu__boolexpr13;
  if (!((mu_CurCmd) == (mu_ReqE))) mu__boolexpr13 = FALSE ;
  else {
  mu__boolexpr13 = ((mu_CurPtr) == (mu_i)) ; 
}
  if (!(mu__boolexpr13)) mu__boolexpr12 = FALSE ;
  else {
  mu__boolexpr12 = ((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr12)) mu__boolexpr11 = FALSE ;
  else {
  mu__boolexpr11 = ((mu_ExGntd) == (mu_false)) ; 
}
  if (!(mu__boolexpr11)) mu__boolexpr10 = FALSE ;
  else {
bool mu__quant14; 
mu__quant14 = TRUE;
{
for(int mu_j = 1; mu_j <= 2; mu_j++) {
if ( !((mu_ShrSet[mu_j]) == (mu_false)) )
  { mu__quant14 = FALSE; break; }
};
};
  mu__boolexpr10 = (mu__quant14) ; 
}
    return mu__boolexpr10;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 8;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 10 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr15;
bool mu__boolexpr16;
bool mu__boolexpr17;
bool mu__boolexpr18;
  if (!((mu_CurCmd) == (mu_ReqE))) mu__boolexpr18 = FALSE ;
  else {
  mu__boolexpr18 = ((mu_CurPtr) == (mu_i)) ; 
}
  if (!(mu__boolexpr18)) mu__boolexpr17 = FALSE ;
  else {
  mu__boolexpr17 = ((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr17)) mu__boolexpr16 = FALSE ;
  else {
  mu__boolexpr16 = ((mu_ExGntd) == (mu_false)) ; 
}
  if (!(mu__boolexpr16)) mu__boolexpr15 = FALSE ;
  else {
bool mu__quant19; 
mu__quant19 = TRUE;
{
for(int mu_j = 1; mu_j <= 2; mu_j++) {
if ( !((mu_ShrSet[mu_j]) == (mu_false)) )
  { mu__quant19 = FALSE; break; }
};
};
  mu__boolexpr15 = (mu__quant19) ; 
}
	      if (mu__boolexpr15) {
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
    r = what_rule - 8;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan2[mu_i].mu_Cmd = mu_GntE;
if (mu_MemData.isundefined())
  mu_Chan2[mu_i].mu_Data.undefine();
else
  mu_Chan2[mu_i].mu_Data = mu_MemData;
mu_ShrSet[mu_i] = mu_true;
mu_ExGntd = mu_true;
mu_CurCmd = mu_Empty;
  };

};
/******************** RuleBase5 ********************/
class RuleBase5
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendGntS, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr20;
bool mu__boolexpr21;
bool mu__boolexpr22;
  if (!((mu_CurCmd) == (mu_ReqS))) mu__boolexpr22 = FALSE ;
  else {
  mu__boolexpr22 = ((mu_CurPtr) == (mu_i)) ; 
}
  if (!(mu__boolexpr22)) mu__boolexpr21 = FALSE ;
  else {
  mu__boolexpr21 = ((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr21)) mu__boolexpr20 = FALSE ;
  else {
  mu__boolexpr20 = ((mu_ExGntd) == (mu_false)) ; 
}
    return mu__boolexpr20;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 10;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 12 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr23;
bool mu__boolexpr24;
bool mu__boolexpr25;
  if (!((mu_CurCmd) == (mu_ReqS))) mu__boolexpr25 = FALSE ;
  else {
  mu__boolexpr25 = ((mu_CurPtr) == (mu_i)) ; 
}
  if (!(mu__boolexpr25)) mu__boolexpr24 = FALSE ;
  else {
  mu__boolexpr24 = ((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr24)) mu__boolexpr23 = FALSE ;
  else {
  mu__boolexpr23 = ((mu_ExGntd) == (mu_false)) ; 
}
	      if (mu__boolexpr23) {
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
    r = what_rule - 10;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan2[mu_i].mu_Cmd = mu_GntS;
if (mu_MemData.isundefined())
  mu_Chan2[mu_i].mu_Data.undefine();
else
  mu_Chan2[mu_i].mu_Data = mu_MemData;
mu_ShrSet[mu_i] = mu_true;
mu_CurCmd = mu_Empty;
  };

};
/******************** RuleBase6 ********************/
class RuleBase6
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendInv, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr26;
bool mu__boolexpr27;
  if (!((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr27 = FALSE ;
  else {
  mu__boolexpr27 = ((mu_InvSet[mu_i]) == (mu_true)) ; 
}
  if (!(mu__boolexpr27)) mu__boolexpr26 = FALSE ;
  else {
bool mu__boolexpr28;
  if ((mu_CurCmd) == (mu_ReqE)) mu__boolexpr28 = TRUE ;
  else {
bool mu__boolexpr29;
  if (!((mu_CurCmd) == (mu_ReqS))) mu__boolexpr29 = FALSE ;
  else {
  mu__boolexpr29 = ((mu_ExGntd) == (mu_true)) ; 
}
  mu__boolexpr28 = (mu__boolexpr29) ; 
}
  mu__boolexpr26 = (mu__boolexpr28) ; 
}
    return mu__boolexpr26;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 12;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 14 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr30;
bool mu__boolexpr31;
  if (!((mu_Chan2[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr31 = FALSE ;
  else {
  mu__boolexpr31 = ((mu_InvSet[mu_i]) == (mu_true)) ; 
}
  if (!(mu__boolexpr31)) mu__boolexpr30 = FALSE ;
  else {
bool mu__boolexpr32;
  if ((mu_CurCmd) == (mu_ReqE)) mu__boolexpr32 = TRUE ;
  else {
bool mu__boolexpr33;
  if (!((mu_CurCmd) == (mu_ReqS))) mu__boolexpr33 = FALSE ;
  else {
  mu__boolexpr33 = ((mu_ExGntd) == (mu_true)) ; 
}
  mu__boolexpr32 = (mu__boolexpr33) ; 
}
  mu__boolexpr30 = (mu__boolexpr32) ; 
}
	      if (mu__boolexpr30) {
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
    r = what_rule - 12;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan2[mu_i].mu_Cmd = mu_Inv;
mu_InvSet[mu_i] = mu_false;
  };

};
/******************** RuleBase7 ********************/
class RuleBase7
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("RecvReqE, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr34;
  if (!((mu_CurCmd) == (mu_Empty))) mu__boolexpr34 = FALSE ;
  else {
  mu__boolexpr34 = ((mu_Chan1[mu_i].mu_Cmd) == (mu_ReqE)) ; 
}
    return mu__boolexpr34;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 14;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 16 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr35;
  if (!((mu_CurCmd) == (mu_Empty))) mu__boolexpr35 = FALSE ;
  else {
  mu__boolexpr35 = ((mu_Chan1[mu_i].mu_Cmd) == (mu_ReqE)) ; 
}
	      if (mu__boolexpr35) {
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
    r = what_rule - 14;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_CurCmd = mu_ReqE;
mu_CurPtr = mu_i;
mu_Chan1[mu_i].mu_Cmd = mu_Empty;
{
for(int mu_j = 1; mu_j <= 2; mu_j++) {
mu_InvSet[mu_j] = mu_ShrSet[mu_j];
};
};
  };

};
/******************** RuleBase8 ********************/
class RuleBase8
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("RecvReqS, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr36;
  if (!((mu_CurCmd) == (mu_Empty))) mu__boolexpr36 = FALSE ;
  else {
  mu__boolexpr36 = ((mu_Chan1[mu_i].mu_Cmd) == (mu_ReqS)) ; 
}
    return mu__boolexpr36;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 16;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 18 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr37;
  if (!((mu_CurCmd) == (mu_Empty))) mu__boolexpr37 = FALSE ;
  else {
  mu__boolexpr37 = ((mu_Chan1[mu_i].mu_Cmd) == (mu_ReqS)) ; 
}
	      if (mu__boolexpr37) {
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
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_CurCmd = mu_ReqS;
mu_CurPtr = mu_i;
mu_Chan1[mu_i].mu_Cmd = mu_Empty;
{
for(int mu_j = 1; mu_j <= 2; mu_j++) {
mu_InvSet[mu_j] = mu_ShrSet[mu_j];
};
};
  };

};
/******************** RuleBase9 ********************/
class RuleBase9
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendReqE, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr38;
  if (!((mu_Chan1[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr38 = FALSE ;
  else {
bool mu__boolexpr39;
  if ((mu_Cache[mu_i].mu_State) == (mu_I)) mu__boolexpr39 = TRUE ;
  else {
  mu__boolexpr39 = ((mu_Cache[mu_i].mu_State) == (mu_S)) ; 
}
  mu__boolexpr38 = (mu__boolexpr39) ; 
}
    return mu__boolexpr38;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 18;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 20 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr40;
  if (!((mu_Chan1[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr40 = FALSE ;
  else {
bool mu__boolexpr41;
  if ((mu_Cache[mu_i].mu_State) == (mu_I)) mu__boolexpr41 = TRUE ;
  else {
  mu__boolexpr41 = ((mu_Cache[mu_i].mu_State) == (mu_S)) ; 
}
  mu__boolexpr40 = (mu__boolexpr41) ; 
}
	      if (mu__boolexpr40) {
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
    r = what_rule - 18;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan1[mu_i].mu_Cmd = mu_ReqE;
  };

};
/******************** RuleBase10 ********************/
class RuleBase10
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("SendReqS, i:%s", mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr42;
  if (!((mu_Chan1[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr42 = FALSE ;
  else {
  mu__boolexpr42 = ((mu_Cache[mu_i].mu_State) == (mu_I)) ; 
}
    return mu__boolexpr42;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 20;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 22 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr43;
  if (!((mu_Chan1[mu_i].mu_Cmd) == (mu_Empty))) mu__boolexpr43 = FALSE ;
  else {
  mu__boolexpr43 = ((mu_Cache[mu_i].mu_State) == (mu_I)) ; 
}
	      if (mu__boolexpr43) {
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
    r = what_rule - 20;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Chan1[mu_i].mu_Cmd = mu_ReqS;
  };

};
/******************** RuleBase11 ********************/
class RuleBase11
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("Store, d:%s, i:%s", mu_d.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    return (mu_Cache[mu_i].mu_State) == (mu_E);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 22;
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 26 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Cache[mu_i].mu_State) == (mu_E)) {
		if ( ( TRUE  ) )
		  return;
		else
		  what_rule++;
	      }
	      else
		what_rule += 2;
	}
	else
	  what_rule += 2;
    r = what_rule - 22;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_i;
    mu_i.value((r % 2) + 1);
    r = r / 2;
mu_Cache[mu_i].mu_Data = mu_d;
mu_AuxData = mu_d;
  };

};
class NextStateGenerator
{
  RuleBase0 R0;
  RuleBase1 R1;
  RuleBase2 R2;
  RuleBase3 R3;
  RuleBase4 R4;
  RuleBase5 R5;
  RuleBase6 R6;
  RuleBase7 R7;
  RuleBase8 R8;
  RuleBase9 R9;
  RuleBase10 R10;
  RuleBase11 R11;
public:
void SetNextEnabledRule(unsigned & what_rule)
{
  category = CONDITION;
  if (what_rule<2)
    { R0.NextRule(what_rule);
      if (what_rule<2) return; }
  if (what_rule>=2 && what_rule<4)
    { R1.NextRule(what_rule);
      if (what_rule<4) return; }
  if (what_rule>=4 && what_rule<6)
    { R2.NextRule(what_rule);
      if (what_rule<6) return; }
  if (what_rule>=6 && what_rule<8)
    { R3.NextRule(what_rule);
      if (what_rule<8) return; }
  if (what_rule>=8 && what_rule<10)
    { R4.NextRule(what_rule);
      if (what_rule<10) return; }
  if (what_rule>=10 && what_rule<12)
    { R5.NextRule(what_rule);
      if (what_rule<12) return; }
  if (what_rule>=12 && what_rule<14)
    { R6.NextRule(what_rule);
      if (what_rule<14) return; }
  if (what_rule>=14 && what_rule<16)
    { R7.NextRule(what_rule);
      if (what_rule<16) return; }
  if (what_rule>=16 && what_rule<18)
    { R8.NextRule(what_rule);
      if (what_rule<18) return; }
  if (what_rule>=18 && what_rule<20)
    { R9.NextRule(what_rule);
      if (what_rule<20) return; }
  if (what_rule>=20 && what_rule<22)
    { R10.NextRule(what_rule);
      if (what_rule<22) return; }
  if (what_rule>=22 && what_rule<26)
    { R11.NextRule(what_rule);
      if (what_rule<26) return; }
}
bool Condition(unsigned r)
{
  category = CONDITION;
  if (r<=1) return R0.Condition(r-0);
  if (r>=2 && r<=3) return R1.Condition(r-2);
  if (r>=4 && r<=5) return R2.Condition(r-4);
  if (r>=6 && r<=7) return R3.Condition(r-6);
  if (r>=8 && r<=9) return R4.Condition(r-8);
  if (r>=10 && r<=11) return R5.Condition(r-10);
  if (r>=12 && r<=13) return R6.Condition(r-12);
  if (r>=14 && r<=15) return R7.Condition(r-14);
  if (r>=16 && r<=17) return R8.Condition(r-16);
  if (r>=18 && r<=19) return R9.Condition(r-18);
  if (r>=20 && r<=21) return R10.Condition(r-20);
  if (r>=22 && r<=25) return R11.Condition(r-22);
Error.Notrace("Internal: NextStateGenerator -- checking condition for nonexisting rule.");
return 0;}
void Code(unsigned r)
{
  if (r<=1) { R0.Code(r-0); return; } 
  if (r>=2 && r<=3) { R1.Code(r-2); return; } 
  if (r>=4 && r<=5) { R2.Code(r-4); return; } 
  if (r>=6 && r<=7) { R3.Code(r-6); return; } 
  if (r>=8 && r<=9) { R4.Code(r-8); return; } 
  if (r>=10 && r<=11) { R5.Code(r-10); return; } 
  if (r>=12 && r<=13) { R6.Code(r-12); return; } 
  if (r>=14 && r<=15) { R7.Code(r-14); return; } 
  if (r>=16 && r<=17) { R8.Code(r-16); return; } 
  if (r>=18 && r<=19) { R9.Code(r-18); return; } 
  if (r>=20 && r<=21) { R10.Code(r-20); return; } 
  if (r>=22 && r<=25) { R11.Code(r-22); return; } 
}
int Priority(unsigned short r)
{
  if (r<=1) { return R0.Priority(); } 
  if (r>=2 && r<=3) { return R1.Priority(); } 
  if (r>=4 && r<=5) { return R2.Priority(); } 
  if (r>=6 && r<=7) { return R3.Priority(); } 
  if (r>=8 && r<=9) { return R4.Priority(); } 
  if (r>=10 && r<=11) { return R5.Priority(); } 
  if (r>=12 && r<=13) { return R6.Priority(); } 
  if (r>=14 && r<=15) { return R7.Priority(); } 
  if (r>=16 && r<=17) { return R8.Priority(); } 
  if (r>=18 && r<=19) { return R9.Priority(); } 
  if (r>=20 && r<=21) { return R10.Priority(); } 
  if (r>=22 && r<=25) { return R11.Priority(); } 
return 0;}
char * Name(unsigned r)
{
  if (r<=1) return R0.Name(r-0);
  if (r>=2 && r<=3) return R1.Name(r-2);
  if (r>=4 && r<=5) return R2.Name(r-4);
  if (r>=6 && r<=7) return R3.Name(r-6);
  if (r>=8 && r<=9) return R4.Name(r-8);
  if (r>=10 && r<=11) return R5.Name(r-10);
  if (r>=12 && r<=13) return R6.Name(r-12);
  if (r>=14 && r<=15) return R7.Name(r-14);
  if (r>=16 && r<=17) return R8.Name(r-16);
  if (r>=18 && r<=19) return R9.Name(r-18);
  if (r>=20 && r<=21) return R10.Name(r-20);
  if (r>=22 && r<=25) return R11.Name(r-22);
  return NULL;
}
};
const unsigned numrules = 26;

/********************
  parameter
 ********************/
#define RULES_IN_WORLD 26


/********************
  Startstate records
 ********************/
/******************** StartStateBase0 ********************/
class StartStateBase0
{
public:
  char * Name(unsigned short r)
  {
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("Init, d:%s", mu_d.Name());
  }
  void Code(unsigned short r)
  {
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
{
for(int mu_i = 1; mu_i <= 2; mu_i++) {
mu_Chan1[mu_i].mu_Cmd = mu_Empty;
mu_Chan2[mu_i].mu_Cmd = mu_Empty;
mu_Chan3[mu_i].mu_Cmd = mu_Empty;
mu_Cache[mu_i].mu_State = mu_I;
mu_InvSet[mu_i] = mu_false;
mu_ShrSet[mu_i] = mu_false;
};
};
mu_ExGntd = mu_false;
mu_CurCmd = mu_Empty;
mu_MemData = mu_d;
mu_AuxData = mu_d;
  };

};
class StartStateGenerator
{
  StartStateBase0 S0;
public:
void Code(unsigned short r)
{
  if (r<=1) { S0.Code(r-0); return; }
}
char * Name(unsigned short r)
{
  if (r<=1) return S0.Name(r-0);
  return NULL;
}
};
const rulerec startstates[] = {
{ NULL, NULL, NULL, FALSE},
};
unsigned short StartStateManager::numstartstates = 2;

/********************
  Invariant records
 ********************/
int mu__invariant_44() // Invariant "unreachableStateN"
{
bool mu__boolexpr45;
bool mu__boolexpr46;
bool mu__boolexpr47;
bool mu__boolexpr48;
bool mu__boolexpr49;
bool mu__boolexpr50;
bool mu__boolexpr51;
bool mu__boolexpr52;
bool mu__boolexpr53;
bool mu__boolexpr54;
bool mu__boolexpr55;
bool mu__boolexpr56;
bool mu__boolexpr57;
bool mu__boolexpr58;
bool mu__boolexpr59;
bool mu__boolexpr60;
bool mu__boolexpr61;
bool mu__boolexpr62;
bool mu__boolexpr63;
bool mu__boolexpr64;
bool mu__boolexpr65;
bool mu__boolexpr66;
bool mu__boolexpr67;
bool mu__boolexpr68;
  if (!((mu_Cache[1].mu_State) == (mu_E))) mu__boolexpr68 = FALSE ;
  else {
  mu__boolexpr68 = ((mu_Cache[1].mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr68)) mu__boolexpr67 = FALSE ;
  else {
  mu__boolexpr67 = ((mu_Cache[2].mu_State) == (mu_E)) ; 
}
  if (!(mu__boolexpr67)) mu__boolexpr66 = FALSE ;
  else {
  mu__boolexpr66 = ((mu_Cache[2].mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr66)) mu__boolexpr65 = FALSE ;
  else {
  mu__boolexpr65 = ((mu_Chan1[1].mu_Cmd) == (mu_ReqS)) ; 
}
  if (!(mu__boolexpr65)) mu__boolexpr64 = FALSE ;
  else {
  mu__boolexpr64 = ((mu_Chan1[1].mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr64)) mu__boolexpr63 = FALSE ;
  else {
  mu__boolexpr63 = ((mu_Chan1[2].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr63)) mu__boolexpr62 = FALSE ;
  else {
  mu__boolexpr62 = ((mu_Chan1[2].mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr62)) mu__boolexpr61 = FALSE ;
  else {
  mu__boolexpr61 = ((mu_Chan2[1].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr61)) mu__boolexpr60 = FALSE ;
  else {
  mu__boolexpr60 = ((mu_Chan2[1].mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr60)) mu__boolexpr59 = FALSE ;
  else {
  mu__boolexpr59 = ((mu_Chan2[2].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr59)) mu__boolexpr58 = FALSE ;
  else {
  mu__boolexpr58 = ((mu_Chan2[2].mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr58)) mu__boolexpr57 = FALSE ;
  else {
  mu__boolexpr57 = ((mu_Chan3[1].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr57)) mu__boolexpr56 = FALSE ;
  else {
  mu__boolexpr56 = ((mu_Chan3[1].mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr56)) mu__boolexpr55 = FALSE ;
  else {
  mu__boolexpr55 = ((mu_Chan3[2].mu_Cmd) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr55)) mu__boolexpr54 = FALSE ;
  else {
  mu__boolexpr54 = ((mu_Chan3[2].mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr54)) mu__boolexpr53 = FALSE ;
  else {
  mu__boolexpr53 = ((mu_InvSet[1]) == (mu_true)) ; 
}
  if (!(mu__boolexpr53)) mu__boolexpr52 = FALSE ;
  else {
  mu__boolexpr52 = ((mu_InvSet[2]) == (mu_false)) ; 
}
  if (!(mu__boolexpr52)) mu__boolexpr51 = FALSE ;
  else {
  mu__boolexpr51 = ((mu_ShrSet[1]) == (mu_true)) ; 
}
  if (!(mu__boolexpr51)) mu__boolexpr50 = FALSE ;
  else {
  mu__boolexpr50 = ((mu_ShrSet[2]) == (mu_false)) ; 
}
  if (!(mu__boolexpr50)) mu__boolexpr49 = FALSE ;
  else {
  mu__boolexpr49 = ((mu_ExGntd) == (mu_true)) ; 
}
  if (!(mu__boolexpr49)) mu__boolexpr48 = FALSE ;
  else {
  mu__boolexpr48 = ((mu_CurCmd) == (mu_ReqE)) ; 
}
  if (!(mu__boolexpr48)) mu__boolexpr47 = FALSE ;
  else {
  mu__boolexpr47 = ((mu_CurPtr) == (1)) ; 
}
  if (!(mu__boolexpr47)) mu__boolexpr46 = FALSE ;
  else {
  mu__boolexpr46 = ((mu_MemData) == (2)) ; 
}
  if (!(mu__boolexpr46)) mu__boolexpr45 = FALSE ;
  else {
  mu__boolexpr45 = ((mu_AuxData) == (2)) ; 
}
return !(mu__boolexpr45);
};

bool mu__condition_69() // Condition for Rule "unreachableStateN"
{
  return mu__invariant_44( );
}

/**** end rule declaration ****/

const rulerec invariants[] = {
{"unreachableStateN", &mu__condition_69, NULL, },
};
const unsigned short numinvariants = 1;

/********************
  Normal/Canonicalization for scalarset
 ********************/
/*
MemData:NoScalarset
CurCmd:NoScalarset
ShrSet:NoScalarset
InvSet:NoScalarset
Chan3:NoScalarset
Chan2:NoScalarset
Chan1:NoScalarset
Cache:NoScalarset
ExGntd:NoScalarset
CurPtr:NoScalarset
AuxData:NoScalarset
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
        mu_MemData.MultisetSort();
        mu_CurCmd.MultisetSort();
        mu_ShrSet.MultisetSort();
        mu_InvSet.MultisetSort();
        mu_Chan3.MultisetSort();
        mu_Chan2.MultisetSort();
        mu_Chan1.MultisetSort();
        mu_Cache.MultisetSort();
        mu_ExGntd.MultisetSort();
        mu_CurPtr.MultisetSort();
        mu_AuxData.MultisetSort();
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
void mu_1_NODE::Permute(PermSet& Perm, int i) {};
void mu_1_NODE::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_NODE::Canonicalize(PermSet& Perm) {};
void mu_1_NODE::SimpleLimit(PermSet& Perm) {};
void mu_1_NODE::ArrayLimit(PermSet& Perm) {};
void mu_1_NODE::Limit(PermSet& Perm) {};
void mu_1_NODE::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_DATA::Permute(PermSet& Perm, int i) {};
void mu_1_DATA::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_DATA::Canonicalize(PermSet& Perm) {};
void mu_1_DATA::SimpleLimit(PermSet& Perm) {};
void mu_1_DATA::ArrayLimit(PermSet& Perm) {};
void mu_1_DATA::Limit(PermSet& Perm) {};
void mu_1_DATA::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_CACHE_STATE::Permute(PermSet& Perm, int i) {};
void mu_1_CACHE_STATE::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_CACHE_STATE::Canonicalize(PermSet& Perm) {};
void mu_1_CACHE_STATE::SimpleLimit(PermSet& Perm) {};
void mu_1_CACHE_STATE::ArrayLimit(PermSet& Perm) {};
void mu_1_CACHE_STATE::Limit(PermSet& Perm) {};
void mu_1_CACHE_STATE::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_CACHE::Permute(PermSet& Perm, int i)
{
};
void mu_1_CACHE::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_CACHE::Canonicalize(PermSet& Perm)
{
};
void mu_1_CACHE::SimpleLimit(PermSet& Perm){}
void mu_1_CACHE::ArrayLimit(PermSet& Perm){}
void mu_1_CACHE::Limit(PermSet& Perm)
{
};
void mu_1_CACHE::MultisetLimit(PermSet& Perm)
{
};
void mu_1_MSG_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_MSG_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_MSG_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_MSG_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_MSG_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_MSG_CMD::Limit(PermSet& Perm) {};
void mu_1_MSG_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_MSG::Limit(PermSet& Perm)
{
};
void mu_1_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1__type_0::Permute(PermSet& Perm, int i)
{
  static mu_1__type_0 temp("Permute_mu_1__type_0",-1);
  int j;
  for (j=0; j<2; j++)
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
void mu_1__type_1::Permute(PermSet& Perm, int i)
{
  static mu_1__type_1 temp("Permute_mu_1__type_1",-1);
  int j;
  for (j=0; j<2; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_1::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_1::Canonicalize(PermSet& Perm){};
void mu_1__type_1::SimpleLimit(PermSet& Perm){}
void mu_1__type_1::ArrayLimit(PermSet& Perm) {}
void mu_1__type_1::Limit(PermSet& Perm){}
void mu_1__type_1::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for scalarset array.\n"); };
void mu_1__type_2::Permute(PermSet& Perm, int i)
{
  static mu_1__type_2 temp("Permute_mu_1__type_2",-1);
  int j;
  for (j=0; j<2; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_2::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_2::Canonicalize(PermSet& Perm){};
void mu_1__type_2::SimpleLimit(PermSet& Perm){}
void mu_1__type_2::ArrayLimit(PermSet& Perm) {}
void mu_1__type_2::Limit(PermSet& Perm){}
void mu_1__type_2::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for scalarset array.\n"); };
void mu_1__type_3::Permute(PermSet& Perm, int i)
{
  static mu_1__type_3 temp("Permute_mu_1__type_3",-1);
  int j;
  for (j=0; j<2; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_3::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_3::Canonicalize(PermSet& Perm){};
void mu_1__type_3::SimpleLimit(PermSet& Perm){}
void mu_1__type_3::ArrayLimit(PermSet& Perm) {}
void mu_1__type_3::Limit(PermSet& Perm){}
void mu_1__type_3::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for scalarset array.\n"); };
void mu_1__type_4::Permute(PermSet& Perm, int i)
{
  static mu_1__type_4 temp("Permute_mu_1__type_4",-1);
  int j;
  for (j=0; j<2; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_4::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_4::Canonicalize(PermSet& Perm){};
void mu_1__type_4::SimpleLimit(PermSet& Perm){}
void mu_1__type_4::ArrayLimit(PermSet& Perm) {}
void mu_1__type_4::Limit(PermSet& Perm){}
void mu_1__type_4::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for scalarset array.\n"); };
void mu_1__type_5::Permute(PermSet& Perm, int i)
{
  static mu_1__type_5 temp("Permute_mu_1__type_5",-1);
  int j;
  for (j=0; j<2; j++)
    array[j].Permute(Perm, i);
};
void mu_1__type_5::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Scalarset Array\n"); };
void mu_1__type_5::Canonicalize(PermSet& Perm){};
void mu_1__type_5::SimpleLimit(PermSet& Perm){}
void mu_1__type_5::ArrayLimit(PermSet& Perm) {}
void mu_1__type_5::Limit(PermSet& Perm){}
void mu_1__type_5::MultisetLimit(PermSet& Perm)
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
              
              mu_MemData.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_MemData.MultisetSort();
              mu_CurCmd.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_CurCmd.MultisetSort();
              mu_ShrSet.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_ShrSet.MultisetSort();
              mu_InvSet.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_InvSet.MultisetSort();
              mu_Chan3.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Chan3.MultisetSort();
              mu_Chan2.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Chan2.MultisetSort();
              mu_Chan1.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Chan1.MultisetSort();
              mu_Cache.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Cache.MultisetSort();
              mu_ExGntd.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_ExGntd.MultisetSort();
              mu_CurPtr.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_CurPtr.MultisetSort();
              mu_AuxData.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_AuxData.MultisetSort();
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

          mu_MemData.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_MemData.MultisetSort();
          mu_CurCmd.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_CurCmd.MultisetSort();
          mu_ShrSet.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_ShrSet.MultisetSort();
          mu_InvSet.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_InvSet.MultisetSort();
          mu_Chan3.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Chan3.MultisetSort();
          mu_Chan2.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Chan2.MultisetSort();
          mu_Chan1.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Chan1.MultisetSort();
          mu_Cache.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Cache.MultisetSort();
          mu_ExGntd.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_ExGntd.MultisetSort();
          mu_CurPtr.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_CurPtr.MultisetSort();
          mu_AuxData.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_AuxData.MultisetSort();
        if (p.compare(workingstate)) {
          StateCopy(workingstate,&temp); return TRUE; }

        while (Perm.NextPermutation())
          {
            if (ns != workingstate)
              StateCopy(workingstate, ns);
              
              mu_MemData.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_MemData.MultisetSort();
              mu_CurCmd.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_CurCmd.MultisetSort();
              mu_ShrSet.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_ShrSet.MultisetSort();
              mu_InvSet.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_InvSet.MultisetSort();
              mu_Chan3.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Chan3.MultisetSort();
              mu_Chan2.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Chan2.MultisetSort();
              mu_Chan1.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Chan1.MultisetSort();
              mu_Cache.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Cache.MultisetSort();
              mu_ExGntd.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_ExGntd.MultisetSort();
              mu_CurPtr.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_CurPtr.MultisetSort();
              mu_AuxData.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_AuxData.MultisetSort();
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
      mu_MemData.MultisetSort();
      mu_CurCmd.MultisetSort();
      mu_ShrSet.MultisetSort();
      mu_InvSet.MultisetSort();
      mu_Chan3.MultisetSort();
      mu_Chan2.MultisetSort();
      mu_Chan1.MultisetSort();
      mu_Cache.MultisetSort();
      mu_ExGntd.MultisetSort();
      mu_CurPtr.MultisetSort();
      mu_AuxData.MultisetSort();
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
        mu_MemData.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_MemData.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_CurCmd.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_CurCmd.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_ShrSet.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_ShrSet.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_InvSet.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_InvSet.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_Chan3.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Chan3.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_Chan2.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Chan2.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_Chan1.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Chan1.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_Cache.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Cache.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_ExGntd.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_ExGntd.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_CurPtr.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_CurPtr.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_AuxData.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_AuxData.MultisetSort();
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
