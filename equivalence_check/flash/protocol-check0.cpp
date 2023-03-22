/******************************
  Program "protocol-check0.m" compiled by "Caching Murphi Release 5.5.0"

  Murphi Last Compiled date: "Mar 12 2023"
 ******************************/

/********************
  Parameter
 ********************/
#define MURPHI_VERSION "Caching Murphi Release 5.5.0"
#define MURPHI_DATE "Mar 12 2023"
#define PROTOCOL_NAME "protocol-check0"
#define BITS_IN_WORLD 432
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

const char *mu_1_CACHE_STATE::values[] = {"CACHE_I","CACHE_S","CACHE_E",NULL };

/*** end of enum declaration ***/
mu_1_CACHE_STATE mu_1_CACHE_STATE_undefined_var;

class mu_1_NODE_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_NODE_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_NODE_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_NODE_CMD::values[ int(val) - 4] );
    else return ( s << "Undefined" );
  };

  mu_1_NODE_CMD (const char *name, int os): mu__byte(4, 6, 2, name, os) {};
  mu_1_NODE_CMD (void): mu__byte(4, 6, 2) {};
  mu_1_NODE_CMD (int val): mu__byte(4, 6, 2, "Parameter or function result.", 0)
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

const char *mu_1_NODE_CMD::values[] = {"NODE_None","NODE_Get","NODE_GetX",NULL };

/*** end of enum declaration ***/
mu_1_NODE_CMD mu_1_NODE_CMD_undefined_var;

class mu_1_NODE_STATE
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_NODE_CMD mu_ProcCmd;
  mu_0_boolean mu_InvMarked;
  mu_1_CACHE_STATE mu_CacheState;
  mu_1_DATA mu_CacheData;
  mu_1_NODE_STATE ( const char *n, int os ) { set_self(n,os); };
  mu_1_NODE_STATE ( void ) {};

  virtual ~mu_1_NODE_STATE(); 
friend int CompareWeight(mu_1_NODE_STATE& a, mu_1_NODE_STATE& b)
  {
    int w;
    w = CompareWeight(a.mu_ProcCmd, b.mu_ProcCmd);
    if (w!=0) return w;
    w = CompareWeight(a.mu_InvMarked, b.mu_InvMarked);
    if (w!=0) return w;
    w = CompareWeight(a.mu_CacheState, b.mu_CacheState);
    if (w!=0) return w;
    w = CompareWeight(a.mu_CacheData, b.mu_CacheData);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_NODE_STATE& a, mu_1_NODE_STATE& b)
  {
    int w;
    w = Compare(a.mu_ProcCmd, b.mu_ProcCmd);
    if (w!=0) return w;
    w = Compare(a.mu_InvMarked, b.mu_InvMarked);
    if (w!=0) return w;
    w = Compare(a.mu_CacheState, b.mu_CacheState);
    if (w!=0) return w;
    w = Compare(a.mu_CacheData, b.mu_CacheData);
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
    mu_ProcCmd.MultisetSort();
    mu_InvMarked.MultisetSort();
    mu_CacheState.MultisetSort();
    mu_CacheData.MultisetSort();
  }
  void print_statistic()
  {
    mu_ProcCmd.print_statistic();
    mu_InvMarked.print_statistic();
    mu_CacheState.print_statistic();
    mu_CacheData.print_statistic();
  }
  void clear() {
    mu_ProcCmd.clear();
    mu_InvMarked.clear();
    mu_CacheState.clear();
    mu_CacheData.clear();
 };
  void undefine() {
    mu_ProcCmd.undefine();
    mu_InvMarked.undefine();
    mu_CacheState.undefine();
    mu_CacheData.undefine();
 };
  void reset() {
    mu_ProcCmd.reset();
    mu_InvMarked.reset();
    mu_CacheState.reset();
    mu_CacheData.reset();
 };
  void print() {
    mu_ProcCmd.print();
    mu_InvMarked.print();
    mu_CacheState.print();
    mu_CacheData.print();
  };
  void print_diff(state *prevstate) {
    mu_ProcCmd.print_diff(prevstate);
    mu_InvMarked.print_diff(prevstate);
    mu_CacheState.print_diff(prevstate);
    mu_CacheData.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_ProcCmd.to_state(thestate);
    mu_InvMarked.to_state(thestate);
    mu_CacheState.to_state(thestate);
    mu_CacheData.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_NODE_STATE& operator= (const mu_1_NODE_STATE& from) {
    mu_ProcCmd.value(from.mu_ProcCmd.value());
    mu_InvMarked.value(from.mu_InvMarked.value());
    mu_CacheState.value(from.mu_CacheState.value());
    mu_CacheData.value(from.mu_CacheData.value());
    return *this;
  };
};

  void mu_1_NODE_STATE::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_NODE_STATE::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_NODE_STATE::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_ProcCmd.set_self_2(name, ".ProcCmd", os + 0 ); else mu_ProcCmd.set_self_2(NULL, NULL, 0);
  if (name) mu_InvMarked.set_self_2(name, ".InvMarked", os + 8 ); else mu_InvMarked.set_self_2(NULL, NULL, 0);
  if (name) mu_CacheState.set_self_2(name, ".CacheState", os + 16 ); else mu_CacheState.set_self_2(NULL, NULL, 0);
  if (name) mu_CacheData.set_self_2(name, ".CacheData", os + 24 ); else mu_CacheData.set_self_2(NULL, NULL, 0);
}

mu_1_NODE_STATE::~mu_1_NODE_STATE()
{
}

/*** end record declaration ***/
mu_1_NODE_STATE mu_1_NODE_STATE_undefined_var;

class mu_1__type_0
{
 public:
  mu_0_boolean array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_0 (const char *n, int os) { set_self(n, os); };
  mu_1__type_0 ( void ) {};
  virtual ~mu_1__type_0 ();
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
  mu_1__type_0& operator= (const mu_1__type_0& from)
  {
    for (int i = 0; i < 2; i++)
      array[i].value(from.array[i].value());
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
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
  mu_0_boolean array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_1 (const char *n, int os) { set_self(n, os); };
  mu_1__type_1 ( void ) {};
  virtual ~mu_1__type_1 ();
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
  mu_1__type_1& operator= (const mu_1__type_1& from)
  {
    for (int i = 0; i < 2; i++)
      array[i].value(from.array[i].value());
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
    delete[] s;
  }
};
mu_1__type_1::~mu_1__type_1()
{
}
/*** end array declaration ***/
mu_1__type_1 mu_1__type_1_undefined_var;

class mu_1_DIR_STATE
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_0_boolean mu_Pending;
  mu_0_boolean mu_Local;
  mu_0_boolean mu_Dirty;
  mu_0_boolean mu_HeadVld;
  mu_1_NODE mu_HeadPtr;
  mu_0_boolean mu_HomeHeadPtr;
  mu_0_boolean mu_ShrVld;
  mu_1__type_0 mu_ShrSet;
  mu_0_boolean mu_HomeShrSet;
  mu_1__type_1 mu_InvSet;
  mu_0_boolean mu_HomeInvSet;
  mu_1_DIR_STATE ( const char *n, int os ) { set_self(n,os); };
  mu_1_DIR_STATE ( void ) {};

  virtual ~mu_1_DIR_STATE(); 
friend int CompareWeight(mu_1_DIR_STATE& a, mu_1_DIR_STATE& b)
  {
    int w;
    w = CompareWeight(a.mu_Pending, b.mu_Pending);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Local, b.mu_Local);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Dirty, b.mu_Dirty);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HeadVld, b.mu_HeadVld);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HeadPtr, b.mu_HeadPtr);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeHeadPtr, b.mu_HomeHeadPtr);
    if (w!=0) return w;
    w = CompareWeight(a.mu_ShrVld, b.mu_ShrVld);
    if (w!=0) return w;
    w = CompareWeight(a.mu_ShrSet, b.mu_ShrSet);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeShrSet, b.mu_HomeShrSet);
    if (w!=0) return w;
    w = CompareWeight(a.mu_InvSet, b.mu_InvSet);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeInvSet, b.mu_HomeInvSet);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_DIR_STATE& a, mu_1_DIR_STATE& b)
  {
    int w;
    w = Compare(a.mu_Pending, b.mu_Pending);
    if (w!=0) return w;
    w = Compare(a.mu_Local, b.mu_Local);
    if (w!=0) return w;
    w = Compare(a.mu_Dirty, b.mu_Dirty);
    if (w!=0) return w;
    w = Compare(a.mu_HeadVld, b.mu_HeadVld);
    if (w!=0) return w;
    w = Compare(a.mu_HeadPtr, b.mu_HeadPtr);
    if (w!=0) return w;
    w = Compare(a.mu_HomeHeadPtr, b.mu_HomeHeadPtr);
    if (w!=0) return w;
    w = Compare(a.mu_ShrVld, b.mu_ShrVld);
    if (w!=0) return w;
    w = Compare(a.mu_ShrSet, b.mu_ShrSet);
    if (w!=0) return w;
    w = Compare(a.mu_HomeShrSet, b.mu_HomeShrSet);
    if (w!=0) return w;
    w = Compare(a.mu_InvSet, b.mu_InvSet);
    if (w!=0) return w;
    w = Compare(a.mu_HomeInvSet, b.mu_HomeInvSet);
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
    mu_Pending.MultisetSort();
    mu_Local.MultisetSort();
    mu_Dirty.MultisetSort();
    mu_HeadVld.MultisetSort();
    mu_HeadPtr.MultisetSort();
    mu_HomeHeadPtr.MultisetSort();
    mu_ShrVld.MultisetSort();
    mu_ShrSet.MultisetSort();
    mu_HomeShrSet.MultisetSort();
    mu_InvSet.MultisetSort();
    mu_HomeInvSet.MultisetSort();
  }
  void print_statistic()
  {
    mu_Pending.print_statistic();
    mu_Local.print_statistic();
    mu_Dirty.print_statistic();
    mu_HeadVld.print_statistic();
    mu_HeadPtr.print_statistic();
    mu_HomeHeadPtr.print_statistic();
    mu_ShrVld.print_statistic();
    mu_ShrSet.print_statistic();
    mu_HomeShrSet.print_statistic();
    mu_InvSet.print_statistic();
    mu_HomeInvSet.print_statistic();
  }
  void clear() {
    mu_Pending.clear();
    mu_Local.clear();
    mu_Dirty.clear();
    mu_HeadVld.clear();
    mu_HeadPtr.clear();
    mu_HomeHeadPtr.clear();
    mu_ShrVld.clear();
    mu_ShrSet.clear();
    mu_HomeShrSet.clear();
    mu_InvSet.clear();
    mu_HomeInvSet.clear();
 };
  void undefine() {
    mu_Pending.undefine();
    mu_Local.undefine();
    mu_Dirty.undefine();
    mu_HeadVld.undefine();
    mu_HeadPtr.undefine();
    mu_HomeHeadPtr.undefine();
    mu_ShrVld.undefine();
    mu_ShrSet.undefine();
    mu_HomeShrSet.undefine();
    mu_InvSet.undefine();
    mu_HomeInvSet.undefine();
 };
  void reset() {
    mu_Pending.reset();
    mu_Local.reset();
    mu_Dirty.reset();
    mu_HeadVld.reset();
    mu_HeadPtr.reset();
    mu_HomeHeadPtr.reset();
    mu_ShrVld.reset();
    mu_ShrSet.reset();
    mu_HomeShrSet.reset();
    mu_InvSet.reset();
    mu_HomeInvSet.reset();
 };
  void print() {
    mu_Pending.print();
    mu_Local.print();
    mu_Dirty.print();
    mu_HeadVld.print();
    mu_HeadPtr.print();
    mu_HomeHeadPtr.print();
    mu_ShrVld.print();
    mu_ShrSet.print();
    mu_HomeShrSet.print();
    mu_InvSet.print();
    mu_HomeInvSet.print();
  };
  void print_diff(state *prevstate) {
    mu_Pending.print_diff(prevstate);
    mu_Local.print_diff(prevstate);
    mu_Dirty.print_diff(prevstate);
    mu_HeadVld.print_diff(prevstate);
    mu_HeadPtr.print_diff(prevstate);
    mu_HomeHeadPtr.print_diff(prevstate);
    mu_ShrVld.print_diff(prevstate);
    mu_ShrSet.print_diff(prevstate);
    mu_HomeShrSet.print_diff(prevstate);
    mu_InvSet.print_diff(prevstate);
    mu_HomeInvSet.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Pending.to_state(thestate);
    mu_Local.to_state(thestate);
    mu_Dirty.to_state(thestate);
    mu_HeadVld.to_state(thestate);
    mu_HeadPtr.to_state(thestate);
    mu_HomeHeadPtr.to_state(thestate);
    mu_ShrVld.to_state(thestate);
    mu_ShrSet.to_state(thestate);
    mu_HomeShrSet.to_state(thestate);
    mu_InvSet.to_state(thestate);
    mu_HomeInvSet.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_DIR_STATE& operator= (const mu_1_DIR_STATE& from) {
    mu_Pending.value(from.mu_Pending.value());
    mu_Local.value(from.mu_Local.value());
    mu_Dirty.value(from.mu_Dirty.value());
    mu_HeadVld.value(from.mu_HeadVld.value());
    mu_HeadPtr.value(from.mu_HeadPtr.value());
    mu_HomeHeadPtr.value(from.mu_HomeHeadPtr.value());
    mu_ShrVld.value(from.mu_ShrVld.value());
    mu_ShrSet = from.mu_ShrSet;
    mu_HomeShrSet.value(from.mu_HomeShrSet.value());
    mu_InvSet = from.mu_InvSet;
    mu_HomeInvSet.value(from.mu_HomeInvSet.value());
    return *this;
  };
};

  void mu_1_DIR_STATE::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_DIR_STATE::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_DIR_STATE::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Pending.set_self_2(name, ".Pending", os + 0 ); else mu_Pending.set_self_2(NULL, NULL, 0);
  if (name) mu_Local.set_self_2(name, ".Local", os + 8 ); else mu_Local.set_self_2(NULL, NULL, 0);
  if (name) mu_Dirty.set_self_2(name, ".Dirty", os + 16 ); else mu_Dirty.set_self_2(NULL, NULL, 0);
  if (name) mu_HeadVld.set_self_2(name, ".HeadVld", os + 24 ); else mu_HeadVld.set_self_2(NULL, NULL, 0);
  if (name) mu_HeadPtr.set_self_2(name, ".HeadPtr", os + 32 ); else mu_HeadPtr.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeHeadPtr.set_self_2(name, ".HomeHeadPtr", os + 40 ); else mu_HomeHeadPtr.set_self_2(NULL, NULL, 0);
  if (name) mu_ShrVld.set_self_2(name, ".ShrVld", os + 48 ); else mu_ShrVld.set_self_2(NULL, NULL, 0);
  if (name) mu_ShrSet.set_self_2(name, ".ShrSet", os + 56 ); else mu_ShrSet.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeShrSet.set_self_2(name, ".HomeShrSet", os + 72 ); else mu_HomeShrSet.set_self_2(NULL, NULL, 0);
  if (name) mu_InvSet.set_self_2(name, ".InvSet", os + 80 ); else mu_InvSet.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeInvSet.set_self_2(name, ".HomeInvSet", os + 96 ); else mu_HomeInvSet.set_self_2(NULL, NULL, 0);
}

mu_1_DIR_STATE::~mu_1_DIR_STATE()
{
}

/*** end record declaration ***/
mu_1_DIR_STATE mu_1_DIR_STATE_undefined_var;

class mu_1_UNI_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_UNI_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_UNI_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_UNI_CMD::values[ int(val) - 7] );
    else return ( s << "Undefined" );
  };

  mu_1_UNI_CMD (const char *name, int os): mu__byte(7, 12, 3, name, os) {};
  mu_1_UNI_CMD (void): mu__byte(7, 12, 3) {};
  mu_1_UNI_CMD (int val): mu__byte(7, 12, 3, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -7]; };
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
      cout << name << ":" << values[ value() -7] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_UNI_CMD::values[] = {"UNI_None","UNI_Get","UNI_GetX","UNI_Put","UNI_PutX","UNI_Nak",NULL };

/*** end of enum declaration ***/
mu_1_UNI_CMD mu_1_UNI_CMD_undefined_var;

class mu_1_UNI_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_UNI_CMD mu_Cmd;
  mu_1_NODE mu_Proc;
  mu_0_boolean mu_HomeProc;
  mu_1_DATA mu_Data;
  mu_1_UNI_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_UNI_MSG ( void ) {};

  virtual ~mu_1_UNI_MSG(); 
friend int CompareWeight(mu_1_UNI_MSG& a, mu_1_UNI_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeProc, b.mu_HomeProc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_UNI_MSG& a, mu_1_UNI_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = Compare(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = Compare(a.mu_HomeProc, b.mu_HomeProc);
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
    mu_Proc.MultisetSort();
    mu_HomeProc.MultisetSort();
    mu_Data.MultisetSort();
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
    mu_Proc.print_statistic();
    mu_HomeProc.print_statistic();
    mu_Data.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
    mu_Proc.clear();
    mu_HomeProc.clear();
    mu_Data.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
    mu_Proc.undefine();
    mu_HomeProc.undefine();
    mu_Data.undefine();
 };
  void reset() {
    mu_Cmd.reset();
    mu_Proc.reset();
    mu_HomeProc.reset();
    mu_Data.reset();
 };
  void print() {
    mu_Cmd.print();
    mu_Proc.print();
    mu_HomeProc.print();
    mu_Data.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
    mu_Proc.print_diff(prevstate);
    mu_HomeProc.print_diff(prevstate);
    mu_Data.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
    mu_Proc.to_state(thestate);
    mu_HomeProc.to_state(thestate);
    mu_Data.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_UNI_MSG& operator= (const mu_1_UNI_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    mu_Proc.value(from.mu_Proc.value());
    mu_HomeProc.value(from.mu_HomeProc.value());
    mu_Data.value(from.mu_Data.value());
    return *this;
  };
};

  void mu_1_UNI_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_UNI_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_UNI_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
  if (name) mu_Proc.set_self_2(name, ".Proc", os + 8 ); else mu_Proc.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeProc.set_self_2(name, ".HomeProc", os + 16 ); else mu_HomeProc.set_self_2(NULL, NULL, 0);
  if (name) mu_Data.set_self_2(name, ".Data", os + 24 ); else mu_Data.set_self_2(NULL, NULL, 0);
}

mu_1_UNI_MSG::~mu_1_UNI_MSG()
{
}

/*** end record declaration ***/
mu_1_UNI_MSG mu_1_UNI_MSG_undefined_var;

class mu_1_INV_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_INV_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_INV_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_INV_CMD::values[ int(val) - 13] );
    else return ( s << "Undefined" );
  };

  mu_1_INV_CMD (const char *name, int os): mu__byte(13, 15, 2, name, os) {};
  mu_1_INV_CMD (void): mu__byte(13, 15, 2) {};
  mu_1_INV_CMD (int val): mu__byte(13, 15, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -13]; };
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
      cout << name << ":" << values[ value() -13] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_INV_CMD::values[] = {"INV_None","INV_Inv","INV_InvAck",NULL };

/*** end of enum declaration ***/
mu_1_INV_CMD mu_1_INV_CMD_undefined_var;

class mu_1_INV_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_INV_CMD mu_Cmd;
  mu_1_INV_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_INV_MSG ( void ) {};

  virtual ~mu_1_INV_MSG(); 
friend int CompareWeight(mu_1_INV_MSG& a, mu_1_INV_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_INV_MSG& a, mu_1_INV_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
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
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
 };
  void reset() {
    mu_Cmd.reset();
 };
  void print() {
    mu_Cmd.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_INV_MSG& operator= (const mu_1_INV_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    return *this;
  };
};

  void mu_1_INV_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_INV_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_INV_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
}

mu_1_INV_MSG::~mu_1_INV_MSG()
{
}

/*** end record declaration ***/
mu_1_INV_MSG mu_1_INV_MSG_undefined_var;

class mu_1_RP_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_RP_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_RP_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_RP_CMD::values[ int(val) - 16] );
    else return ( s << "Undefined" );
  };

  mu_1_RP_CMD (const char *name, int os): mu__byte(16, 17, 2, name, os) {};
  mu_1_RP_CMD (void): mu__byte(16, 17, 2) {};
  mu_1_RP_CMD (int val): mu__byte(16, 17, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -16]; };
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
      cout << name << ":" << values[ value() -16] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_RP_CMD::values[] = {"RP_None","RP_Replace",NULL };

/*** end of enum declaration ***/
mu_1_RP_CMD mu_1_RP_CMD_undefined_var;

class mu_1_RP_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_RP_CMD mu_Cmd;
  mu_1_RP_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_RP_MSG ( void ) {};

  virtual ~mu_1_RP_MSG(); 
friend int CompareWeight(mu_1_RP_MSG& a, mu_1_RP_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_RP_MSG& a, mu_1_RP_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
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
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
 };
  void reset() {
    mu_Cmd.reset();
 };
  void print() {
    mu_Cmd.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_RP_MSG& operator= (const mu_1_RP_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    return *this;
  };
};

  void mu_1_RP_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_RP_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_RP_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
}

mu_1_RP_MSG::~mu_1_RP_MSG()
{
}

/*** end record declaration ***/
mu_1_RP_MSG mu_1_RP_MSG_undefined_var;

class mu_1_WB_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_WB_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_WB_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_WB_CMD::values[ int(val) - 18] );
    else return ( s << "Undefined" );
  };

  mu_1_WB_CMD (const char *name, int os): mu__byte(18, 19, 2, name, os) {};
  mu_1_WB_CMD (void): mu__byte(18, 19, 2) {};
  mu_1_WB_CMD (int val): mu__byte(18, 19, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -18]; };
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
      cout << name << ":" << values[ value() -18] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_WB_CMD::values[] = {"WB_None","WB_Wb",NULL };

/*** end of enum declaration ***/
mu_1_WB_CMD mu_1_WB_CMD_undefined_var;

class mu_1_WB_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_WB_CMD mu_Cmd;
  mu_1_NODE mu_Proc;
  mu_0_boolean mu_HomeProc;
  mu_1_DATA mu_Data;
  mu_1_WB_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_WB_MSG ( void ) {};

  virtual ~mu_1_WB_MSG(); 
friend int CompareWeight(mu_1_WB_MSG& a, mu_1_WB_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeProc, b.mu_HomeProc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_WB_MSG& a, mu_1_WB_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = Compare(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = Compare(a.mu_HomeProc, b.mu_HomeProc);
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
    mu_Proc.MultisetSort();
    mu_HomeProc.MultisetSort();
    mu_Data.MultisetSort();
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
    mu_Proc.print_statistic();
    mu_HomeProc.print_statistic();
    mu_Data.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
    mu_Proc.clear();
    mu_HomeProc.clear();
    mu_Data.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
    mu_Proc.undefine();
    mu_HomeProc.undefine();
    mu_Data.undefine();
 };
  void reset() {
    mu_Cmd.reset();
    mu_Proc.reset();
    mu_HomeProc.reset();
    mu_Data.reset();
 };
  void print() {
    mu_Cmd.print();
    mu_Proc.print();
    mu_HomeProc.print();
    mu_Data.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
    mu_Proc.print_diff(prevstate);
    mu_HomeProc.print_diff(prevstate);
    mu_Data.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
    mu_Proc.to_state(thestate);
    mu_HomeProc.to_state(thestate);
    mu_Data.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_WB_MSG& operator= (const mu_1_WB_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    mu_Proc.value(from.mu_Proc.value());
    mu_HomeProc.value(from.mu_HomeProc.value());
    mu_Data.value(from.mu_Data.value());
    return *this;
  };
};

  void mu_1_WB_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_WB_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_WB_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
  if (name) mu_Proc.set_self_2(name, ".Proc", os + 8 ); else mu_Proc.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeProc.set_self_2(name, ".HomeProc", os + 16 ); else mu_HomeProc.set_self_2(NULL, NULL, 0);
  if (name) mu_Data.set_self_2(name, ".Data", os + 24 ); else mu_Data.set_self_2(NULL, NULL, 0);
}

mu_1_WB_MSG::~mu_1_WB_MSG()
{
}

/*** end record declaration ***/
mu_1_WB_MSG mu_1_WB_MSG_undefined_var;

class mu_1_SHWB_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_SHWB_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_SHWB_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_SHWB_CMD::values[ int(val) - 20] );
    else return ( s << "Undefined" );
  };

  mu_1_SHWB_CMD (const char *name, int os): mu__byte(20, 22, 2, name, os) {};
  mu_1_SHWB_CMD (void): mu__byte(20, 22, 2) {};
  mu_1_SHWB_CMD (int val): mu__byte(20, 22, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -20]; };
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
      cout << name << ":" << values[ value() -20] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_SHWB_CMD::values[] = {"SHWB_None","SHWB_ShWb","SHWB_FAck",NULL };

/*** end of enum declaration ***/
mu_1_SHWB_CMD mu_1_SHWB_CMD_undefined_var;

class mu_1_SHWB_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_SHWB_CMD mu_Cmd;
  mu_1_NODE mu_Proc;
  mu_0_boolean mu_HomeProc;
  mu_1_DATA mu_Data;
  mu_1_SHWB_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_SHWB_MSG ( void ) {};

  virtual ~mu_1_SHWB_MSG(); 
friend int CompareWeight(mu_1_SHWB_MSG& a, mu_1_SHWB_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeProc, b.mu_HomeProc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Data, b.mu_Data);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_SHWB_MSG& a, mu_1_SHWB_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
    w = Compare(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = Compare(a.mu_HomeProc, b.mu_HomeProc);
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
    mu_Proc.MultisetSort();
    mu_HomeProc.MultisetSort();
    mu_Data.MultisetSort();
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
    mu_Proc.print_statistic();
    mu_HomeProc.print_statistic();
    mu_Data.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
    mu_Proc.clear();
    mu_HomeProc.clear();
    mu_Data.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
    mu_Proc.undefine();
    mu_HomeProc.undefine();
    mu_Data.undefine();
 };
  void reset() {
    mu_Cmd.reset();
    mu_Proc.reset();
    mu_HomeProc.reset();
    mu_Data.reset();
 };
  void print() {
    mu_Cmd.print();
    mu_Proc.print();
    mu_HomeProc.print();
    mu_Data.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
    mu_Proc.print_diff(prevstate);
    mu_HomeProc.print_diff(prevstate);
    mu_Data.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
    mu_Proc.to_state(thestate);
    mu_HomeProc.to_state(thestate);
    mu_Data.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_SHWB_MSG& operator= (const mu_1_SHWB_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    mu_Proc.value(from.mu_Proc.value());
    mu_HomeProc.value(from.mu_HomeProc.value());
    mu_Data.value(from.mu_Data.value());
    return *this;
  };
};

  void mu_1_SHWB_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_SHWB_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_SHWB_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
  if (name) mu_Proc.set_self_2(name, ".Proc", os + 8 ); else mu_Proc.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeProc.set_self_2(name, ".HomeProc", os + 16 ); else mu_HomeProc.set_self_2(NULL, NULL, 0);
  if (name) mu_Data.set_self_2(name, ".Data", os + 24 ); else mu_Data.set_self_2(NULL, NULL, 0);
}

mu_1_SHWB_MSG::~mu_1_SHWB_MSG()
{
}

/*** end record declaration ***/
mu_1_SHWB_MSG mu_1_SHWB_MSG_undefined_var;

class mu_1_NAKC_CMD: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_NAKC_CMD& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_NAKC_CMD& val)
  {
    if (val.defined())
      return ( s << mu_1_NAKC_CMD::values[ int(val) - 23] );
    else return ( s << "Undefined" );
  };

  mu_1_NAKC_CMD (const char *name, int os): mu__byte(23, 24, 2, name, os) {};
  mu_1_NAKC_CMD (void): mu__byte(23, 24, 2) {};
  mu_1_NAKC_CMD (int val): mu__byte(23, 24, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -23]; };
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
      cout << name << ":" << values[ value() -23] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_NAKC_CMD::values[] = {"NAKC_None","NAKC_Nakc",NULL };

/*** end of enum declaration ***/
mu_1_NAKC_CMD mu_1_NAKC_CMD_undefined_var;

class mu_1_NAKC_MSG
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_NAKC_CMD mu_Cmd;
  mu_1_NAKC_MSG ( const char *n, int os ) { set_self(n,os); };
  mu_1_NAKC_MSG ( void ) {};

  virtual ~mu_1_NAKC_MSG(); 
friend int CompareWeight(mu_1_NAKC_MSG& a, mu_1_NAKC_MSG& b)
  {
    int w;
    w = CompareWeight(a.mu_Cmd, b.mu_Cmd);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_NAKC_MSG& a, mu_1_NAKC_MSG& b)
  {
    int w;
    w = Compare(a.mu_Cmd, b.mu_Cmd);
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
  }
  void print_statistic()
  {
    mu_Cmd.print_statistic();
  }
  void clear() {
    mu_Cmd.clear();
 };
  void undefine() {
    mu_Cmd.undefine();
 };
  void reset() {
    mu_Cmd.reset();
 };
  void print() {
    mu_Cmd.print();
  };
  void print_diff(state *prevstate) {
    mu_Cmd.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Cmd.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_NAKC_MSG& operator= (const mu_1_NAKC_MSG& from) {
    mu_Cmd.value(from.mu_Cmd.value());
    return *this;
  };
};

  void mu_1_NAKC_MSG::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_NAKC_MSG::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_NAKC_MSG::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Cmd.set_self_2(name, ".Cmd", os + 0 ); else mu_Cmd.set_self_2(NULL, NULL, 0);
}

mu_1_NAKC_MSG::~mu_1_NAKC_MSG()
{
}

/*** end record declaration ***/
mu_1_NAKC_MSG mu_1_NAKC_MSG_undefined_var;

class mu_1__type_2
{
 public:
  mu_1_NODE_STATE array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_2 (const char *n, int os) { set_self(n, os); };
  mu_1__type_2 ( void ) {};
  virtual ~mu_1__type_2 ();
  mu_1_NODE_STATE& operator[] (int index) /* const */
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 32 + os);
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
  mu_1_UNI_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_3 (const char *n, int os) { set_self(n, os); };
  mu_1__type_3 ( void ) {};
  virtual ~mu_1__type_3 ();
  mu_1_UNI_MSG& operator[] (int index) /* const */
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 32 + os);
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
  mu_1_INV_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_4 (const char *n, int os) { set_self(n, os); };
  mu_1__type_4 ( void ) {};
  virtual ~mu_1__type_4 ();
  mu_1_INV_MSG& operator[] (int index) /* const */
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
      array[i] = from.array[i];
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
  mu_1_RP_MSG array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_5 (const char *n, int os) { set_self(n, os); };
  mu_1__type_5 ( void ) {};
  virtual ~mu_1__type_5 ();
  mu_1_RP_MSG& operator[] (int index) /* const */
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
      array[i] = from.array[i];
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

class mu_1_STATE
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1__type_2 mu_Proc;
  mu_1_NODE_STATE mu_HomeProc;
  mu_1_DIR_STATE mu_Dir;
  mu_1_DATA mu_MemData;
  mu_1__type_3 mu_UniMsg;
  mu_1_UNI_MSG mu_HomeUniMsg;
  mu_1__type_4 mu_InvMsg;
  mu_1_INV_MSG mu_HomeInvMsg;
  mu_1__type_5 mu_RpMsg;
  mu_1_RP_MSG mu_HomeRpMsg;
  mu_1_WB_MSG mu_WbMsg;
  mu_1_SHWB_MSG mu_ShWbMsg;
  mu_1_NAKC_MSG mu_NakcMsg;
  mu_1_DATA mu_CurrData;
  mu_1_STATE ( const char *n, int os ) { set_self(n,os); };
  mu_1_STATE ( void ) {};

  virtual ~mu_1_STATE(); 
friend int CompareWeight(mu_1_STATE& a, mu_1_STATE& b)
  {
    int w;
    w = CompareWeight(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeProc, b.mu_HomeProc);
    if (w!=0) return w;
    w = CompareWeight(a.mu_Dir, b.mu_Dir);
    if (w!=0) return w;
    w = CompareWeight(a.mu_MemData, b.mu_MemData);
    if (w!=0) return w;
    w = CompareWeight(a.mu_UniMsg, b.mu_UniMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeUniMsg, b.mu_HomeUniMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_InvMsg, b.mu_InvMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeInvMsg, b.mu_HomeInvMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_RpMsg, b.mu_RpMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_HomeRpMsg, b.mu_HomeRpMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_WbMsg, b.mu_WbMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_ShWbMsg, b.mu_ShWbMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_NakcMsg, b.mu_NakcMsg);
    if (w!=0) return w;
    w = CompareWeight(a.mu_CurrData, b.mu_CurrData);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_STATE& a, mu_1_STATE& b)
  {
    int w;
    w = Compare(a.mu_Proc, b.mu_Proc);
    if (w!=0) return w;
    w = Compare(a.mu_HomeProc, b.mu_HomeProc);
    if (w!=0) return w;
    w = Compare(a.mu_Dir, b.mu_Dir);
    if (w!=0) return w;
    w = Compare(a.mu_MemData, b.mu_MemData);
    if (w!=0) return w;
    w = Compare(a.mu_UniMsg, b.mu_UniMsg);
    if (w!=0) return w;
    w = Compare(a.mu_HomeUniMsg, b.mu_HomeUniMsg);
    if (w!=0) return w;
    w = Compare(a.mu_InvMsg, b.mu_InvMsg);
    if (w!=0) return w;
    w = Compare(a.mu_HomeInvMsg, b.mu_HomeInvMsg);
    if (w!=0) return w;
    w = Compare(a.mu_RpMsg, b.mu_RpMsg);
    if (w!=0) return w;
    w = Compare(a.mu_HomeRpMsg, b.mu_HomeRpMsg);
    if (w!=0) return w;
    w = Compare(a.mu_WbMsg, b.mu_WbMsg);
    if (w!=0) return w;
    w = Compare(a.mu_ShWbMsg, b.mu_ShWbMsg);
    if (w!=0) return w;
    w = Compare(a.mu_NakcMsg, b.mu_NakcMsg);
    if (w!=0) return w;
    w = Compare(a.mu_CurrData, b.mu_CurrData);
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
    mu_Proc.MultisetSort();
    mu_HomeProc.MultisetSort();
    mu_Dir.MultisetSort();
    mu_MemData.MultisetSort();
    mu_UniMsg.MultisetSort();
    mu_HomeUniMsg.MultisetSort();
    mu_InvMsg.MultisetSort();
    mu_HomeInvMsg.MultisetSort();
    mu_RpMsg.MultisetSort();
    mu_HomeRpMsg.MultisetSort();
    mu_WbMsg.MultisetSort();
    mu_ShWbMsg.MultisetSort();
    mu_NakcMsg.MultisetSort();
    mu_CurrData.MultisetSort();
  }
  void print_statistic()
  {
    mu_Proc.print_statistic();
    mu_HomeProc.print_statistic();
    mu_Dir.print_statistic();
    mu_MemData.print_statistic();
    mu_UniMsg.print_statistic();
    mu_HomeUniMsg.print_statistic();
    mu_InvMsg.print_statistic();
    mu_HomeInvMsg.print_statistic();
    mu_RpMsg.print_statistic();
    mu_HomeRpMsg.print_statistic();
    mu_WbMsg.print_statistic();
    mu_ShWbMsg.print_statistic();
    mu_NakcMsg.print_statistic();
    mu_CurrData.print_statistic();
  }
  void clear() {
    mu_Proc.clear();
    mu_HomeProc.clear();
    mu_Dir.clear();
    mu_MemData.clear();
    mu_UniMsg.clear();
    mu_HomeUniMsg.clear();
    mu_InvMsg.clear();
    mu_HomeInvMsg.clear();
    mu_RpMsg.clear();
    mu_HomeRpMsg.clear();
    mu_WbMsg.clear();
    mu_ShWbMsg.clear();
    mu_NakcMsg.clear();
    mu_CurrData.clear();
 };
  void undefine() {
    mu_Proc.undefine();
    mu_HomeProc.undefine();
    mu_Dir.undefine();
    mu_MemData.undefine();
    mu_UniMsg.undefine();
    mu_HomeUniMsg.undefine();
    mu_InvMsg.undefine();
    mu_HomeInvMsg.undefine();
    mu_RpMsg.undefine();
    mu_HomeRpMsg.undefine();
    mu_WbMsg.undefine();
    mu_ShWbMsg.undefine();
    mu_NakcMsg.undefine();
    mu_CurrData.undefine();
 };
  void reset() {
    mu_Proc.reset();
    mu_HomeProc.reset();
    mu_Dir.reset();
    mu_MemData.reset();
    mu_UniMsg.reset();
    mu_HomeUniMsg.reset();
    mu_InvMsg.reset();
    mu_HomeInvMsg.reset();
    mu_RpMsg.reset();
    mu_HomeRpMsg.reset();
    mu_WbMsg.reset();
    mu_ShWbMsg.reset();
    mu_NakcMsg.reset();
    mu_CurrData.reset();
 };
  void print() {
    mu_Proc.print();
    mu_HomeProc.print();
    mu_Dir.print();
    mu_MemData.print();
    mu_UniMsg.print();
    mu_HomeUniMsg.print();
    mu_InvMsg.print();
    mu_HomeInvMsg.print();
    mu_RpMsg.print();
    mu_HomeRpMsg.print();
    mu_WbMsg.print();
    mu_ShWbMsg.print();
    mu_NakcMsg.print();
    mu_CurrData.print();
  };
  void print_diff(state *prevstate) {
    mu_Proc.print_diff(prevstate);
    mu_HomeProc.print_diff(prevstate);
    mu_Dir.print_diff(prevstate);
    mu_MemData.print_diff(prevstate);
    mu_UniMsg.print_diff(prevstate);
    mu_HomeUniMsg.print_diff(prevstate);
    mu_InvMsg.print_diff(prevstate);
    mu_HomeInvMsg.print_diff(prevstate);
    mu_RpMsg.print_diff(prevstate);
    mu_HomeRpMsg.print_diff(prevstate);
    mu_WbMsg.print_diff(prevstate);
    mu_ShWbMsg.print_diff(prevstate);
    mu_NakcMsg.print_diff(prevstate);
    mu_CurrData.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_Proc.to_state(thestate);
    mu_HomeProc.to_state(thestate);
    mu_Dir.to_state(thestate);
    mu_MemData.to_state(thestate);
    mu_UniMsg.to_state(thestate);
    mu_HomeUniMsg.to_state(thestate);
    mu_InvMsg.to_state(thestate);
    mu_HomeInvMsg.to_state(thestate);
    mu_RpMsg.to_state(thestate);
    mu_HomeRpMsg.to_state(thestate);
    mu_WbMsg.to_state(thestate);
    mu_ShWbMsg.to_state(thestate);
    mu_NakcMsg.to_state(thestate);
    mu_CurrData.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_STATE& operator= (const mu_1_STATE& from) {
    mu_Proc = from.mu_Proc;
    mu_HomeProc = from.mu_HomeProc;
    mu_Dir = from.mu_Dir;
    mu_MemData.value(from.mu_MemData.value());
    mu_UniMsg = from.mu_UniMsg;
    mu_HomeUniMsg = from.mu_HomeUniMsg;
    mu_InvMsg = from.mu_InvMsg;
    mu_HomeInvMsg = from.mu_HomeInvMsg;
    mu_RpMsg = from.mu_RpMsg;
    mu_HomeRpMsg = from.mu_HomeRpMsg;
    mu_WbMsg = from.mu_WbMsg;
    mu_ShWbMsg = from.mu_ShWbMsg;
    mu_NakcMsg = from.mu_NakcMsg;
    mu_CurrData.value(from.mu_CurrData.value());
    return *this;
  };
};

  void mu_1_STATE::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_STATE::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_STATE::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_Proc.set_self_2(name, ".Proc", os + 0 ); else mu_Proc.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeProc.set_self_2(name, ".HomeProc", os + 64 ); else mu_HomeProc.set_self_2(NULL, NULL, 0);
  if (name) mu_Dir.set_self_2(name, ".Dir", os + 96 ); else mu_Dir.set_self_2(NULL, NULL, 0);
  if (name) mu_MemData.set_self_2(name, ".MemData", os + 200 ); else mu_MemData.set_self_2(NULL, NULL, 0);
  if (name) mu_UniMsg.set_self_2(name, ".UniMsg", os + 208 ); else mu_UniMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeUniMsg.set_self_2(name, ".HomeUniMsg", os + 272 ); else mu_HomeUniMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_InvMsg.set_self_2(name, ".InvMsg", os + 304 ); else mu_InvMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeInvMsg.set_self_2(name, ".HomeInvMsg", os + 320 ); else mu_HomeInvMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_RpMsg.set_self_2(name, ".RpMsg", os + 328 ); else mu_RpMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_HomeRpMsg.set_self_2(name, ".HomeRpMsg", os + 344 ); else mu_HomeRpMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_WbMsg.set_self_2(name, ".WbMsg", os + 352 ); else mu_WbMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_ShWbMsg.set_self_2(name, ".ShWbMsg", os + 384 ); else mu_ShWbMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_NakcMsg.set_self_2(name, ".NakcMsg", os + 416 ); else mu_NakcMsg.set_self_2(NULL, NULL, 0);
  if (name) mu_CurrData.set_self_2(name, ".CurrData", os + 424 ); else mu_CurrData.set_self_2(NULL, NULL, 0);
}

mu_1_STATE::~mu_1_STATE()
{
}

/*** end record declaration ***/
mu_1_STATE mu_1_STATE_undefined_var;

const int mu_NODE_NUM = 2;
const int mu_DATA_NUM = 2;
const int mu_CACHE_I = 1;
const int mu_CACHE_S = 2;
const int mu_CACHE_E = 3;
const int mu_NODE_None = 4;
const int mu_NODE_Get = 5;
const int mu_NODE_GetX = 6;
const int mu_UNI_None = 7;
const int mu_UNI_Get = 8;
const int mu_UNI_GetX = 9;
const int mu_UNI_Put = 10;
const int mu_UNI_PutX = 11;
const int mu_UNI_Nak = 12;
const int mu_INV_None = 13;
const int mu_INV_Inv = 14;
const int mu_INV_InvAck = 15;
const int mu_RP_None = 16;
const int mu_RP_Replace = 17;
const int mu_WB_None = 18;
const int mu_WB_Wb = 19;
const int mu_SHWB_None = 20;
const int mu_SHWB_ShWb = 21;
const int mu_SHWB_FAck = 22;
const int mu_NAKC_None = 23;
const int mu_NAKC_Nakc = 24;
/*** Variable declaration ***/
mu_1_STATE mu_Sta("Sta",0);





/********************
  The world
 ********************/
void world_class::clear()
{
  mu_Sta.clear();
}
void world_class::undefine()
{
  mu_Sta.undefine();
}
void world_class::reset()
{
  mu_Sta.reset();
}
void world_class::print()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Sta.print();
    num_calls--;
}
}
void world_class::print_statistic()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Sta.print_statistic();
    num_calls--;
}
}
void world_class::print_diff( state *prevstate )
{
  if ( prevstate != NULL )
  {
    mu_Sta.print_diff(prevstate);
  }
  else
print();
}
void world_class::to_state(state *newstate)
{
  mu_Sta.to_state( newstate );
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
    return tsprintf("NI_Replace_Home");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_HomeRpMsg.mu_Cmd) == (mu_RP_Replace);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 0;
    while (what_rule < 1 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_HomeRpMsg.mu_Cmd) == (mu_RP_Replace)) {
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
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeRpMsg.mu_Cmd = mu_RP_None;
if ( mu_Sta.mu_Dir.mu_ShrVld )
{
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
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
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Replace, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_RpMsg[mu_src].mu_Cmd) == (mu_RP_Replace);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 1;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 3 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) == (mu_RP_Replace)) {
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
    r = what_rule - 1;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_RpMsg[mu_src].mu_Cmd = mu_RP_None;
if ( mu_Sta.mu_Dir.mu_ShrVld )
{
mu_Sta.mu_Dir.mu_ShrSet[mu_src] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
}
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
    return tsprintf("NI_ShWb");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_ShWbMsg.mu_Cmd) == (mu_SHWB_ShWb);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 3;
    while (what_rule < 4 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_ShWbMsg.mu_Cmd) == (mu_SHWB_ShWb)) {
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
    r = what_rule - 3;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_ShWbMsg.mu_Cmd = mu_SHWB_None;
mu_Sta.mu_Dir.mu_Pending = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_true;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr6;
bool mu__boolexpr7;
  if (!((mu_p) == (mu_Sta.mu_ShWbMsg.mu_Proc))) mu__boolexpr7 = FALSE ;
  else {
  mu__boolexpr7 = (!(mu_Sta.mu_ShWbMsg.mu_HomeProc)) ; 
}
  if (mu__boolexpr7) mu__boolexpr6 = TRUE ;
  else {
  mu__boolexpr6 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
if ( mu__boolexpr6 )
{
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_true;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
}
else
{
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
}
};
};
bool mu__boolexpr8;
  if (mu_Sta.mu_ShWbMsg.mu_HomeProc) mu__boolexpr8 = TRUE ;
  else {
  mu__boolexpr8 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
if ( mu__boolexpr8 )
{
mu_Sta.mu_Dir.mu_HomeShrSet = mu_true;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_true;
}
else
{
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
}
mu_Sta.mu_MemData = mu_Sta.mu_ShWbMsg.mu_Data;
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
    return tsprintf("NI_FAck");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_ShWbMsg.mu_Cmd) == (mu_SHWB_FAck);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 4;
    while (what_rule < 5 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_ShWbMsg.mu_Cmd) == (mu_SHWB_FAck)) {
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
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_ShWbMsg.mu_Cmd = mu_SHWB_None;
mu_Sta.mu_Dir.mu_Pending = mu_false;
if ( mu_Sta.mu_Dir.mu_Dirty )
{
mu_Sta.mu_Dir.mu_HeadPtr = mu_Sta.mu_ShWbMsg.mu_Proc;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_Sta.mu_ShWbMsg.mu_HomeProc;
}
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
    return tsprintf("NI_Wb");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_WbMsg.mu_Cmd) == (mu_WB_Wb);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 5;
    while (what_rule < 6 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_WbMsg.mu_Cmd) == (mu_WB_Wb)) {
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
    r = what_rule - 5;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_WbMsg.mu_Cmd = mu_WB_None;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_Dir.mu_HeadVld = mu_false;
mu_Sta.mu_MemData = mu_Sta.mu_WbMsg.mu_Data;
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
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_InvAck_3, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr9;
bool mu__boolexpr10;
bool mu__boolexpr11;
bool mu__boolexpr12;
bool mu__boolexpr13;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr13 = FALSE ;
  else {
  mu__boolexpr13 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr13)) mu__boolexpr12 = FALSE ;
  else {
  mu__boolexpr12 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr12)) mu__boolexpr11 = FALSE ;
  else {
  mu__boolexpr11 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr11)) mu__boolexpr10 = FALSE ;
  else {
  mu__boolexpr10 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr10)) mu__boolexpr9 = FALSE ;
  else {
bool mu__quant14; 
mu__quant14 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr15;
  if ((mu_p) == (mu_src)) mu__boolexpr15 = TRUE ;
  else {
  mu__boolexpr15 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr15) )
  { mu__quant14 = FALSE; break; }
};
};
  mu__boolexpr9 = (mu__quant14) ; 
}
    return mu__boolexpr9;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 6;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 8 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr16;
bool mu__boolexpr17;
bool mu__boolexpr18;
bool mu__boolexpr19;
bool mu__boolexpr20;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr20 = FALSE ;
  else {
  mu__boolexpr20 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr20)) mu__boolexpr19 = FALSE ;
  else {
  mu__boolexpr19 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr19)) mu__boolexpr18 = FALSE ;
  else {
  mu__boolexpr18 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr18)) mu__boolexpr17 = FALSE ;
  else {
  mu__boolexpr17 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr17)) mu__boolexpr16 = FALSE ;
  else {
bool mu__quant21; 
mu__quant21 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr22;
  if ((mu_p) == (mu_src)) mu__boolexpr22 = TRUE ;
  else {
  mu__boolexpr22 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr22) )
  { mu__quant21 = FALSE; break; }
};
};
  mu__boolexpr16 = (mu__quant21) ; 
}
	      if (mu__boolexpr16) {
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
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_src].mu_Cmd = mu_INV_None;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
mu_Sta.mu_Dir.mu_Pending = mu_false;
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
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_InvAck_2, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr23;
bool mu__boolexpr24;
bool mu__boolexpr25;
bool mu__boolexpr26;
bool mu__boolexpr27;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr27 = FALSE ;
  else {
  mu__boolexpr27 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr27)) mu__boolexpr26 = FALSE ;
  else {
  mu__boolexpr26 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr26)) mu__boolexpr25 = FALSE ;
  else {
  mu__boolexpr25 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr25)) mu__boolexpr24 = FALSE ;
  else {
  mu__boolexpr24 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr24)) mu__boolexpr23 = FALSE ;
  else {
bool mu__quant28; 
mu__quant28 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr29;
  if ((mu_p) == (mu_src)) mu__boolexpr29 = TRUE ;
  else {
  mu__boolexpr29 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr29) )
  { mu__quant28 = FALSE; break; }
};
};
  mu__boolexpr23 = (mu__quant28) ; 
}
    return mu__boolexpr23;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 8;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 10 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr30;
bool mu__boolexpr31;
bool mu__boolexpr32;
bool mu__boolexpr33;
bool mu__boolexpr34;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr34 = FALSE ;
  else {
  mu__boolexpr34 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr34)) mu__boolexpr33 = FALSE ;
  else {
  mu__boolexpr33 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr33)) mu__boolexpr32 = FALSE ;
  else {
  mu__boolexpr32 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr32)) mu__boolexpr31 = FALSE ;
  else {
  mu__boolexpr31 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr31)) mu__boolexpr30 = FALSE ;
  else {
bool mu__quant35; 
mu__quant35 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr36;
  if ((mu_p) == (mu_src)) mu__boolexpr36 = TRUE ;
  else {
  mu__boolexpr36 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr36) )
  { mu__quant35 = FALSE; break; }
};
};
  mu__boolexpr30 = (mu__quant35) ; 
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
    r = what_rule - 8;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_src].mu_Cmd = mu_INV_None;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
mu_Sta.mu_Dir.mu_Pending = mu_false;
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
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_InvAck_1, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr37;
bool mu__boolexpr38;
bool mu__boolexpr39;
bool mu__boolexpr40;
bool mu__boolexpr41;
bool mu__boolexpr42;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr42 = FALSE ;
  else {
  mu__boolexpr42 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr42)) mu__boolexpr41 = FALSE ;
  else {
  mu__boolexpr41 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr41)) mu__boolexpr40 = FALSE ;
  else {
  mu__boolexpr40 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr40)) mu__boolexpr39 = FALSE ;
  else {
  mu__boolexpr39 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr39)) mu__boolexpr38 = FALSE ;
  else {
  mu__boolexpr38 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr38)) mu__boolexpr37 = FALSE ;
  else {
bool mu__quant43; 
mu__quant43 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr44;
  if ((mu_p) == (mu_src)) mu__boolexpr44 = TRUE ;
  else {
  mu__boolexpr44 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr44) )
  { mu__quant43 = FALSE; break; }
};
};
  mu__boolexpr37 = (mu__quant43) ; 
}
    return mu__boolexpr37;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 10;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 12 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr45;
bool mu__boolexpr46;
bool mu__boolexpr47;
bool mu__boolexpr48;
bool mu__boolexpr49;
bool mu__boolexpr50;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr50 = FALSE ;
  else {
  mu__boolexpr50 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr50)) mu__boolexpr49 = FALSE ;
  else {
  mu__boolexpr49 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr49)) mu__boolexpr48 = FALSE ;
  else {
  mu__boolexpr48 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr48)) mu__boolexpr47 = FALSE ;
  else {
  mu__boolexpr47 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr47)) mu__boolexpr46 = FALSE ;
  else {
  mu__boolexpr46 = (!(mu_Sta.mu_Dir.mu_HomeInvSet)) ; 
}
  if (!(mu__boolexpr46)) mu__boolexpr45 = FALSE ;
  else {
bool mu__quant51; 
mu__quant51 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr52;
  if ((mu_p) == (mu_src)) mu__boolexpr52 = TRUE ;
  else {
  mu__boolexpr52 = (!(mu_Sta.mu_Dir.mu_InvSet[mu_p])) ; 
}
if ( !(mu__boolexpr52) )
  { mu__quant51 = FALSE; break; }
};
};
  mu__boolexpr45 = (mu__quant51) ; 
}
	      if (mu__boolexpr45) {
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
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_src].mu_Cmd = mu_INV_None;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
mu_Sta.mu_Dir.mu_Pending = mu_false;
mu_Sta.mu_Dir.mu_Local = mu_false;
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
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_InvAck_exists, pp:%s, src:%s", mu_pp.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr53;
bool mu__boolexpr54;
bool mu__boolexpr55;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr55 = FALSE ;
  else {
  mu__boolexpr55 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr55)) mu__boolexpr54 = FALSE ;
  else {
  mu__boolexpr54 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr54)) mu__boolexpr53 = FALSE ;
  else {
bool mu__boolexpr56;
  if (!((mu_pp) != (mu_src))) mu__boolexpr56 = FALSE ;
  else {
  mu__boolexpr56 = (mu_Sta.mu_Dir.mu_InvSet[mu_pp]) ; 
}
  mu__boolexpr53 = (mu__boolexpr56) ; 
}
    return mu__boolexpr53;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 12;
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 16 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr57;
bool mu__boolexpr58;
bool mu__boolexpr59;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr59 = FALSE ;
  else {
  mu__boolexpr59 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr59)) mu__boolexpr58 = FALSE ;
  else {
  mu__boolexpr58 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr58)) mu__boolexpr57 = FALSE ;
  else {
bool mu__boolexpr60;
  if (!((mu_pp) != (mu_src))) mu__boolexpr60 = FALSE ;
  else {
  mu__boolexpr60 = (mu_Sta.mu_Dir.mu_InvSet[mu_pp]) ; 
}
  mu__boolexpr57 = (mu__boolexpr60) ; 
}
	      if (mu__boolexpr57) {
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
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_src].mu_Cmd = mu_INV_None;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
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
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_InvAck_exists_Home, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr61;
bool mu__boolexpr62;
bool mu__boolexpr63;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr63 = FALSE ;
  else {
  mu__boolexpr63 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr63)) mu__boolexpr62 = FALSE ;
  else {
  mu__boolexpr62 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr62)) mu__boolexpr61 = FALSE ;
  else {
  mu__boolexpr61 = (mu_Sta.mu_Dir.mu_HomeInvSet) ; 
}
    return mu__boolexpr61;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 16;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 18 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr64;
bool mu__boolexpr65;
bool mu__boolexpr66;
  if (!((mu_Sta.mu_InvMsg[mu_src].mu_Cmd) == (mu_INV_InvAck))) mu__boolexpr66 = FALSE ;
  else {
  mu__boolexpr66 = (mu_Sta.mu_Dir.mu_Pending) ; 
}
  if (!(mu__boolexpr66)) mu__boolexpr65 = FALSE ;
  else {
  mu__boolexpr65 = (mu_Sta.mu_Dir.mu_InvSet[mu_src]) ; 
}
  if (!(mu__boolexpr65)) mu__boolexpr64 = FALSE ;
  else {
  mu__boolexpr64 = (mu_Sta.mu_Dir.mu_HomeInvSet) ; 
}
	      if (mu__boolexpr64) {
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
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_src].mu_Cmd = mu_INV_None;
mu_Sta.mu_Dir.mu_InvSet[mu_src] = mu_false;
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
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Inv, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_InvMsg[mu_dst].mu_Cmd) == (mu_INV_Inv);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 18;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 20 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_InvMsg[mu_dst].mu_Cmd) == (mu_INV_Inv)) {
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
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_InvMsg[mu_dst].mu_Cmd = mu_INV_InvAck;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_I;
if ( (mu_Sta.mu_Proc[mu_dst].mu_ProcCmd) == (mu_NODE_Get) )
{
mu_Sta.mu_Proc[mu_dst].mu_InvMarked = mu_true;
}
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
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_PutX, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr67;
  if (!((mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_PutX))) mu__boolexpr67 = FALSE ;
  else {
  mu__boolexpr67 = ((mu_Sta.mu_Proc[mu_dst].mu_ProcCmd) == (mu_NODE_GetX)) ; 
}
    return mu__boolexpr67;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 20;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 22 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr68;
  if (!((mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_PutX))) mu__boolexpr68 = FALSE ;
  else {
  mu__boolexpr68 = ((mu_Sta.mu_Proc[mu_dst].mu_ProcCmd) == (mu_NODE_GetX)) ; 
}
	      if (mu__boolexpr68) {
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
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_dst].mu_Cmd = mu_UNI_None;
mu_Sta.mu_Proc[mu_dst].mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_Proc[mu_dst].mu_InvMarked = mu_false;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_E;
mu_Sta.mu_Proc[mu_dst].mu_CacheData = mu_Sta.mu_UniMsg[mu_dst].mu_Data;
  };

};
/******************** RuleBase12 ********************/
class RuleBase12
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("NI_Local_PutXAcksDone");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_PutX);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 22;
    while (what_rule < 23 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_PutX)) {
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
    r = what_rule - 22;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_None;
mu_Sta.mu_Dir.mu_Pending = mu_false;
mu_Sta.mu_Dir.mu_Local = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_false;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_E;
mu_Sta.mu_HomeProc.mu_CacheData = mu_Sta.mu_HomeUniMsg.mu_Data;
  };

};
/******************** RuleBase13 ********************/
class RuleBase13
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_Put, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_Put);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 23;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 25 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_Put)) {
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
    r = what_rule - 23;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_dst].mu_Cmd = mu_UNI_None;
mu_Sta.mu_Proc[mu_dst].mu_ProcCmd = mu_NODE_None;
if ( mu_Sta.mu_Proc[mu_dst].mu_InvMarked )
{
mu_Sta.mu_Proc[mu_dst].mu_InvMarked = mu_false;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_I;
}
else
{
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_S;
mu_Sta.mu_Proc[mu_dst].mu_CacheData = mu_Sta.mu_UniMsg[mu_dst].mu_Data;
}
  };

};
/******************** RuleBase14 ********************/
class RuleBase14
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("NI_Local_Put");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Put);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 25;
    while (what_rule < 26 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Put)) {
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
    r = what_rule - 25;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_None;
mu_Sta.mu_Dir.mu_Pending = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_Dir.mu_Local = mu_true;
mu_Sta.mu_MemData = mu_Sta.mu_HomeUniMsg.mu_Data;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
if ( mu_Sta.mu_HomeProc.mu_InvMarked )
{
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
}
else
{
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_S;
mu_Sta.mu_HomeProc.mu_CacheData = mu_Sta.mu_HomeUniMsg.mu_Data;
}
  };

};
/******************** RuleBase15 ********************/
class RuleBase15
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_GetX_PutX_Home, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr69;
bool mu__boolexpr70;
bool mu__boolexpr71;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr71 = FALSE ;
  else {
  mu__boolexpr71 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr71)) mu__boolexpr70 = FALSE ;
  else {
  mu__boolexpr70 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr70)) mu__boolexpr69 = FALSE ;
  else {
  mu__boolexpr69 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr69;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 26;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 28 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr72;
bool mu__boolexpr73;
bool mu__boolexpr74;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr74 = FALSE ;
  else {
  mu__boolexpr74 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr74)) mu__boolexpr73 = FALSE ;
  else {
  mu__boolexpr73 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr73)) mu__boolexpr72 = FALSE ;
  else {
  mu__boolexpr72 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr72) {
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
    r = what_rule - 26;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_HomeUniMsg.mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
  };

};
/******************** RuleBase16 ********************/
class RuleBase16
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_GetX_PutX, dst:%s, src:%s", mu_dst.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr75;
bool mu__boolexpr76;
bool mu__boolexpr77;
bool mu__boolexpr78;
  if (!((mu_src) != (mu_dst))) mu__boolexpr78 = FALSE ;
  else {
  mu__boolexpr78 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX)) ; 
}
  if (!(mu__boolexpr78)) mu__boolexpr77 = FALSE ;
  else {
  mu__boolexpr77 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr77)) mu__boolexpr76 = FALSE ;
  else {
  mu__boolexpr76 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr76)) mu__boolexpr75 = FALSE ;
  else {
  mu__boolexpr75 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr75;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 28;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 32 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr79;
bool mu__boolexpr80;
bool mu__boolexpr81;
bool mu__boolexpr82;
  if (!((mu_src) != (mu_dst))) mu__boolexpr82 = FALSE ;
  else {
  mu__boolexpr82 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX)) ; 
}
  if (!(mu__boolexpr82)) mu__boolexpr81 = FALSE ;
  else {
  mu__boolexpr81 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr81)) mu__boolexpr80 = FALSE ;
  else {
  mu__boolexpr80 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr80)) mu__boolexpr79 = FALSE ;
  else {
  mu__boolexpr79 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr79) {
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
    r = what_rule - 28;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_I;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
mu_Sta.mu_ShWbMsg.mu_Cmd = mu_SHWB_FAck;
mu_Sta.mu_ShWbMsg.mu_Proc = mu_src;
mu_Sta.mu_ShWbMsg.mu_HomeProc = mu_false;
  };

};
/******************** RuleBase17 ********************/
class RuleBase17
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_GetX_Nak_Home, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr83;
bool mu__boolexpr84;
bool mu__boolexpr85;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr85 = FALSE ;
  else {
  mu__boolexpr85 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr85)) mu__boolexpr84 = FALSE ;
  else {
  mu__boolexpr84 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr84)) mu__boolexpr83 = FALSE ;
  else {
  mu__boolexpr83 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
    return mu__boolexpr83;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 32;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 34 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr86;
bool mu__boolexpr87;
bool mu__boolexpr88;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr88 = FALSE ;
  else {
  mu__boolexpr88 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr88)) mu__boolexpr87 = FALSE ;
  else {
  mu__boolexpr87 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr87)) mu__boolexpr86 = FALSE ;
  else {
  mu__boolexpr86 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr86) {
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
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_Nak;
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_Nakc;
  };

};
/******************** RuleBase18 ********************/
class RuleBase18
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_GetX_Nak, dst:%s, src:%s", mu_dst.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr89;
bool mu__boolexpr90;
bool mu__boolexpr91;
bool mu__boolexpr92;
  if (!((mu_src) != (mu_dst))) mu__boolexpr92 = FALSE ;
  else {
  mu__boolexpr92 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX)) ; 
}
  if (!(mu__boolexpr92)) mu__boolexpr91 = FALSE ;
  else {
  mu__boolexpr91 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr91)) mu__boolexpr90 = FALSE ;
  else {
  mu__boolexpr90 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr90)) mu__boolexpr89 = FALSE ;
  else {
  mu__boolexpr89 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
    return mu__boolexpr89;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 34;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 38 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr93;
bool mu__boolexpr94;
bool mu__boolexpr95;
bool mu__boolexpr96;
  if (!((mu_src) != (mu_dst))) mu__boolexpr96 = FALSE ;
  else {
  mu__boolexpr96 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX)) ; 
}
  if (!(mu__boolexpr96)) mu__boolexpr95 = FALSE ;
  else {
  mu__boolexpr95 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr95)) mu__boolexpr94 = FALSE ;
  else {
  mu__boolexpr94 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr94)) mu__boolexpr93 = FALSE ;
  else {
  mu__boolexpr93 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr93) {
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
    r = what_rule - 34;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Nak;
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_Nakc;
  };

};
/******************** RuleBase19 ********************/
class RuleBase19
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_11, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr97;
bool mu__boolexpr98;
bool mu__boolexpr99;
bool mu__boolexpr100;
bool mu__boolexpr101;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr101 = FALSE ;
  else {
  mu__boolexpr101 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr101)) mu__boolexpr100 = FALSE ;
  else {
  mu__boolexpr100 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr100)) mu__boolexpr99 = FALSE ;
  else {
  mu__boolexpr99 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr99)) mu__boolexpr98 = FALSE ;
  else {
  mu__boolexpr98 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr98)) mu__boolexpr97 = FALSE ;
  else {
  mu__boolexpr97 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr97;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 38;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 40 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr102;
bool mu__boolexpr103;
bool mu__boolexpr104;
bool mu__boolexpr105;
bool mu__boolexpr106;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr106 = FALSE ;
  else {
  mu__boolexpr106 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr106)) mu__boolexpr105 = FALSE ;
  else {
  mu__boolexpr105 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr105)) mu__boolexpr104 = FALSE ;
  else {
  mu__boolexpr104 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr104)) mu__boolexpr103 = FALSE ;
  else {
  mu__boolexpr103 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr103)) mu__boolexpr102 = FALSE ;
  else {
  mu__boolexpr102 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr102) {
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
    r = what_rule - 38;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_HomeProc.mu_CacheData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase20 ********************/
class RuleBase20
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_10, pp:%s, src:%s", mu_pp.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr107;
bool mu__boolexpr108;
bool mu__boolexpr109;
bool mu__boolexpr110;
bool mu__boolexpr111;
bool mu__boolexpr112;
bool mu__boolexpr113;
bool mu__boolexpr114;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr114 = FALSE ;
  else {
  mu__boolexpr114 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr114)) mu__boolexpr113 = FALSE ;
  else {
  mu__boolexpr113 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr113)) mu__boolexpr112 = FALSE ;
  else {
  mu__boolexpr112 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr112)) mu__boolexpr111 = FALSE ;
  else {
  mu__boolexpr111 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr111)) mu__boolexpr110 = FALSE ;
  else {
  mu__boolexpr110 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr110)) mu__boolexpr109 = FALSE ;
  else {
  mu__boolexpr109 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr109)) mu__boolexpr108 = FALSE ;
  else {
  mu__boolexpr108 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr108)) mu__boolexpr107 = FALSE ;
  else {
  mu__boolexpr107 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
    return mu__boolexpr107;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 40;
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 44 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr115;
bool mu__boolexpr116;
bool mu__boolexpr117;
bool mu__boolexpr118;
bool mu__boolexpr119;
bool mu__boolexpr120;
bool mu__boolexpr121;
bool mu__boolexpr122;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr122 = FALSE ;
  else {
  mu__boolexpr122 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr122)) mu__boolexpr121 = FALSE ;
  else {
  mu__boolexpr121 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr121)) mu__boolexpr120 = FALSE ;
  else {
  mu__boolexpr120 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr120)) mu__boolexpr119 = FALSE ;
  else {
  mu__boolexpr119 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr119)) mu__boolexpr118 = FALSE ;
  else {
  mu__boolexpr118 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr118)) mu__boolexpr117 = FALSE ;
  else {
  mu__boolexpr117 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr117)) mu__boolexpr116 = FALSE ;
  else {
  mu__boolexpr116 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr116)) mu__boolexpr115 = FALSE ;
  else {
  mu__boolexpr115 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
	      if (mu__boolexpr115) {
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
    r = what_rule - 40;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr123;
  if (!((mu_p) != (mu_src))) mu__boolexpr123 = FALSE ;
  else {
bool mu__boolexpr124;
bool mu__boolexpr125;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr125 = FALSE ;
  else {
  mu__boolexpr125 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr125) mu__boolexpr124 = TRUE ;
  else {
bool mu__boolexpr126;
bool mu__boolexpr127;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr127 = FALSE ;
  else {
  mu__boolexpr127 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr127)) mu__boolexpr126 = FALSE ;
  else {
  mu__boolexpr126 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr124 = (mu__boolexpr126) ; 
}
  mu__boolexpr123 = (mu__boolexpr124) ; 
}
if ( mu__boolexpr123 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase21 ********************/
class RuleBase21
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_10_Home, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr128;
bool mu__boolexpr129;
bool mu__boolexpr130;
bool mu__boolexpr131;
bool mu__boolexpr132;
bool mu__boolexpr133;
bool mu__boolexpr134;
bool mu__boolexpr135;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr135 = FALSE ;
  else {
  mu__boolexpr135 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr135)) mu__boolexpr134 = FALSE ;
  else {
  mu__boolexpr134 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr134)) mu__boolexpr133 = FALSE ;
  else {
  mu__boolexpr133 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr133)) mu__boolexpr132 = FALSE ;
  else {
  mu__boolexpr132 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr132)) mu__boolexpr131 = FALSE ;
  else {
  mu__boolexpr131 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr131)) mu__boolexpr130 = FALSE ;
  else {
  mu__boolexpr130 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr130)) mu__boolexpr129 = FALSE ;
  else {
  mu__boolexpr129 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr129)) mu__boolexpr128 = FALSE ;
  else {
  mu__boolexpr128 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
    return mu__boolexpr128;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 44;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 46 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr136;
bool mu__boolexpr137;
bool mu__boolexpr138;
bool mu__boolexpr139;
bool mu__boolexpr140;
bool mu__boolexpr141;
bool mu__boolexpr142;
bool mu__boolexpr143;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr143 = FALSE ;
  else {
  mu__boolexpr143 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr143)) mu__boolexpr142 = FALSE ;
  else {
  mu__boolexpr142 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr142)) mu__boolexpr141 = FALSE ;
  else {
  mu__boolexpr141 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr141)) mu__boolexpr140 = FALSE ;
  else {
  mu__boolexpr140 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr140)) mu__boolexpr139 = FALSE ;
  else {
  mu__boolexpr139 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr139)) mu__boolexpr138 = FALSE ;
  else {
  mu__boolexpr138 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr138)) mu__boolexpr137 = FALSE ;
  else {
  mu__boolexpr137 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr137)) mu__boolexpr136 = FALSE ;
  else {
  mu__boolexpr136 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
	      if (mu__boolexpr136) {
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
    r = what_rule - 44;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr144;
  if (!((mu_p) != (mu_src))) mu__boolexpr144 = FALSE ;
  else {
bool mu__boolexpr145;
bool mu__boolexpr146;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr146 = FALSE ;
  else {
  mu__boolexpr146 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr146) mu__boolexpr145 = TRUE ;
  else {
bool mu__boolexpr147;
bool mu__boolexpr148;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr148 = FALSE ;
  else {
  mu__boolexpr148 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr148)) mu__boolexpr147 = FALSE ;
  else {
  mu__boolexpr147 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr145 = (mu__boolexpr147) ; 
}
  mu__boolexpr144 = (mu__boolexpr145) ; 
}
if ( mu__boolexpr144 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase22 ********************/
class RuleBase22
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_9, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr149;
bool mu__boolexpr150;
bool mu__boolexpr151;
bool mu__boolexpr152;
bool mu__boolexpr153;
bool mu__boolexpr154;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr154 = FALSE ;
  else {
  mu__boolexpr154 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr154)) mu__boolexpr153 = FALSE ;
  else {
  mu__boolexpr153 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr153)) mu__boolexpr152 = FALSE ;
  else {
  mu__boolexpr152 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr152)) mu__boolexpr151 = FALSE ;
  else {
  mu__boolexpr151 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr151)) mu__boolexpr150 = FALSE ;
  else {
bool mu__boolexpr155;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr155 = TRUE ;
  else {
  mu__boolexpr155 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr150 = (mu__boolexpr155) ; 
}
  if (!(mu__boolexpr150)) mu__boolexpr149 = FALSE ;
  else {
  mu__boolexpr149 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
    return mu__boolexpr149;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 46;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 48 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr156;
bool mu__boolexpr157;
bool mu__boolexpr158;
bool mu__boolexpr159;
bool mu__boolexpr160;
bool mu__boolexpr161;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr161 = FALSE ;
  else {
  mu__boolexpr161 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr161)) mu__boolexpr160 = FALSE ;
  else {
  mu__boolexpr160 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr160)) mu__boolexpr159 = FALSE ;
  else {
  mu__boolexpr159 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr159)) mu__boolexpr158 = FALSE ;
  else {
  mu__boolexpr158 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr158)) mu__boolexpr157 = FALSE ;
  else {
bool mu__boolexpr162;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr162 = TRUE ;
  else {
  mu__boolexpr162 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr157 = (mu__boolexpr162) ; 
}
  if (!(mu__boolexpr157)) mu__boolexpr156 = FALSE ;
  else {
  mu__boolexpr156 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
	      if (mu__boolexpr156) {
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
    r = what_rule - 46;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr163;
  if (!((mu_p) != (mu_src))) mu__boolexpr163 = FALSE ;
  else {
bool mu__boolexpr164;
bool mu__boolexpr165;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr165 = FALSE ;
  else {
  mu__boolexpr165 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr165) mu__boolexpr164 = TRUE ;
  else {
bool mu__boolexpr166;
bool mu__boolexpr167;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr167 = FALSE ;
  else {
  mu__boolexpr167 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr167)) mu__boolexpr166 = FALSE ;
  else {
  mu__boolexpr166 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr164 = (mu__boolexpr166) ; 
}
  mu__boolexpr163 = (mu__boolexpr164) ; 
}
if ( mu__boolexpr163 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase23 ********************/
class RuleBase23
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_8_NODE_Get, pp:%s, src:%s", mu_pp.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr168;
bool mu__boolexpr169;
bool mu__boolexpr170;
bool mu__boolexpr171;
bool mu__boolexpr172;
bool mu__boolexpr173;
bool mu__boolexpr174;
bool mu__boolexpr175;
bool mu__boolexpr176;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr176 = FALSE ;
  else {
  mu__boolexpr176 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr176)) mu__boolexpr175 = FALSE ;
  else {
  mu__boolexpr175 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr175)) mu__boolexpr174 = FALSE ;
  else {
  mu__boolexpr174 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr174)) mu__boolexpr173 = FALSE ;
  else {
  mu__boolexpr173 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr173)) mu__boolexpr172 = FALSE ;
  else {
  mu__boolexpr172 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr172)) mu__boolexpr171 = FALSE ;
  else {
  mu__boolexpr171 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr171)) mu__boolexpr170 = FALSE ;
  else {
  mu__boolexpr170 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr170)) mu__boolexpr169 = FALSE ;
  else {
  mu__boolexpr169 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr169)) mu__boolexpr168 = FALSE ;
  else {
  mu__boolexpr168 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
    return mu__boolexpr168;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 48;
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 52 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr177;
bool mu__boolexpr178;
bool mu__boolexpr179;
bool mu__boolexpr180;
bool mu__boolexpr181;
bool mu__boolexpr182;
bool mu__boolexpr183;
bool mu__boolexpr184;
bool mu__boolexpr185;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr185 = FALSE ;
  else {
  mu__boolexpr185 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr185)) mu__boolexpr184 = FALSE ;
  else {
  mu__boolexpr184 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr184)) mu__boolexpr183 = FALSE ;
  else {
  mu__boolexpr183 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr183)) mu__boolexpr182 = FALSE ;
  else {
  mu__boolexpr182 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr182)) mu__boolexpr181 = FALSE ;
  else {
  mu__boolexpr181 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr181)) mu__boolexpr180 = FALSE ;
  else {
  mu__boolexpr180 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr180)) mu__boolexpr179 = FALSE ;
  else {
  mu__boolexpr179 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr179)) mu__boolexpr178 = FALSE ;
  else {
  mu__boolexpr178 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr178)) mu__boolexpr177 = FALSE ;
  else {
  mu__boolexpr177 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr177) {
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
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr186;
  if (!((mu_p) != (mu_src))) mu__boolexpr186 = FALSE ;
  else {
bool mu__boolexpr187;
bool mu__boolexpr188;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr188 = FALSE ;
  else {
  mu__boolexpr188 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr188) mu__boolexpr187 = TRUE ;
  else {
bool mu__boolexpr189;
bool mu__boolexpr190;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr190 = FALSE ;
  else {
  mu__boolexpr190 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr190)) mu__boolexpr189 = FALSE ;
  else {
  mu__boolexpr189 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr187 = (mu__boolexpr189) ; 
}
  mu__boolexpr186 = (mu__boolexpr187) ; 
}
if ( mu__boolexpr186 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_true;
  };

};
/******************** RuleBase24 ********************/
class RuleBase24
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_8, pp:%s, src:%s", mu_pp.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr191;
bool mu__boolexpr192;
bool mu__boolexpr193;
bool mu__boolexpr194;
bool mu__boolexpr195;
bool mu__boolexpr196;
bool mu__boolexpr197;
bool mu__boolexpr198;
bool mu__boolexpr199;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr199 = FALSE ;
  else {
  mu__boolexpr199 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr199)) mu__boolexpr198 = FALSE ;
  else {
  mu__boolexpr198 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr198)) mu__boolexpr197 = FALSE ;
  else {
  mu__boolexpr197 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr197)) mu__boolexpr196 = FALSE ;
  else {
  mu__boolexpr196 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr196)) mu__boolexpr195 = FALSE ;
  else {
  mu__boolexpr195 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr195)) mu__boolexpr194 = FALSE ;
  else {
  mu__boolexpr194 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr194)) mu__boolexpr193 = FALSE ;
  else {
  mu__boolexpr193 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr193)) mu__boolexpr192 = FALSE ;
  else {
  mu__boolexpr192 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr192)) mu__boolexpr191 = FALSE ;
  else {
  mu__boolexpr191 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
    return mu__boolexpr191;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 52;
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 56 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr200;
bool mu__boolexpr201;
bool mu__boolexpr202;
bool mu__boolexpr203;
bool mu__boolexpr204;
bool mu__boolexpr205;
bool mu__boolexpr206;
bool mu__boolexpr207;
bool mu__boolexpr208;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr208 = FALSE ;
  else {
  mu__boolexpr208 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr208)) mu__boolexpr207 = FALSE ;
  else {
  mu__boolexpr207 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr207)) mu__boolexpr206 = FALSE ;
  else {
  mu__boolexpr206 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr206)) mu__boolexpr205 = FALSE ;
  else {
  mu__boolexpr205 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr205)) mu__boolexpr204 = FALSE ;
  else {
  mu__boolexpr204 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr204)) mu__boolexpr203 = FALSE ;
  else {
  mu__boolexpr203 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr203)) mu__boolexpr202 = FALSE ;
  else {
  mu__boolexpr202 = (mu_Sta.mu_Dir.mu_ShrSet[mu_pp]) ; 
}
  if (!(mu__boolexpr202)) mu__boolexpr201 = FALSE ;
  else {
  mu__boolexpr201 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr201)) mu__boolexpr200 = FALSE ;
  else {
  mu__boolexpr200 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr200) {
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
    r = what_rule - 52;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_pp;
    mu_pp.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr209;
  if (!((mu_p) != (mu_src))) mu__boolexpr209 = FALSE ;
  else {
bool mu__boolexpr210;
bool mu__boolexpr211;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr211 = FALSE ;
  else {
  mu__boolexpr211 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr211) mu__boolexpr210 = TRUE ;
  else {
bool mu__boolexpr212;
bool mu__boolexpr213;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr213 = FALSE ;
  else {
  mu__boolexpr213 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr213)) mu__boolexpr212 = FALSE ;
  else {
  mu__boolexpr212 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr210 = (mu__boolexpr212) ; 
}
  mu__boolexpr209 = (mu__boolexpr210) ; 
}
if ( mu__boolexpr209 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase25 ********************/
class RuleBase25
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_8_Home_NODE_Get, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr214;
bool mu__boolexpr215;
bool mu__boolexpr216;
bool mu__boolexpr217;
bool mu__boolexpr218;
bool mu__boolexpr219;
bool mu__boolexpr220;
bool mu__boolexpr221;
bool mu__boolexpr222;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr222 = FALSE ;
  else {
  mu__boolexpr222 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr222)) mu__boolexpr221 = FALSE ;
  else {
  mu__boolexpr221 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr221)) mu__boolexpr220 = FALSE ;
  else {
  mu__boolexpr220 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr220)) mu__boolexpr219 = FALSE ;
  else {
  mu__boolexpr219 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr219)) mu__boolexpr218 = FALSE ;
  else {
  mu__boolexpr218 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr218)) mu__boolexpr217 = FALSE ;
  else {
  mu__boolexpr217 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr217)) mu__boolexpr216 = FALSE ;
  else {
  mu__boolexpr216 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr216)) mu__boolexpr215 = FALSE ;
  else {
  mu__boolexpr215 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr215)) mu__boolexpr214 = FALSE ;
  else {
  mu__boolexpr214 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
    return mu__boolexpr214;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 56;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 58 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr223;
bool mu__boolexpr224;
bool mu__boolexpr225;
bool mu__boolexpr226;
bool mu__boolexpr227;
bool mu__boolexpr228;
bool mu__boolexpr229;
bool mu__boolexpr230;
bool mu__boolexpr231;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr231 = FALSE ;
  else {
  mu__boolexpr231 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr231)) mu__boolexpr230 = FALSE ;
  else {
  mu__boolexpr230 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr230)) mu__boolexpr229 = FALSE ;
  else {
  mu__boolexpr229 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr229)) mu__boolexpr228 = FALSE ;
  else {
  mu__boolexpr228 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr228)) mu__boolexpr227 = FALSE ;
  else {
  mu__boolexpr227 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr227)) mu__boolexpr226 = FALSE ;
  else {
  mu__boolexpr226 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr226)) mu__boolexpr225 = FALSE ;
  else {
  mu__boolexpr225 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr225)) mu__boolexpr224 = FALSE ;
  else {
  mu__boolexpr224 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr224)) mu__boolexpr223 = FALSE ;
  else {
  mu__boolexpr223 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr223) {
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
    r = what_rule - 56;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr232;
  if (!((mu_p) != (mu_src))) mu__boolexpr232 = FALSE ;
  else {
bool mu__boolexpr233;
bool mu__boolexpr234;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr234 = FALSE ;
  else {
  mu__boolexpr234 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr234) mu__boolexpr233 = TRUE ;
  else {
bool mu__boolexpr235;
bool mu__boolexpr236;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr236 = FALSE ;
  else {
  mu__boolexpr236 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr236)) mu__boolexpr235 = FALSE ;
  else {
  mu__boolexpr235 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr233 = (mu__boolexpr235) ; 
}
  mu__boolexpr232 = (mu__boolexpr233) ; 
}
if ( mu__boolexpr232 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_true;
  };

};
/******************** RuleBase26 ********************/
class RuleBase26
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_8_Home, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr237;
bool mu__boolexpr238;
bool mu__boolexpr239;
bool mu__boolexpr240;
bool mu__boolexpr241;
bool mu__boolexpr242;
bool mu__boolexpr243;
bool mu__boolexpr244;
bool mu__boolexpr245;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr245 = FALSE ;
  else {
  mu__boolexpr245 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr245)) mu__boolexpr244 = FALSE ;
  else {
  mu__boolexpr244 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr244)) mu__boolexpr243 = FALSE ;
  else {
  mu__boolexpr243 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr243)) mu__boolexpr242 = FALSE ;
  else {
  mu__boolexpr242 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr242)) mu__boolexpr241 = FALSE ;
  else {
  mu__boolexpr241 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr241)) mu__boolexpr240 = FALSE ;
  else {
  mu__boolexpr240 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr240)) mu__boolexpr239 = FALSE ;
  else {
  mu__boolexpr239 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr239)) mu__boolexpr238 = FALSE ;
  else {
  mu__boolexpr238 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr238)) mu__boolexpr237 = FALSE ;
  else {
  mu__boolexpr237 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
    return mu__boolexpr237;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 58;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 60 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr246;
bool mu__boolexpr247;
bool mu__boolexpr248;
bool mu__boolexpr249;
bool mu__boolexpr250;
bool mu__boolexpr251;
bool mu__boolexpr252;
bool mu__boolexpr253;
bool mu__boolexpr254;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr254 = FALSE ;
  else {
  mu__boolexpr254 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr254)) mu__boolexpr253 = FALSE ;
  else {
  mu__boolexpr253 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr253)) mu__boolexpr252 = FALSE ;
  else {
  mu__boolexpr252 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr252)) mu__boolexpr251 = FALSE ;
  else {
  mu__boolexpr251 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr251)) mu__boolexpr250 = FALSE ;
  else {
  mu__boolexpr250 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr250)) mu__boolexpr249 = FALSE ;
  else {
  mu__boolexpr249 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr249)) mu__boolexpr248 = FALSE ;
  else {
  mu__boolexpr248 = (mu_Sta.mu_Dir.mu_HomeShrSet) ; 
}
  if (!(mu__boolexpr248)) mu__boolexpr247 = FALSE ;
  else {
  mu__boolexpr247 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr247)) mu__boolexpr246 = FALSE ;
  else {
  mu__boolexpr246 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr246) {
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
    r = what_rule - 58;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr255;
  if (!((mu_p) != (mu_src))) mu__boolexpr255 = FALSE ;
  else {
bool mu__boolexpr256;
bool mu__boolexpr257;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr257 = FALSE ;
  else {
  mu__boolexpr257 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr257) mu__boolexpr256 = TRUE ;
  else {
bool mu__boolexpr258;
bool mu__boolexpr259;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr259 = FALSE ;
  else {
  mu__boolexpr259 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr259)) mu__boolexpr258 = FALSE ;
  else {
  mu__boolexpr258 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr256 = (mu__boolexpr258) ; 
}
  mu__boolexpr255 = (mu__boolexpr256) ; 
}
if ( mu__boolexpr255 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase27 ********************/
class RuleBase27
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_7_NODE_Get, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr260;
bool mu__boolexpr261;
bool mu__boolexpr262;
bool mu__boolexpr263;
bool mu__boolexpr264;
bool mu__boolexpr265;
bool mu__boolexpr266;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr266 = FALSE ;
  else {
  mu__boolexpr266 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr266)) mu__boolexpr265 = FALSE ;
  else {
  mu__boolexpr265 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr265)) mu__boolexpr264 = FALSE ;
  else {
  mu__boolexpr264 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr264)) mu__boolexpr263 = FALSE ;
  else {
  mu__boolexpr263 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr263)) mu__boolexpr262 = FALSE ;
  else {
bool mu__boolexpr267;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr267 = TRUE ;
  else {
  mu__boolexpr267 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr262 = (mu__boolexpr267) ; 
}
  if (!(mu__boolexpr262)) mu__boolexpr261 = FALSE ;
  else {
  mu__boolexpr261 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr261)) mu__boolexpr260 = FALSE ;
  else {
  mu__boolexpr260 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
    return mu__boolexpr260;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 60;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 62 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr268;
bool mu__boolexpr269;
bool mu__boolexpr270;
bool mu__boolexpr271;
bool mu__boolexpr272;
bool mu__boolexpr273;
bool mu__boolexpr274;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr274 = FALSE ;
  else {
  mu__boolexpr274 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr274)) mu__boolexpr273 = FALSE ;
  else {
  mu__boolexpr273 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr273)) mu__boolexpr272 = FALSE ;
  else {
  mu__boolexpr272 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr272)) mu__boolexpr271 = FALSE ;
  else {
  mu__boolexpr271 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr271)) mu__boolexpr270 = FALSE ;
  else {
bool mu__boolexpr275;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr275 = TRUE ;
  else {
  mu__boolexpr275 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr270 = (mu__boolexpr275) ; 
}
  if (!(mu__boolexpr270)) mu__boolexpr269 = FALSE ;
  else {
  mu__boolexpr269 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr269)) mu__boolexpr268 = FALSE ;
  else {
  mu__boolexpr268 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr268) {
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
    r = what_rule - 60;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr276;
  if (!((mu_p) != (mu_src))) mu__boolexpr276 = FALSE ;
  else {
bool mu__boolexpr277;
bool mu__boolexpr278;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr278 = FALSE ;
  else {
  mu__boolexpr278 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr278) mu__boolexpr277 = TRUE ;
  else {
bool mu__boolexpr279;
bool mu__boolexpr280;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr280 = FALSE ;
  else {
  mu__boolexpr280 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr280)) mu__boolexpr279 = FALSE ;
  else {
  mu__boolexpr279 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr277 = (mu__boolexpr279) ; 
}
  mu__boolexpr276 = (mu__boolexpr277) ; 
}
if ( mu__boolexpr276 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_true;
  };

};
/******************** RuleBase28 ********************/
class RuleBase28
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_7, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr281;
bool mu__boolexpr282;
bool mu__boolexpr283;
bool mu__boolexpr284;
bool mu__boolexpr285;
bool mu__boolexpr286;
bool mu__boolexpr287;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr287 = FALSE ;
  else {
  mu__boolexpr287 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr287)) mu__boolexpr286 = FALSE ;
  else {
  mu__boolexpr286 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr286)) mu__boolexpr285 = FALSE ;
  else {
  mu__boolexpr285 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr285)) mu__boolexpr284 = FALSE ;
  else {
  mu__boolexpr284 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr284)) mu__boolexpr283 = FALSE ;
  else {
bool mu__boolexpr288;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr288 = TRUE ;
  else {
  mu__boolexpr288 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr283 = (mu__boolexpr288) ; 
}
  if (!(mu__boolexpr283)) mu__boolexpr282 = FALSE ;
  else {
  mu__boolexpr282 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr282)) mu__boolexpr281 = FALSE ;
  else {
  mu__boolexpr281 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
    return mu__boolexpr281;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 62;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 64 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr289;
bool mu__boolexpr290;
bool mu__boolexpr291;
bool mu__boolexpr292;
bool mu__boolexpr293;
bool mu__boolexpr294;
bool mu__boolexpr295;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr295 = FALSE ;
  else {
  mu__boolexpr295 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr295)) mu__boolexpr294 = FALSE ;
  else {
  mu__boolexpr294 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr294)) mu__boolexpr293 = FALSE ;
  else {
  mu__boolexpr293 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr293)) mu__boolexpr292 = FALSE ;
  else {
  mu__boolexpr292 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
  if (!(mu__boolexpr292)) mu__boolexpr291 = FALSE ;
  else {
bool mu__boolexpr296;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr296 = TRUE ;
  else {
  mu__boolexpr296 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr291 = (mu__boolexpr296) ; 
}
  if (!(mu__boolexpr291)) mu__boolexpr290 = FALSE ;
  else {
  mu__boolexpr290 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr290)) mu__boolexpr289 = FALSE ;
  else {
  mu__boolexpr289 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr289) {
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
    r = what_rule - 62;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr297;
  if (!((mu_p) != (mu_src))) mu__boolexpr297 = FALSE ;
  else {
bool mu__boolexpr298;
bool mu__boolexpr299;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr299 = FALSE ;
  else {
  mu__boolexpr299 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr299) mu__boolexpr298 = TRUE ;
  else {
bool mu__boolexpr300;
bool mu__boolexpr301;
  if (!(mu_Sta.mu_Dir.mu_HeadVld)) mu__boolexpr301 = FALSE ;
  else {
  mu__boolexpr301 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p)) ; 
}
  if (!(mu__boolexpr301)) mu__boolexpr300 = FALSE ;
  else {
  mu__boolexpr300 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr298 = (mu__boolexpr300) ; 
}
  mu__boolexpr297 = (mu__boolexpr298) ; 
}
if ( mu__boolexpr297 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase29 ********************/
class RuleBase29
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_6, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr302;
bool mu__boolexpr303;
bool mu__boolexpr304;
bool mu__boolexpr305;
bool mu__boolexpr306;
bool mu__boolexpr307;
bool mu__boolexpr308;
bool mu__boolexpr309;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr309 = FALSE ;
  else {
  mu__boolexpr309 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr309)) mu__boolexpr308 = FALSE ;
  else {
  mu__boolexpr308 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr308)) mu__boolexpr307 = FALSE ;
  else {
  mu__boolexpr307 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr307)) mu__boolexpr306 = FALSE ;
  else {
  mu__boolexpr306 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr306)) mu__boolexpr305 = FALSE ;
  else {
  mu__boolexpr305 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr305)) mu__boolexpr304 = FALSE ;
  else {
  mu__boolexpr304 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr304)) mu__boolexpr303 = FALSE ;
  else {
bool mu__quant310; 
mu__quant310 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr311;
  if (!((mu_p) != (mu_src))) mu__boolexpr311 = TRUE ;
  else {
  mu__boolexpr311 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr311) )
  { mu__quant310 = FALSE; break; }
};
};
  mu__boolexpr303 = (mu__quant310) ; 
}
  if (!(mu__boolexpr303)) mu__boolexpr302 = FALSE ;
  else {
  mu__boolexpr302 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
    return mu__boolexpr302;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 64;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 66 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr312;
bool mu__boolexpr313;
bool mu__boolexpr314;
bool mu__boolexpr315;
bool mu__boolexpr316;
bool mu__boolexpr317;
bool mu__boolexpr318;
bool mu__boolexpr319;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr319 = FALSE ;
  else {
  mu__boolexpr319 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr319)) mu__boolexpr318 = FALSE ;
  else {
  mu__boolexpr318 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr318)) mu__boolexpr317 = FALSE ;
  else {
  mu__boolexpr317 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr317)) mu__boolexpr316 = FALSE ;
  else {
  mu__boolexpr316 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr316)) mu__boolexpr315 = FALSE ;
  else {
  mu__boolexpr315 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr315)) mu__boolexpr314 = FALSE ;
  else {
  mu__boolexpr314 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr314)) mu__boolexpr313 = FALSE ;
  else {
bool mu__quant320; 
mu__quant320 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr321;
  if (!((mu_p) != (mu_src))) mu__boolexpr321 = TRUE ;
  else {
  mu__boolexpr321 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr321) )
  { mu__quant320 = FALSE; break; }
};
};
  mu__boolexpr313 = (mu__quant320) ; 
}
  if (!(mu__boolexpr313)) mu__boolexpr312 = FALSE ;
  else {
  mu__boolexpr312 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
	      if (mu__boolexpr312) {
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
    r = what_rule - 64;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase30 ********************/
class RuleBase30
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_5, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr322;
bool mu__boolexpr323;
bool mu__boolexpr324;
bool mu__boolexpr325;
bool mu__boolexpr326;
bool mu__boolexpr327;
bool mu__boolexpr328;
bool mu__boolexpr329;
bool mu__boolexpr330;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr330 = FALSE ;
  else {
  mu__boolexpr330 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr330)) mu__boolexpr329 = FALSE ;
  else {
  mu__boolexpr329 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr329)) mu__boolexpr328 = FALSE ;
  else {
  mu__boolexpr328 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr328)) mu__boolexpr327 = FALSE ;
  else {
  mu__boolexpr327 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr327)) mu__boolexpr326 = FALSE ;
  else {
  mu__boolexpr326 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr326)) mu__boolexpr325 = FALSE ;
  else {
  mu__boolexpr325 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr325)) mu__boolexpr324 = FALSE ;
  else {
bool mu__quant331; 
mu__quant331 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr332;
  if (!((mu_p) != (mu_src))) mu__boolexpr332 = TRUE ;
  else {
  mu__boolexpr332 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr332) )
  { mu__quant331 = FALSE; break; }
};
};
  mu__boolexpr324 = (mu__quant331) ; 
}
  if (!(mu__boolexpr324)) mu__boolexpr323 = FALSE ;
  else {
  mu__boolexpr323 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr323)) mu__boolexpr322 = FALSE ;
  else {
  mu__boolexpr322 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
    return mu__boolexpr322;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 66;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 68 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr333;
bool mu__boolexpr334;
bool mu__boolexpr335;
bool mu__boolexpr336;
bool mu__boolexpr337;
bool mu__boolexpr338;
bool mu__boolexpr339;
bool mu__boolexpr340;
bool mu__boolexpr341;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr341 = FALSE ;
  else {
  mu__boolexpr341 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr341)) mu__boolexpr340 = FALSE ;
  else {
  mu__boolexpr340 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr340)) mu__boolexpr339 = FALSE ;
  else {
  mu__boolexpr339 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr339)) mu__boolexpr338 = FALSE ;
  else {
  mu__boolexpr338 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr338)) mu__boolexpr337 = FALSE ;
  else {
  mu__boolexpr337 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr337)) mu__boolexpr336 = FALSE ;
  else {
  mu__boolexpr336 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr336)) mu__boolexpr335 = FALSE ;
  else {
bool mu__quant342; 
mu__quant342 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr343;
  if (!((mu_p) != (mu_src))) mu__boolexpr343 = TRUE ;
  else {
  mu__boolexpr343 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr343) )
  { mu__quant342 = FALSE; break; }
};
};
  mu__boolexpr335 = (mu__quant342) ; 
}
  if (!(mu__boolexpr335)) mu__boolexpr334 = FALSE ;
  else {
  mu__boolexpr334 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr334)) mu__boolexpr333 = FALSE ;
  else {
  mu__boolexpr333 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr333) {
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
    r = what_rule - 66;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase31 ********************/
class RuleBase31
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_4, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr344;
bool mu__boolexpr345;
bool mu__boolexpr346;
bool mu__boolexpr347;
bool mu__boolexpr348;
bool mu__boolexpr349;
bool mu__boolexpr350;
bool mu__boolexpr351;
bool mu__boolexpr352;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr352 = FALSE ;
  else {
  mu__boolexpr352 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr352)) mu__boolexpr351 = FALSE ;
  else {
  mu__boolexpr351 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr351)) mu__boolexpr350 = FALSE ;
  else {
  mu__boolexpr350 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr350)) mu__boolexpr349 = FALSE ;
  else {
  mu__boolexpr349 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr349)) mu__boolexpr348 = FALSE ;
  else {
  mu__boolexpr348 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr348)) mu__boolexpr347 = FALSE ;
  else {
  mu__boolexpr347 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr347)) mu__boolexpr346 = FALSE ;
  else {
bool mu__quant353; 
mu__quant353 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr354;
  if (!((mu_p) != (mu_src))) mu__boolexpr354 = TRUE ;
  else {
  mu__boolexpr354 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr354) )
  { mu__quant353 = FALSE; break; }
};
};
  mu__boolexpr346 = (mu__quant353) ; 
}
  if (!(mu__boolexpr346)) mu__boolexpr345 = FALSE ;
  else {
  mu__boolexpr345 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr345)) mu__boolexpr344 = FALSE ;
  else {
  mu__boolexpr344 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
    return mu__boolexpr344;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 68;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 70 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr355;
bool mu__boolexpr356;
bool mu__boolexpr357;
bool mu__boolexpr358;
bool mu__boolexpr359;
bool mu__boolexpr360;
bool mu__boolexpr361;
bool mu__boolexpr362;
bool mu__boolexpr363;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr363 = FALSE ;
  else {
  mu__boolexpr363 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr363)) mu__boolexpr362 = FALSE ;
  else {
  mu__boolexpr362 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr362)) mu__boolexpr361 = FALSE ;
  else {
  mu__boolexpr361 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr361)) mu__boolexpr360 = FALSE ;
  else {
  mu__boolexpr360 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr360)) mu__boolexpr359 = FALSE ;
  else {
  mu__boolexpr359 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  if (!(mu__boolexpr359)) mu__boolexpr358 = FALSE ;
  else {
  mu__boolexpr358 = (!(mu_Sta.mu_Dir.mu_HomeShrSet)) ; 
}
  if (!(mu__boolexpr358)) mu__boolexpr357 = FALSE ;
  else {
bool mu__quant364; 
mu__quant364 = TRUE;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
bool mu__boolexpr365;
  if (!((mu_p) != (mu_src))) mu__boolexpr365 = TRUE ;
  else {
  mu__boolexpr365 = (!(mu_Sta.mu_Dir.mu_ShrSet[mu_p])) ; 
}
if ( !(mu__boolexpr365) )
  { mu__quant364 = FALSE; break; }
};
};
  mu__boolexpr357 = (mu__quant364) ; 
}
  if (!(mu__boolexpr357)) mu__boolexpr356 = FALSE ;
  else {
  mu__boolexpr356 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr356)) mu__boolexpr355 = FALSE ;
  else {
  mu__boolexpr355 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr355) {
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
    r = what_rule - 68;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_true;
  };

};
/******************** RuleBase32 ********************/
class RuleBase32
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_3, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr366;
bool mu__boolexpr367;
bool mu__boolexpr368;
bool mu__boolexpr369;
bool mu__boolexpr370;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr370 = FALSE ;
  else {
  mu__boolexpr370 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr370)) mu__boolexpr369 = FALSE ;
  else {
  mu__boolexpr369 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr369)) mu__boolexpr368 = FALSE ;
  else {
  mu__boolexpr368 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr368)) mu__boolexpr367 = FALSE ;
  else {
  mu__boolexpr367 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr367)) mu__boolexpr366 = FALSE ;
  else {
  mu__boolexpr366 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
    return mu__boolexpr366;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 70;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 72 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr371;
bool mu__boolexpr372;
bool mu__boolexpr373;
bool mu__boolexpr374;
bool mu__boolexpr375;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr375 = FALSE ;
  else {
  mu__boolexpr375 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr375)) mu__boolexpr374 = FALSE ;
  else {
  mu__boolexpr374 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr374)) mu__boolexpr373 = FALSE ;
  else {
  mu__boolexpr373 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr373)) mu__boolexpr372 = FALSE ;
  else {
  mu__boolexpr372 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr372)) mu__boolexpr371 = FALSE ;
  else {
  mu__boolexpr371 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
	      if (mu__boolexpr371) {
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
    r = what_rule - 70;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase33 ********************/
class RuleBase33
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_2, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr376;
bool mu__boolexpr377;
bool mu__boolexpr378;
bool mu__boolexpr379;
bool mu__boolexpr380;
bool mu__boolexpr381;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr381 = FALSE ;
  else {
  mu__boolexpr381 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr381)) mu__boolexpr380 = FALSE ;
  else {
  mu__boolexpr380 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr380)) mu__boolexpr379 = FALSE ;
  else {
  mu__boolexpr379 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr379)) mu__boolexpr378 = FALSE ;
  else {
  mu__boolexpr378 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr378)) mu__boolexpr377 = FALSE ;
  else {
  mu__boolexpr377 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr377)) mu__boolexpr376 = FALSE ;
  else {
  mu__boolexpr376 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
    return mu__boolexpr376;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 72;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 74 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr382;
bool mu__boolexpr383;
bool mu__boolexpr384;
bool mu__boolexpr385;
bool mu__boolexpr386;
bool mu__boolexpr387;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr387 = FALSE ;
  else {
  mu__boolexpr387 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr387)) mu__boolexpr386 = FALSE ;
  else {
  mu__boolexpr386 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr386)) mu__boolexpr385 = FALSE ;
  else {
  mu__boolexpr385 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr385)) mu__boolexpr384 = FALSE ;
  else {
  mu__boolexpr384 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr384)) mu__boolexpr383 = FALSE ;
  else {
  mu__boolexpr383 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr383)) mu__boolexpr382 = FALSE ;
  else {
  mu__boolexpr382 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) != (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr382) {
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
    r = what_rule - 72;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase34 ********************/
class RuleBase34
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_PutX_1, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr388;
bool mu__boolexpr389;
bool mu__boolexpr390;
bool mu__boolexpr391;
bool mu__boolexpr392;
bool mu__boolexpr393;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr393 = FALSE ;
  else {
  mu__boolexpr393 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr393)) mu__boolexpr392 = FALSE ;
  else {
  mu__boolexpr392 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr392)) mu__boolexpr391 = FALSE ;
  else {
  mu__boolexpr391 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr391)) mu__boolexpr390 = FALSE ;
  else {
  mu__boolexpr390 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr390)) mu__boolexpr389 = FALSE ;
  else {
  mu__boolexpr389 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr389)) mu__boolexpr388 = FALSE ;
  else {
  mu__boolexpr388 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
    return mu__boolexpr388;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 74;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 76 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr394;
bool mu__boolexpr395;
bool mu__boolexpr396;
bool mu__boolexpr397;
bool mu__boolexpr398;
bool mu__boolexpr399;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr399 = FALSE ;
  else {
  mu__boolexpr399 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr399)) mu__boolexpr398 = FALSE ;
  else {
  mu__boolexpr398 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr398)) mu__boolexpr397 = FALSE ;
  else {
  mu__boolexpr397 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr397)) mu__boolexpr396 = FALSE ;
  else {
  mu__boolexpr396 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
  if (!(mu__boolexpr396)) mu__boolexpr395 = FALSE ;
  else {
  mu__boolexpr395 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr395)) mu__boolexpr394 = FALSE ;
  else {
  mu__boolexpr394 = ((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_Get)) ; 
}
	      if (mu__boolexpr394) {
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
    r = what_rule - 74;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_PutX;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_true;
  };

};
/******************** RuleBase35 ********************/
class RuleBase35
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_GetX, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr400;
bool mu__boolexpr401;
bool mu__boolexpr402;
bool mu__boolexpr403;
bool mu__boolexpr404;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr404 = FALSE ;
  else {
  mu__boolexpr404 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr404)) mu__boolexpr403 = FALSE ;
  else {
  mu__boolexpr403 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr403)) mu__boolexpr402 = FALSE ;
  else {
  mu__boolexpr402 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr402)) mu__boolexpr401 = FALSE ;
  else {
  mu__boolexpr401 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr401)) mu__boolexpr400 = FALSE ;
  else {
bool mu__boolexpr405;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr405 = TRUE ;
  else {
  mu__boolexpr405 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr400 = (mu__boolexpr405) ; 
}
    return mu__boolexpr400;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 76;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 78 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr406;
bool mu__boolexpr407;
bool mu__boolexpr408;
bool mu__boolexpr409;
bool mu__boolexpr410;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr410 = FALSE ;
  else {
  mu__boolexpr410 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr410)) mu__boolexpr409 = FALSE ;
  else {
  mu__boolexpr409 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr409)) mu__boolexpr408 = FALSE ;
  else {
  mu__boolexpr408 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr408)) mu__boolexpr407 = FALSE ;
  else {
  mu__boolexpr407 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr407)) mu__boolexpr406 = FALSE ;
  else {
bool mu__boolexpr411;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr411 = TRUE ;
  else {
  mu__boolexpr411 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr406 = (mu__boolexpr411) ; 
}
	      if (mu__boolexpr406) {
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
    r = what_rule - 76;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_GetX;
mu_Sta.mu_UniMsg[mu_src].mu_Proc = mu_Sta.mu_Dir.mu_HeadPtr;
mu_Sta.mu_UniMsg[mu_src].mu_HomeProc = mu_Sta.mu_Dir.mu_HomeHeadPtr;
  };

};
/******************** RuleBase36 ********************/
class RuleBase36
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_GetX_Nak, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr412;
bool mu__boolexpr413;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr413 = FALSE ;
  else {
  mu__boolexpr413 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr413)) mu__boolexpr412 = FALSE ;
  else {
bool mu__boolexpr414;
bool mu__boolexpr415;
  if (mu_Sta.mu_Dir.mu_Pending) mu__boolexpr415 = TRUE ;
  else {
bool mu__boolexpr416;
bool mu__boolexpr417;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr417 = FALSE ;
  else {
  mu__boolexpr417 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr417)) mu__boolexpr416 = FALSE ;
  else {
  mu__boolexpr416 = ((mu_Sta.mu_HomeProc.mu_CacheState) != (mu_CACHE_E)) ; 
}
  mu__boolexpr415 = (mu__boolexpr416) ; 
}
  if (mu__boolexpr415) mu__boolexpr414 = TRUE ;
  else {
bool mu__boolexpr418;
bool mu__boolexpr419;
bool mu__boolexpr420;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr420 = FALSE ;
  else {
  mu__boolexpr420 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr420)) mu__boolexpr419 = FALSE ;
  else {
  mu__boolexpr419 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr419)) mu__boolexpr418 = FALSE ;
  else {
  mu__boolexpr418 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr414 = (mu__boolexpr418) ; 
}
  mu__boolexpr412 = (mu__boolexpr414) ; 
}
    return mu__boolexpr412;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 78;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 80 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr421;
bool mu__boolexpr422;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_GetX))) mu__boolexpr422 = FALSE ;
  else {
  mu__boolexpr422 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr422)) mu__boolexpr421 = FALSE ;
  else {
bool mu__boolexpr423;
bool mu__boolexpr424;
  if (mu_Sta.mu_Dir.mu_Pending) mu__boolexpr424 = TRUE ;
  else {
bool mu__boolexpr425;
bool mu__boolexpr426;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr426 = FALSE ;
  else {
  mu__boolexpr426 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr426)) mu__boolexpr425 = FALSE ;
  else {
  mu__boolexpr425 = ((mu_Sta.mu_HomeProc.mu_CacheState) != (mu_CACHE_E)) ; 
}
  mu__boolexpr424 = (mu__boolexpr425) ; 
}
  if (mu__boolexpr424) mu__boolexpr423 = TRUE ;
  else {
bool mu__boolexpr427;
bool mu__boolexpr428;
bool mu__boolexpr429;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr429 = FALSE ;
  else {
  mu__boolexpr429 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr429)) mu__boolexpr428 = FALSE ;
  else {
  mu__boolexpr428 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr428)) mu__boolexpr427 = FALSE ;
  else {
  mu__boolexpr427 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr423 = (mu__boolexpr427) ; 
}
  mu__boolexpr421 = (mu__boolexpr423) ; 
}
	      if (mu__boolexpr421) {
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
    r = what_rule - 78;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Nak;
  };

};
/******************** RuleBase37 ********************/
class RuleBase37
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_Get_Put_Home, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr430;
bool mu__boolexpr431;
bool mu__boolexpr432;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Get))) mu__boolexpr432 = FALSE ;
  else {
  mu__boolexpr432 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr432)) mu__boolexpr431 = FALSE ;
  else {
  mu__boolexpr431 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr431)) mu__boolexpr430 = FALSE ;
  else {
  mu__boolexpr430 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr430;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 80;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 82 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr433;
bool mu__boolexpr434;
bool mu__boolexpr435;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Get))) mu__boolexpr435 = FALSE ;
  else {
  mu__boolexpr435 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr435)) mu__boolexpr434 = FALSE ;
  else {
  mu__boolexpr434 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr434)) mu__boolexpr433 = FALSE ;
  else {
  mu__boolexpr433 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr433) {
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
    r = what_rule - 80;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_S;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_Put;
mu_Sta.mu_HomeUniMsg.mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
  };

};
/******************** RuleBase38 ********************/
class RuleBase38
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_Get_Put, dst:%s, src:%s", mu_dst.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr436;
bool mu__boolexpr437;
bool mu__boolexpr438;
bool mu__boolexpr439;
  if (!((mu_src) != (mu_dst))) mu__boolexpr439 = FALSE ;
  else {
  mu__boolexpr439 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get)) ; 
}
  if (!(mu__boolexpr439)) mu__boolexpr438 = FALSE ;
  else {
  mu__boolexpr438 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr438)) mu__boolexpr437 = FALSE ;
  else {
  mu__boolexpr437 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr437)) mu__boolexpr436 = FALSE ;
  else {
  mu__boolexpr436 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr436;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 82;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 86 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr440;
bool mu__boolexpr441;
bool mu__boolexpr442;
bool mu__boolexpr443;
  if (!((mu_src) != (mu_dst))) mu__boolexpr443 = FALSE ;
  else {
  mu__boolexpr443 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get)) ; 
}
  if (!(mu__boolexpr443)) mu__boolexpr442 = FALSE ;
  else {
  mu__boolexpr442 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr442)) mu__boolexpr441 = FALSE ;
  else {
  mu__boolexpr441 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr441)) mu__boolexpr440 = FALSE ;
  else {
  mu__boolexpr440 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr440) {
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
    r = what_rule - 82;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_S;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Put;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
mu_Sta.mu_ShWbMsg.mu_Cmd = mu_SHWB_ShWb;
mu_Sta.mu_ShWbMsg.mu_Proc = mu_src;
mu_Sta.mu_ShWbMsg.mu_HomeProc = mu_false;
mu_Sta.mu_ShWbMsg.mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
  };

};
/******************** RuleBase39 ********************/
class RuleBase39
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_Get_Nak_Home, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr444;
bool mu__boolexpr445;
bool mu__boolexpr446;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Get))) mu__boolexpr446 = FALSE ;
  else {
  mu__boolexpr446 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr446)) mu__boolexpr445 = FALSE ;
  else {
  mu__boolexpr445 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr445)) mu__boolexpr444 = FALSE ;
  else {
  mu__boolexpr444 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
    return mu__boolexpr444;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 86;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 88 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr447;
bool mu__boolexpr448;
bool mu__boolexpr449;
  if (!((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Get))) mu__boolexpr449 = FALSE ;
  else {
  mu__boolexpr449 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr449)) mu__boolexpr448 = FALSE ;
  else {
  mu__boolexpr448 = (!(mu_Sta.mu_HomeUniMsg.mu_HomeProc)) ; 
}
  if (!(mu__boolexpr448)) mu__boolexpr447 = FALSE ;
  else {
  mu__boolexpr447 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr447) {
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
    r = what_rule - 86;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_Nak;
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_Nakc;
  };

};
/******************** RuleBase40 ********************/
class RuleBase40
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Remote_Get_Nak, dst:%s, src:%s", mu_dst.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr450;
bool mu__boolexpr451;
bool mu__boolexpr452;
bool mu__boolexpr453;
  if (!((mu_src) != (mu_dst))) mu__boolexpr453 = FALSE ;
  else {
  mu__boolexpr453 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get)) ; 
}
  if (!(mu__boolexpr453)) mu__boolexpr452 = FALSE ;
  else {
  mu__boolexpr452 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr452)) mu__boolexpr451 = FALSE ;
  else {
  mu__boolexpr451 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr451)) mu__boolexpr450 = FALSE ;
  else {
  mu__boolexpr450 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
    return mu__boolexpr450;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 88;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 92 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr454;
bool mu__boolexpr455;
bool mu__boolexpr456;
bool mu__boolexpr457;
  if (!((mu_src) != (mu_dst))) mu__boolexpr457 = FALSE ;
  else {
  mu__boolexpr457 = ((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get)) ; 
}
  if (!(mu__boolexpr457)) mu__boolexpr456 = FALSE ;
  else {
  mu__boolexpr456 = ((mu_Sta.mu_UniMsg[mu_src].mu_Proc) == (mu_dst)) ; 
}
  if (!(mu__boolexpr456)) mu__boolexpr455 = FALSE ;
  else {
  mu__boolexpr455 = (!(mu_Sta.mu_UniMsg[mu_src].mu_HomeProc)) ; 
}
  if (!(mu__boolexpr455)) mu__boolexpr454 = FALSE ;
  else {
  mu__boolexpr454 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) != (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr454) {
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
    r = what_rule - 88;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Nak;
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_Nakc;
  };

};
/******************** RuleBase41 ********************/
class RuleBase41
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_Get_Put_Dirty, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr458;
bool mu__boolexpr459;
bool mu__boolexpr460;
bool mu__boolexpr461;
bool mu__boolexpr462;
bool mu__boolexpr463;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr463 = FALSE ;
  else {
  mu__boolexpr463 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr463)) mu__boolexpr462 = FALSE ;
  else {
  mu__boolexpr462 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr462)) mu__boolexpr461 = FALSE ;
  else {
  mu__boolexpr461 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr461)) mu__boolexpr460 = FALSE ;
  else {
  mu__boolexpr460 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr460)) mu__boolexpr459 = FALSE ;
  else {
  mu__boolexpr459 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr459)) mu__boolexpr458 = FALSE ;
  else {
  mu__boolexpr458 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr458;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 92;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 94 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr464;
bool mu__boolexpr465;
bool mu__boolexpr466;
bool mu__boolexpr467;
bool mu__boolexpr468;
bool mu__boolexpr469;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr469 = FALSE ;
  else {
  mu__boolexpr469 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr469)) mu__boolexpr468 = FALSE ;
  else {
  mu__boolexpr468 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr468)) mu__boolexpr467 = FALSE ;
  else {
  mu__boolexpr467 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr467)) mu__boolexpr466 = FALSE ;
  else {
  mu__boolexpr466 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr466)) mu__boolexpr465 = FALSE ;
  else {
  mu__boolexpr465 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr465)) mu__boolexpr464 = FALSE ;
  else {
  mu__boolexpr464 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr464) {
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
    r = what_rule - 92;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_MemData = mu_Sta.mu_HomeProc.mu_CacheData;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_S;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Put;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_HomeProc.mu_CacheData;
  };

};
/******************** RuleBase42 ********************/
class RuleBase42
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_Get_Put, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr470;
bool mu__boolexpr471;
bool mu__boolexpr472;
bool mu__boolexpr473;
bool mu__boolexpr474;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr474 = FALSE ;
  else {
  mu__boolexpr474 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr474)) mu__boolexpr473 = FALSE ;
  else {
  mu__boolexpr473 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr473)) mu__boolexpr472 = FALSE ;
  else {
  mu__boolexpr472 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr472)) mu__boolexpr471 = FALSE ;
  else {
  mu__boolexpr471 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr471)) mu__boolexpr470 = FALSE ;
  else {
  mu__boolexpr470 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
    return mu__boolexpr470;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 94;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 96 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr475;
bool mu__boolexpr476;
bool mu__boolexpr477;
bool mu__boolexpr478;
bool mu__boolexpr479;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr479 = FALSE ;
  else {
  mu__boolexpr479 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr479)) mu__boolexpr478 = FALSE ;
  else {
  mu__boolexpr478 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr478)) mu__boolexpr477 = FALSE ;
  else {
  mu__boolexpr477 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr477)) mu__boolexpr476 = FALSE ;
  else {
  mu__boolexpr476 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr476)) mu__boolexpr475 = FALSE ;
  else {
  mu__boolexpr475 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
	      if (mu__boolexpr475) {
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
    r = what_rule - 94;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_HeadVld = mu_true;
mu_Sta.mu_Dir.mu_HeadPtr = mu_src;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_false;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Put;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase43 ********************/
class RuleBase43
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_Get_Put_Head, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr480;
bool mu__boolexpr481;
bool mu__boolexpr482;
bool mu__boolexpr483;
bool mu__boolexpr484;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr484 = FALSE ;
  else {
  mu__boolexpr484 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr484)) mu__boolexpr483 = FALSE ;
  else {
  mu__boolexpr483 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr483)) mu__boolexpr482 = FALSE ;
  else {
  mu__boolexpr482 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr482)) mu__boolexpr481 = FALSE ;
  else {
  mu__boolexpr481 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr481)) mu__boolexpr480 = FALSE ;
  else {
  mu__boolexpr480 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
    return mu__boolexpr480;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 96;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 98 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr485;
bool mu__boolexpr486;
bool mu__boolexpr487;
bool mu__boolexpr488;
bool mu__boolexpr489;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr489 = FALSE ;
  else {
  mu__boolexpr489 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr489)) mu__boolexpr488 = FALSE ;
  else {
  mu__boolexpr488 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr488)) mu__boolexpr487 = FALSE ;
  else {
  mu__boolexpr487 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr487)) mu__boolexpr486 = FALSE ;
  else {
  mu__boolexpr486 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr486)) mu__boolexpr485 = FALSE ;
  else {
  mu__boolexpr485 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
	      if (mu__boolexpr485) {
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
    r = what_rule - 96;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_ShrVld = mu_true;
mu_Sta.mu_Dir.mu_ShrSet[mu_src] = mu_true;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
if ( (mu_p) == (mu_src) )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_Sta.mu_Dir.mu_ShrSet[mu_p];
}
};
};
mu_Sta.mu_Dir.mu_HomeInvSet = mu_Sta.mu_Dir.mu_HomeShrSet;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Put;
mu_Sta.mu_UniMsg[mu_src].mu_Data = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase44 ********************/
class RuleBase44
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_Get_Get, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr490;
bool mu__boolexpr491;
bool mu__boolexpr492;
bool mu__boolexpr493;
bool mu__boolexpr494;
bool mu__boolexpr495;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr495 = FALSE ;
  else {
  mu__boolexpr495 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr495)) mu__boolexpr494 = FALSE ;
  else {
  mu__boolexpr494 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr494)) mu__boolexpr493 = FALSE ;
  else {
  mu__boolexpr493 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr493)) mu__boolexpr492 = FALSE ;
  else {
  mu__boolexpr492 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr492)) mu__boolexpr491 = FALSE ;
  else {
  mu__boolexpr491 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr491)) mu__boolexpr490 = FALSE ;
  else {
bool mu__boolexpr496;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr496 = TRUE ;
  else {
  mu__boolexpr496 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr490 = (mu__boolexpr496) ; 
}
    return mu__boolexpr490;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 98;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 100 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr497;
bool mu__boolexpr498;
bool mu__boolexpr499;
bool mu__boolexpr500;
bool mu__boolexpr501;
bool mu__boolexpr502;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr502 = FALSE ;
  else {
  mu__boolexpr502 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr502)) mu__boolexpr501 = FALSE ;
  else {
  mu__boolexpr501 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr501)) mu__boolexpr500 = FALSE ;
  else {
  mu__boolexpr500 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr500)) mu__boolexpr499 = FALSE ;
  else {
  mu__boolexpr499 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
  if (!(mu__boolexpr499)) mu__boolexpr498 = FALSE ;
  else {
  mu__boolexpr498 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr498)) mu__boolexpr497 = FALSE ;
  else {
bool mu__boolexpr503;
  if ((mu_Sta.mu_Dir.mu_HeadPtr) != (mu_src)) mu__boolexpr503 = TRUE ;
  else {
  mu__boolexpr503 = (mu_Sta.mu_Dir.mu_HomeHeadPtr) ; 
}
  mu__boolexpr497 = (mu__boolexpr503) ; 
}
	      if (mu__boolexpr497) {
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
    r = what_rule - 98;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Get;
mu_Sta.mu_UniMsg[mu_src].mu_Proc = mu_Sta.mu_Dir.mu_HeadPtr;
mu_Sta.mu_UniMsg[mu_src].mu_HomeProc = mu_Sta.mu_Dir.mu_HomeHeadPtr;
  };

};
/******************** RuleBase45 ********************/
class RuleBase45
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Local_Get_Nak, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr504;
bool mu__boolexpr505;
bool mu__boolexpr506;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr506 = FALSE ;
  else {
  mu__boolexpr506 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr506)) mu__boolexpr505 = FALSE ;
  else {
  mu__boolexpr505 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr505)) mu__boolexpr504 = FALSE ;
  else {
bool mu__boolexpr507;
bool mu__boolexpr508;
  if (mu_Sta.mu_Dir.mu_Pending) mu__boolexpr508 = TRUE ;
  else {
bool mu__boolexpr509;
bool mu__boolexpr510;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr510 = FALSE ;
  else {
  mu__boolexpr510 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr510)) mu__boolexpr509 = FALSE ;
  else {
  mu__boolexpr509 = ((mu_Sta.mu_HomeProc.mu_CacheState) != (mu_CACHE_E)) ; 
}
  mu__boolexpr508 = (mu__boolexpr509) ; 
}
  if (mu__boolexpr508) mu__boolexpr507 = TRUE ;
  else {
bool mu__boolexpr511;
bool mu__boolexpr512;
bool mu__boolexpr513;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr513 = FALSE ;
  else {
  mu__boolexpr513 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr513)) mu__boolexpr512 = FALSE ;
  else {
  mu__boolexpr512 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr512)) mu__boolexpr511 = FALSE ;
  else {
  mu__boolexpr511 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr507 = (mu__boolexpr511) ; 
}
  mu__boolexpr504 = (mu__boolexpr507) ; 
}
    return mu__boolexpr504;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 100;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 102 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr514;
bool mu__boolexpr515;
bool mu__boolexpr516;
  if (!((mu_Sta.mu_UniMsg[mu_src].mu_Cmd) == (mu_UNI_Get))) mu__boolexpr516 = FALSE ;
  else {
  mu__boolexpr516 = (mu_Sta.mu_UniMsg[mu_src].mu_HomeProc) ; 
}
  if (!(mu__boolexpr516)) mu__boolexpr515 = FALSE ;
  else {
  mu__boolexpr515 = ((mu_Sta.mu_RpMsg[mu_src].mu_Cmd) != (mu_RP_Replace)) ; 
}
  if (!(mu__boolexpr515)) mu__boolexpr514 = FALSE ;
  else {
bool mu__boolexpr517;
bool mu__boolexpr518;
  if (mu_Sta.mu_Dir.mu_Pending) mu__boolexpr518 = TRUE ;
  else {
bool mu__boolexpr519;
bool mu__boolexpr520;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr520 = FALSE ;
  else {
  mu__boolexpr520 = (mu_Sta.mu_Dir.mu_Local) ; 
}
  if (!(mu__boolexpr520)) mu__boolexpr519 = FALSE ;
  else {
  mu__boolexpr519 = ((mu_Sta.mu_HomeProc.mu_CacheState) != (mu_CACHE_E)) ; 
}
  mu__boolexpr518 = (mu__boolexpr519) ; 
}
  if (mu__boolexpr518) mu__boolexpr517 = TRUE ;
  else {
bool mu__boolexpr521;
bool mu__boolexpr522;
bool mu__boolexpr523;
  if (!(mu_Sta.mu_Dir.mu_Dirty)) mu__boolexpr523 = FALSE ;
  else {
  mu__boolexpr523 = (!(mu_Sta.mu_Dir.mu_Local)) ; 
}
  if (!(mu__boolexpr523)) mu__boolexpr522 = FALSE ;
  else {
  mu__boolexpr522 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_src)) ; 
}
  if (!(mu__boolexpr522)) mu__boolexpr521 = FALSE ;
  else {
  mu__boolexpr521 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr517 = (mu__boolexpr521) ; 
}
  mu__boolexpr514 = (mu__boolexpr517) ; 
}
	      if (mu__boolexpr514) {
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
    r = what_rule - 100;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Nak;
  };

};
/******************** RuleBase46 ********************/
class RuleBase46
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("NI_Nak_Clear");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_NakcMsg.mu_Cmd) == (mu_NAKC_Nakc);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 102;
    while (what_rule < 103 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_NakcMsg.mu_Cmd) == (mu_NAKC_Nakc)) {
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
    r = what_rule - 102;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_None;
mu_Sta.mu_Dir.mu_Pending = mu_false;
  };

};
/******************** RuleBase47 ********************/
class RuleBase47
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("NI_Nak_Home");
  }
  bool Condition(unsigned r)
  {
    return (mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Nak);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 103;
    while (what_rule < 104 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Nak)) {
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
    r = what_rule - 103;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_None;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
  };

};
/******************** RuleBase48 ********************/
class RuleBase48
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("NI_Nak, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_Nak);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 104;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 106 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_UniMsg[mu_dst].mu_Cmd) == (mu_UNI_Nak)) {
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
    r = what_rule - 104;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_UniMsg[mu_dst].mu_Cmd = mu_UNI_None;
mu_Sta.mu_Proc[mu_dst].mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_Proc[mu_dst].mu_InvMarked = mu_false;
  };

};
/******************** RuleBase49 ********************/
class RuleBase49
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_Replace");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr524;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr524 = FALSE ;
  else {
  mu__boolexpr524 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
    return mu__boolexpr524;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 106;
    while (what_rule < 107 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr525;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr525 = FALSE ;
  else {
  mu__boolexpr525 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
	      if (mu__boolexpr525) {
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
    r = what_rule - 106;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
  };

};
/******************** RuleBase50 ********************/
class RuleBase50
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("PI_Remote_Replace, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr526;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr526 = FALSE ;
  else {
  mu__boolexpr526 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_S)) ; 
}
    return mu__boolexpr526;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 107;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 109 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr527;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr527 = FALSE ;
  else {
  mu__boolexpr527 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_S)) ; 
}
	      if (mu__boolexpr527) {
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
    r = what_rule - 107;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_src].mu_CacheState = mu_CACHE_I;
mu_Sta.mu_RpMsg[mu_src].mu_Cmd = mu_RP_Replace;
  };

};
/******************** RuleBase51 ********************/
class RuleBase51
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_PutX");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr528;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr528 = FALSE ;
  else {
  mu__boolexpr528 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr528;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 109;
    while (what_rule < 110 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr529;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr529 = FALSE ;
  else {
  mu__boolexpr529 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr529) {
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
    r = what_rule - 109;
    }
  }

  void Code(unsigned r)
  {
if ( mu_Sta.mu_Dir.mu_Pending )
{
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_MemData = mu_Sta.mu_HomeProc.mu_CacheData;
}
else
{
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_MemData = mu_Sta.mu_HomeProc.mu_CacheData;
}
  };

};
/******************** RuleBase52 ********************/
class RuleBase52
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("PI_Remote_PutX, dst:%s", mu_dst.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr530;
  if (!((mu_Sta.mu_Proc[mu_dst].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr530 = FALSE ;
  else {
  mu__boolexpr530 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
    return mu__boolexpr530;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 110;
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 112 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr531;
  if (!((mu_Sta.mu_Proc[mu_dst].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr531 = FALSE ;
  else {
  mu__boolexpr531 = ((mu_Sta.mu_Proc[mu_dst].mu_CacheState) == (mu_CACHE_E)) ; 
}
	      if (mu__boolexpr531) {
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
    r = what_rule - 110;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_dst;
    mu_dst.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_dst].mu_CacheState = mu_CACHE_I;
mu_Sta.mu_WbMsg.mu_Cmd = mu_WB_Wb;
mu_Sta.mu_WbMsg.mu_Proc = mu_dst;
mu_Sta.mu_WbMsg.mu_HomeProc = mu_false;
mu_Sta.mu_WbMsg.mu_Data = mu_Sta.mu_Proc[mu_dst].mu_CacheData;
  };

};
/******************** RuleBase53 ********************/
class RuleBase53
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_GetX_PutX");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr532;
bool mu__boolexpr533;
bool mu__boolexpr534;
bool mu__boolexpr535;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr535 = FALSE ;
  else {
bool mu__boolexpr536;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr536 = TRUE ;
  else {
  mu__boolexpr536 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr535 = (mu__boolexpr536) ; 
}
  if (!(mu__boolexpr535)) mu__boolexpr534 = FALSE ;
  else {
  mu__boolexpr534 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr534)) mu__boolexpr533 = FALSE ;
  else {
  mu__boolexpr533 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr533)) mu__boolexpr532 = FALSE ;
  else {
  mu__boolexpr532 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
    return mu__boolexpr532;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 112;
    while (what_rule < 113 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr537;
bool mu__boolexpr538;
bool mu__boolexpr539;
bool mu__boolexpr540;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr540 = FALSE ;
  else {
bool mu__boolexpr541;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr541 = TRUE ;
  else {
  mu__boolexpr541 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr540 = (mu__boolexpr541) ; 
}
  if (!(mu__boolexpr540)) mu__boolexpr539 = FALSE ;
  else {
  mu__boolexpr539 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr539)) mu__boolexpr538 = FALSE ;
  else {
  mu__boolexpr538 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr538)) mu__boolexpr537 = FALSE ;
  else {
  mu__boolexpr537 = (!(mu_Sta.mu_Dir.mu_HeadVld)) ; 
}
	      if (mu__boolexpr537) {
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
    r = what_rule - 112;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_Dir.mu_Local = mu_true;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_E;
mu_Sta.mu_HomeProc.mu_CacheData = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase54 ********************/
class RuleBase54
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_GetX_PutX_HeadVld");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr542;
bool mu__boolexpr543;
bool mu__boolexpr544;
bool mu__boolexpr545;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr545 = FALSE ;
  else {
bool mu__boolexpr546;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr546 = TRUE ;
  else {
  mu__boolexpr546 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr545 = (mu__boolexpr546) ; 
}
  if (!(mu__boolexpr545)) mu__boolexpr544 = FALSE ;
  else {
  mu__boolexpr544 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr544)) mu__boolexpr543 = FALSE ;
  else {
  mu__boolexpr543 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr543)) mu__boolexpr542 = FALSE ;
  else {
  mu__boolexpr542 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
    return mu__boolexpr542;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 113;
    while (what_rule < 114 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr547;
bool mu__boolexpr548;
bool mu__boolexpr549;
bool mu__boolexpr550;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr550 = FALSE ;
  else {
bool mu__boolexpr551;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr551 = TRUE ;
  else {
  mu__boolexpr551 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr550 = (mu__boolexpr551) ; 
}
  if (!(mu__boolexpr550)) mu__boolexpr549 = FALSE ;
  else {
  mu__boolexpr549 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr549)) mu__boolexpr548 = FALSE ;
  else {
  mu__boolexpr548 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
  if (!(mu__boolexpr548)) mu__boolexpr547 = FALSE ;
  else {
  mu__boolexpr547 = (mu_Sta.mu_Dir.mu_HeadVld) ; 
}
	      if (mu__boolexpr547) {
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
    r = what_rule - 113;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_Dir.mu_Local = mu_true;
mu_Sta.mu_Dir.mu_Dirty = mu_true;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_Dir.mu_HeadVld = mu_false;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
bool mu__boolexpr552;
bool mu__boolexpr553;
  if (!(mu_Sta.mu_Dir.mu_ShrVld)) mu__boolexpr553 = FALSE ;
  else {
  mu__boolexpr553 = (mu_Sta.mu_Dir.mu_ShrSet[mu_p]) ; 
}
  if (mu__boolexpr553) mu__boolexpr552 = TRUE ;
  else {
bool mu__boolexpr554;
  if (!((mu_Sta.mu_Dir.mu_HeadPtr) == (mu_p))) mu__boolexpr554 = FALSE ;
  else {
  mu__boolexpr554 = (!(mu_Sta.mu_Dir.mu_HomeHeadPtr)) ; 
}
  mu__boolexpr552 = (mu__boolexpr554) ; 
}
if ( mu__boolexpr552 )
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_true;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_Inv;
}
else
{
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
}
};
};
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_E;
mu_Sta.mu_HomeProc.mu_CacheData = mu_Sta.mu_MemData;
  };

};
/******************** RuleBase55 ********************/
class RuleBase55
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_GetX_GetX");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr555;
bool mu__boolexpr556;
bool mu__boolexpr557;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr557 = FALSE ;
  else {
bool mu__boolexpr558;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr558 = TRUE ;
  else {
  mu__boolexpr558 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr557 = (mu__boolexpr558) ; 
}
  if (!(mu__boolexpr557)) mu__boolexpr556 = FALSE ;
  else {
  mu__boolexpr556 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr556)) mu__boolexpr555 = FALSE ;
  else {
  mu__boolexpr555 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
    return mu__boolexpr555;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 114;
    while (what_rule < 115 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr559;
bool mu__boolexpr560;
bool mu__boolexpr561;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr561 = FALSE ;
  else {
bool mu__boolexpr562;
  if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) mu__boolexpr562 = TRUE ;
  else {
  mu__boolexpr562 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_S)) ; 
}
  mu__boolexpr561 = (mu__boolexpr562) ; 
}
  if (!(mu__boolexpr561)) mu__boolexpr560 = FALSE ;
  else {
  mu__boolexpr560 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr560)) mu__boolexpr559 = FALSE ;
  else {
  mu__boolexpr559 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
	      if (mu__boolexpr559) {
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
    r = what_rule - 114;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_GetX;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_GetX;
mu_Sta.mu_HomeUniMsg.mu_Proc = mu_Sta.mu_Dir.mu_HeadPtr;
mu_Sta.mu_HomeUniMsg.mu_HomeProc = mu_Sta.mu_Dir.mu_HomeHeadPtr;
  };

};
/******************** RuleBase56 ********************/
class RuleBase56
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("PI_Remote_GetX, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr563;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr563 = FALSE ;
  else {
  mu__boolexpr563 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_I)) ; 
}
    return mu__boolexpr563;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 115;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 117 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr564;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr564 = FALSE ;
  else {
  mu__boolexpr564 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_I)) ; 
}
	      if (mu__boolexpr564) {
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
    r = what_rule - 115;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_src].mu_ProcCmd = mu_NODE_GetX;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_GetX;
mu_Sta.mu_UniMsg[mu_src].mu_HomeProc = mu_true;
  };

};
/******************** RuleBase57 ********************/
class RuleBase57
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_Get_Put");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr565;
bool mu__boolexpr566;
bool mu__boolexpr567;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr567 = FALSE ;
  else {
  mu__boolexpr567 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) ; 
}
  if (!(mu__boolexpr567)) mu__boolexpr566 = FALSE ;
  else {
  mu__boolexpr566 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr566)) mu__boolexpr565 = FALSE ;
  else {
  mu__boolexpr565 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
    return mu__boolexpr565;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 117;
    while (what_rule < 118 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr568;
bool mu__boolexpr569;
bool mu__boolexpr570;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr570 = FALSE ;
  else {
  mu__boolexpr570 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) ; 
}
  if (!(mu__boolexpr570)) mu__boolexpr569 = FALSE ;
  else {
  mu__boolexpr569 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr569)) mu__boolexpr568 = FALSE ;
  else {
  mu__boolexpr568 = (!(mu_Sta.mu_Dir.mu_Dirty)) ; 
}
	      if (mu__boolexpr568) {
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
    r = what_rule - 117;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_Dir.mu_Local = mu_true;
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
if ( mu_Sta.mu_HomeProc.mu_InvMarked )
{
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
}
else
{
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_S;
mu_Sta.mu_HomeProc.mu_CacheData = mu_Sta.mu_MemData;
}
  };

};
/******************** RuleBase58 ********************/
class RuleBase58
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    return tsprintf("PI_Local_Get_Get");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr571;
bool mu__boolexpr572;
bool mu__boolexpr573;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr573 = FALSE ;
  else {
  mu__boolexpr573 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) ; 
}
  if (!(mu__boolexpr573)) mu__boolexpr572 = FALSE ;
  else {
  mu__boolexpr572 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr572)) mu__boolexpr571 = FALSE ;
  else {
  mu__boolexpr571 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
    return mu__boolexpr571;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 118;
    while (what_rule < 119 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr574;
bool mu__boolexpr575;
bool mu__boolexpr576;
  if (!((mu_Sta.mu_HomeProc.mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr576 = FALSE ;
  else {
  mu__boolexpr576 = ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_I)) ; 
}
  if (!(mu__boolexpr576)) mu__boolexpr575 = FALSE ;
  else {
  mu__boolexpr575 = (!(mu_Sta.mu_Dir.mu_Pending)) ; 
}
  if (!(mu__boolexpr575)) mu__boolexpr574 = FALSE ;
  else {
  mu__boolexpr574 = (mu_Sta.mu_Dir.mu_Dirty) ; 
}
	      if (mu__boolexpr574) {
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
    r = what_rule - 118;
    }
  }

  void Code(unsigned r)
  {
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_Get;
mu_Sta.mu_Dir.mu_Pending = mu_true;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_Get;
mu_Sta.mu_HomeUniMsg.mu_Proc = mu_Sta.mu_Dir.mu_HeadPtr;
mu_Sta.mu_HomeUniMsg.mu_HomeProc = mu_Sta.mu_Dir.mu_HomeHeadPtr;
  };

};
/******************** RuleBase59 ********************/
class RuleBase59
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("PI_Remote_Get, src:%s", mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr577;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr577 = FALSE ;
  else {
  mu__boolexpr577 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_I)) ; 
}
    return mu__boolexpr577;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 119;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 121 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr578;
  if (!((mu_Sta.mu_Proc[mu_src].mu_ProcCmd) == (mu_NODE_None))) mu__boolexpr578 = FALSE ;
  else {
  mu__boolexpr578 = ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_I)) ; 
}
	      if (mu__boolexpr578) {
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
    r = what_rule - 119;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_src].mu_ProcCmd = mu_NODE_Get;
mu_Sta.mu_UniMsg[mu_src].mu_Cmd = mu_UNI_Get;
mu_Sta.mu_UniMsg[mu_src].mu_HomeProc = mu_true;
  };

};
/******************** RuleBase60 ********************/
class RuleBase60
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("Store_Home, data:%s", mu_data.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 121;
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 123 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_HomeProc.mu_CacheState) == (mu_CACHE_E)) {
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
    r = what_rule - 121;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_HomeProc.mu_CacheData = mu_data;
mu_Sta.mu_CurrData = mu_data;
  };

};
/******************** RuleBase61 ********************/
class RuleBase61
{
public:
  int Priority()
  {
    return 0;
  }
  char * Name(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("Store, data:%s, src:%s", mu_data.Name(), mu_src.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    return (mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_E);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 123;
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 127 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Sta.mu_Proc[mu_src].mu_CacheState) == (mu_CACHE_E)) {
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
    r = what_rule - 123;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    mu_src.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_DATA mu_data;
    mu_data.value((r % 2) + 1);
    r = r / 2;
    static mu_1_NODE mu_src;
    mu_src.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_Proc[mu_src].mu_CacheData = mu_data;
mu_Sta.mu_CurrData = mu_data;
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
  RuleBase12 R12;
  RuleBase13 R13;
  RuleBase14 R14;
  RuleBase15 R15;
  RuleBase16 R16;
  RuleBase17 R17;
  RuleBase18 R18;
  RuleBase19 R19;
  RuleBase20 R20;
  RuleBase21 R21;
  RuleBase22 R22;
  RuleBase23 R23;
  RuleBase24 R24;
  RuleBase25 R25;
  RuleBase26 R26;
  RuleBase27 R27;
  RuleBase28 R28;
  RuleBase29 R29;
  RuleBase30 R30;
  RuleBase31 R31;
  RuleBase32 R32;
  RuleBase33 R33;
  RuleBase34 R34;
  RuleBase35 R35;
  RuleBase36 R36;
  RuleBase37 R37;
  RuleBase38 R38;
  RuleBase39 R39;
  RuleBase40 R40;
  RuleBase41 R41;
  RuleBase42 R42;
  RuleBase43 R43;
  RuleBase44 R44;
  RuleBase45 R45;
  RuleBase46 R46;
  RuleBase47 R47;
  RuleBase48 R48;
  RuleBase49 R49;
  RuleBase50 R50;
  RuleBase51 R51;
  RuleBase52 R52;
  RuleBase53 R53;
  RuleBase54 R54;
  RuleBase55 R55;
  RuleBase56 R56;
  RuleBase57 R57;
  RuleBase58 R58;
  RuleBase59 R59;
  RuleBase60 R60;
  RuleBase61 R61;
public:
void SetNextEnabledRule(unsigned & what_rule)
{
  category = CONDITION;
  if (what_rule<1)
    { R0.NextRule(what_rule);
      if (what_rule<1) return; }
  if (what_rule>=1 && what_rule<3)
    { R1.NextRule(what_rule);
      if (what_rule<3) return; }
  if (what_rule>=3 && what_rule<4)
    { R2.NextRule(what_rule);
      if (what_rule<4) return; }
  if (what_rule>=4 && what_rule<5)
    { R3.NextRule(what_rule);
      if (what_rule<5) return; }
  if (what_rule>=5 && what_rule<6)
    { R4.NextRule(what_rule);
      if (what_rule<6) return; }
  if (what_rule>=6 && what_rule<8)
    { R5.NextRule(what_rule);
      if (what_rule<8) return; }
  if (what_rule>=8 && what_rule<10)
    { R6.NextRule(what_rule);
      if (what_rule<10) return; }
  if (what_rule>=10 && what_rule<12)
    { R7.NextRule(what_rule);
      if (what_rule<12) return; }
  if (what_rule>=12 && what_rule<16)
    { R8.NextRule(what_rule);
      if (what_rule<16) return; }
  if (what_rule>=16 && what_rule<18)
    { R9.NextRule(what_rule);
      if (what_rule<18) return; }
  if (what_rule>=18 && what_rule<20)
    { R10.NextRule(what_rule);
      if (what_rule<20) return; }
  if (what_rule>=20 && what_rule<22)
    { R11.NextRule(what_rule);
      if (what_rule<22) return; }
  if (what_rule>=22 && what_rule<23)
    { R12.NextRule(what_rule);
      if (what_rule<23) return; }
  if (what_rule>=23 && what_rule<25)
    { R13.NextRule(what_rule);
      if (what_rule<25) return; }
  if (what_rule>=25 && what_rule<26)
    { R14.NextRule(what_rule);
      if (what_rule<26) return; }
  if (what_rule>=26 && what_rule<28)
    { R15.NextRule(what_rule);
      if (what_rule<28) return; }
  if (what_rule>=28 && what_rule<32)
    { R16.NextRule(what_rule);
      if (what_rule<32) return; }
  if (what_rule>=32 && what_rule<34)
    { R17.NextRule(what_rule);
      if (what_rule<34) return; }
  if (what_rule>=34 && what_rule<38)
    { R18.NextRule(what_rule);
      if (what_rule<38) return; }
  if (what_rule>=38 && what_rule<40)
    { R19.NextRule(what_rule);
      if (what_rule<40) return; }
  if (what_rule>=40 && what_rule<44)
    { R20.NextRule(what_rule);
      if (what_rule<44) return; }
  if (what_rule>=44 && what_rule<46)
    { R21.NextRule(what_rule);
      if (what_rule<46) return; }
  if (what_rule>=46 && what_rule<48)
    { R22.NextRule(what_rule);
      if (what_rule<48) return; }
  if (what_rule>=48 && what_rule<52)
    { R23.NextRule(what_rule);
      if (what_rule<52) return; }
  if (what_rule>=52 && what_rule<56)
    { R24.NextRule(what_rule);
      if (what_rule<56) return; }
  if (what_rule>=56 && what_rule<58)
    { R25.NextRule(what_rule);
      if (what_rule<58) return; }
  if (what_rule>=58 && what_rule<60)
    { R26.NextRule(what_rule);
      if (what_rule<60) return; }
  if (what_rule>=60 && what_rule<62)
    { R27.NextRule(what_rule);
      if (what_rule<62) return; }
  if (what_rule>=62 && what_rule<64)
    { R28.NextRule(what_rule);
      if (what_rule<64) return; }
  if (what_rule>=64 && what_rule<66)
    { R29.NextRule(what_rule);
      if (what_rule<66) return; }
  if (what_rule>=66 && what_rule<68)
    { R30.NextRule(what_rule);
      if (what_rule<68) return; }
  if (what_rule>=68 && what_rule<70)
    { R31.NextRule(what_rule);
      if (what_rule<70) return; }
  if (what_rule>=70 && what_rule<72)
    { R32.NextRule(what_rule);
      if (what_rule<72) return; }
  if (what_rule>=72 && what_rule<74)
    { R33.NextRule(what_rule);
      if (what_rule<74) return; }
  if (what_rule>=74 && what_rule<76)
    { R34.NextRule(what_rule);
      if (what_rule<76) return; }
  if (what_rule>=76 && what_rule<78)
    { R35.NextRule(what_rule);
      if (what_rule<78) return; }
  if (what_rule>=78 && what_rule<80)
    { R36.NextRule(what_rule);
      if (what_rule<80) return; }
  if (what_rule>=80 && what_rule<82)
    { R37.NextRule(what_rule);
      if (what_rule<82) return; }
  if (what_rule>=82 && what_rule<86)
    { R38.NextRule(what_rule);
      if (what_rule<86) return; }
  if (what_rule>=86 && what_rule<88)
    { R39.NextRule(what_rule);
      if (what_rule<88) return; }
  if (what_rule>=88 && what_rule<92)
    { R40.NextRule(what_rule);
      if (what_rule<92) return; }
  if (what_rule>=92 && what_rule<94)
    { R41.NextRule(what_rule);
      if (what_rule<94) return; }
  if (what_rule>=94 && what_rule<96)
    { R42.NextRule(what_rule);
      if (what_rule<96) return; }
  if (what_rule>=96 && what_rule<98)
    { R43.NextRule(what_rule);
      if (what_rule<98) return; }
  if (what_rule>=98 && what_rule<100)
    { R44.NextRule(what_rule);
      if (what_rule<100) return; }
  if (what_rule>=100 && what_rule<102)
    { R45.NextRule(what_rule);
      if (what_rule<102) return; }
  if (what_rule>=102 && what_rule<103)
    { R46.NextRule(what_rule);
      if (what_rule<103) return; }
  if (what_rule>=103 && what_rule<104)
    { R47.NextRule(what_rule);
      if (what_rule<104) return; }
  if (what_rule>=104 && what_rule<106)
    { R48.NextRule(what_rule);
      if (what_rule<106) return; }
  if (what_rule>=106 && what_rule<107)
    { R49.NextRule(what_rule);
      if (what_rule<107) return; }
  if (what_rule>=107 && what_rule<109)
    { R50.NextRule(what_rule);
      if (what_rule<109) return; }
  if (what_rule>=109 && what_rule<110)
    { R51.NextRule(what_rule);
      if (what_rule<110) return; }
  if (what_rule>=110 && what_rule<112)
    { R52.NextRule(what_rule);
      if (what_rule<112) return; }
  if (what_rule>=112 && what_rule<113)
    { R53.NextRule(what_rule);
      if (what_rule<113) return; }
  if (what_rule>=113 && what_rule<114)
    { R54.NextRule(what_rule);
      if (what_rule<114) return; }
  if (what_rule>=114 && what_rule<115)
    { R55.NextRule(what_rule);
      if (what_rule<115) return; }
  if (what_rule>=115 && what_rule<117)
    { R56.NextRule(what_rule);
      if (what_rule<117) return; }
  if (what_rule>=117 && what_rule<118)
    { R57.NextRule(what_rule);
      if (what_rule<118) return; }
  if (what_rule>=118 && what_rule<119)
    { R58.NextRule(what_rule);
      if (what_rule<119) return; }
  if (what_rule>=119 && what_rule<121)
    { R59.NextRule(what_rule);
      if (what_rule<121) return; }
  if (what_rule>=121 && what_rule<123)
    { R60.NextRule(what_rule);
      if (what_rule<123) return; }
  if (what_rule>=123 && what_rule<127)
    { R61.NextRule(what_rule);
      if (what_rule<127) return; }
}
bool Condition(unsigned r)
{
  category = CONDITION;
  if (r<=0) return R0.Condition(r-0);
  if (r>=1 && r<=2) return R1.Condition(r-1);
  if (r>=3 && r<=3) return R2.Condition(r-3);
  if (r>=4 && r<=4) return R3.Condition(r-4);
  if (r>=5 && r<=5) return R4.Condition(r-5);
  if (r>=6 && r<=7) return R5.Condition(r-6);
  if (r>=8 && r<=9) return R6.Condition(r-8);
  if (r>=10 && r<=11) return R7.Condition(r-10);
  if (r>=12 && r<=15) return R8.Condition(r-12);
  if (r>=16 && r<=17) return R9.Condition(r-16);
  if (r>=18 && r<=19) return R10.Condition(r-18);
  if (r>=20 && r<=21) return R11.Condition(r-20);
  if (r>=22 && r<=22) return R12.Condition(r-22);
  if (r>=23 && r<=24) return R13.Condition(r-23);
  if (r>=25 && r<=25) return R14.Condition(r-25);
  if (r>=26 && r<=27) return R15.Condition(r-26);
  if (r>=28 && r<=31) return R16.Condition(r-28);
  if (r>=32 && r<=33) return R17.Condition(r-32);
  if (r>=34 && r<=37) return R18.Condition(r-34);
  if (r>=38 && r<=39) return R19.Condition(r-38);
  if (r>=40 && r<=43) return R20.Condition(r-40);
  if (r>=44 && r<=45) return R21.Condition(r-44);
  if (r>=46 && r<=47) return R22.Condition(r-46);
  if (r>=48 && r<=51) return R23.Condition(r-48);
  if (r>=52 && r<=55) return R24.Condition(r-52);
  if (r>=56 && r<=57) return R25.Condition(r-56);
  if (r>=58 && r<=59) return R26.Condition(r-58);
  if (r>=60 && r<=61) return R27.Condition(r-60);
  if (r>=62 && r<=63) return R28.Condition(r-62);
  if (r>=64 && r<=65) return R29.Condition(r-64);
  if (r>=66 && r<=67) return R30.Condition(r-66);
  if (r>=68 && r<=69) return R31.Condition(r-68);
  if (r>=70 && r<=71) return R32.Condition(r-70);
  if (r>=72 && r<=73) return R33.Condition(r-72);
  if (r>=74 && r<=75) return R34.Condition(r-74);
  if (r>=76 && r<=77) return R35.Condition(r-76);
  if (r>=78 && r<=79) return R36.Condition(r-78);
  if (r>=80 && r<=81) return R37.Condition(r-80);
  if (r>=82 && r<=85) return R38.Condition(r-82);
  if (r>=86 && r<=87) return R39.Condition(r-86);
  if (r>=88 && r<=91) return R40.Condition(r-88);
  if (r>=92 && r<=93) return R41.Condition(r-92);
  if (r>=94 && r<=95) return R42.Condition(r-94);
  if (r>=96 && r<=97) return R43.Condition(r-96);
  if (r>=98 && r<=99) return R44.Condition(r-98);
  if (r>=100 && r<=101) return R45.Condition(r-100);
  if (r>=102 && r<=102) return R46.Condition(r-102);
  if (r>=103 && r<=103) return R47.Condition(r-103);
  if (r>=104 && r<=105) return R48.Condition(r-104);
  if (r>=106 && r<=106) return R49.Condition(r-106);
  if (r>=107 && r<=108) return R50.Condition(r-107);
  if (r>=109 && r<=109) return R51.Condition(r-109);
  if (r>=110 && r<=111) return R52.Condition(r-110);
  if (r>=112 && r<=112) return R53.Condition(r-112);
  if (r>=113 && r<=113) return R54.Condition(r-113);
  if (r>=114 && r<=114) return R55.Condition(r-114);
  if (r>=115 && r<=116) return R56.Condition(r-115);
  if (r>=117 && r<=117) return R57.Condition(r-117);
  if (r>=118 && r<=118) return R58.Condition(r-118);
  if (r>=119 && r<=120) return R59.Condition(r-119);
  if (r>=121 && r<=122) return R60.Condition(r-121);
  if (r>=123 && r<=126) return R61.Condition(r-123);
Error.Notrace("Internal: NextStateGenerator -- checking condition for nonexisting rule.");
return 0;}
void Code(unsigned r)
{
  if (r<=0) { R0.Code(r-0); return; } 
  if (r>=1 && r<=2) { R1.Code(r-1); return; } 
  if (r>=3 && r<=3) { R2.Code(r-3); return; } 
  if (r>=4 && r<=4) { R3.Code(r-4); return; } 
  if (r>=5 && r<=5) { R4.Code(r-5); return; } 
  if (r>=6 && r<=7) { R5.Code(r-6); return; } 
  if (r>=8 && r<=9) { R6.Code(r-8); return; } 
  if (r>=10 && r<=11) { R7.Code(r-10); return; } 
  if (r>=12 && r<=15) { R8.Code(r-12); return; } 
  if (r>=16 && r<=17) { R9.Code(r-16); return; } 
  if (r>=18 && r<=19) { R10.Code(r-18); return; } 
  if (r>=20 && r<=21) { R11.Code(r-20); return; } 
  if (r>=22 && r<=22) { R12.Code(r-22); return; } 
  if (r>=23 && r<=24) { R13.Code(r-23); return; } 
  if (r>=25 && r<=25) { R14.Code(r-25); return; } 
  if (r>=26 && r<=27) { R15.Code(r-26); return; } 
  if (r>=28 && r<=31) { R16.Code(r-28); return; } 
  if (r>=32 && r<=33) { R17.Code(r-32); return; } 
  if (r>=34 && r<=37) { R18.Code(r-34); return; } 
  if (r>=38 && r<=39) { R19.Code(r-38); return; } 
  if (r>=40 && r<=43) { R20.Code(r-40); return; } 
  if (r>=44 && r<=45) { R21.Code(r-44); return; } 
  if (r>=46 && r<=47) { R22.Code(r-46); return; } 
  if (r>=48 && r<=51) { R23.Code(r-48); return; } 
  if (r>=52 && r<=55) { R24.Code(r-52); return; } 
  if (r>=56 && r<=57) { R25.Code(r-56); return; } 
  if (r>=58 && r<=59) { R26.Code(r-58); return; } 
  if (r>=60 && r<=61) { R27.Code(r-60); return; } 
  if (r>=62 && r<=63) { R28.Code(r-62); return; } 
  if (r>=64 && r<=65) { R29.Code(r-64); return; } 
  if (r>=66 && r<=67) { R30.Code(r-66); return; } 
  if (r>=68 && r<=69) { R31.Code(r-68); return; } 
  if (r>=70 && r<=71) { R32.Code(r-70); return; } 
  if (r>=72 && r<=73) { R33.Code(r-72); return; } 
  if (r>=74 && r<=75) { R34.Code(r-74); return; } 
  if (r>=76 && r<=77) { R35.Code(r-76); return; } 
  if (r>=78 && r<=79) { R36.Code(r-78); return; } 
  if (r>=80 && r<=81) { R37.Code(r-80); return; } 
  if (r>=82 && r<=85) { R38.Code(r-82); return; } 
  if (r>=86 && r<=87) { R39.Code(r-86); return; } 
  if (r>=88 && r<=91) { R40.Code(r-88); return; } 
  if (r>=92 && r<=93) { R41.Code(r-92); return; } 
  if (r>=94 && r<=95) { R42.Code(r-94); return; } 
  if (r>=96 && r<=97) { R43.Code(r-96); return; } 
  if (r>=98 && r<=99) { R44.Code(r-98); return; } 
  if (r>=100 && r<=101) { R45.Code(r-100); return; } 
  if (r>=102 && r<=102) { R46.Code(r-102); return; } 
  if (r>=103 && r<=103) { R47.Code(r-103); return; } 
  if (r>=104 && r<=105) { R48.Code(r-104); return; } 
  if (r>=106 && r<=106) { R49.Code(r-106); return; } 
  if (r>=107 && r<=108) { R50.Code(r-107); return; } 
  if (r>=109 && r<=109) { R51.Code(r-109); return; } 
  if (r>=110 && r<=111) { R52.Code(r-110); return; } 
  if (r>=112 && r<=112) { R53.Code(r-112); return; } 
  if (r>=113 && r<=113) { R54.Code(r-113); return; } 
  if (r>=114 && r<=114) { R55.Code(r-114); return; } 
  if (r>=115 && r<=116) { R56.Code(r-115); return; } 
  if (r>=117 && r<=117) { R57.Code(r-117); return; } 
  if (r>=118 && r<=118) { R58.Code(r-118); return; } 
  if (r>=119 && r<=120) { R59.Code(r-119); return; } 
  if (r>=121 && r<=122) { R60.Code(r-121); return; } 
  if (r>=123 && r<=126) { R61.Code(r-123); return; } 
}
int Priority(unsigned short r)
{
  if (r<=0) { return R0.Priority(); } 
  if (r>=1 && r<=2) { return R1.Priority(); } 
  if (r>=3 && r<=3) { return R2.Priority(); } 
  if (r>=4 && r<=4) { return R3.Priority(); } 
  if (r>=5 && r<=5) { return R4.Priority(); } 
  if (r>=6 && r<=7) { return R5.Priority(); } 
  if (r>=8 && r<=9) { return R6.Priority(); } 
  if (r>=10 && r<=11) { return R7.Priority(); } 
  if (r>=12 && r<=15) { return R8.Priority(); } 
  if (r>=16 && r<=17) { return R9.Priority(); } 
  if (r>=18 && r<=19) { return R10.Priority(); } 
  if (r>=20 && r<=21) { return R11.Priority(); } 
  if (r>=22 && r<=22) { return R12.Priority(); } 
  if (r>=23 && r<=24) { return R13.Priority(); } 
  if (r>=25 && r<=25) { return R14.Priority(); } 
  if (r>=26 && r<=27) { return R15.Priority(); } 
  if (r>=28 && r<=31) { return R16.Priority(); } 
  if (r>=32 && r<=33) { return R17.Priority(); } 
  if (r>=34 && r<=37) { return R18.Priority(); } 
  if (r>=38 && r<=39) { return R19.Priority(); } 
  if (r>=40 && r<=43) { return R20.Priority(); } 
  if (r>=44 && r<=45) { return R21.Priority(); } 
  if (r>=46 && r<=47) { return R22.Priority(); } 
  if (r>=48 && r<=51) { return R23.Priority(); } 
  if (r>=52 && r<=55) { return R24.Priority(); } 
  if (r>=56 && r<=57) { return R25.Priority(); } 
  if (r>=58 && r<=59) { return R26.Priority(); } 
  if (r>=60 && r<=61) { return R27.Priority(); } 
  if (r>=62 && r<=63) { return R28.Priority(); } 
  if (r>=64 && r<=65) { return R29.Priority(); } 
  if (r>=66 && r<=67) { return R30.Priority(); } 
  if (r>=68 && r<=69) { return R31.Priority(); } 
  if (r>=70 && r<=71) { return R32.Priority(); } 
  if (r>=72 && r<=73) { return R33.Priority(); } 
  if (r>=74 && r<=75) { return R34.Priority(); } 
  if (r>=76 && r<=77) { return R35.Priority(); } 
  if (r>=78 && r<=79) { return R36.Priority(); } 
  if (r>=80 && r<=81) { return R37.Priority(); } 
  if (r>=82 && r<=85) { return R38.Priority(); } 
  if (r>=86 && r<=87) { return R39.Priority(); } 
  if (r>=88 && r<=91) { return R40.Priority(); } 
  if (r>=92 && r<=93) { return R41.Priority(); } 
  if (r>=94 && r<=95) { return R42.Priority(); } 
  if (r>=96 && r<=97) { return R43.Priority(); } 
  if (r>=98 && r<=99) { return R44.Priority(); } 
  if (r>=100 && r<=101) { return R45.Priority(); } 
  if (r>=102 && r<=102) { return R46.Priority(); } 
  if (r>=103 && r<=103) { return R47.Priority(); } 
  if (r>=104 && r<=105) { return R48.Priority(); } 
  if (r>=106 && r<=106) { return R49.Priority(); } 
  if (r>=107 && r<=108) { return R50.Priority(); } 
  if (r>=109 && r<=109) { return R51.Priority(); } 
  if (r>=110 && r<=111) { return R52.Priority(); } 
  if (r>=112 && r<=112) { return R53.Priority(); } 
  if (r>=113 && r<=113) { return R54.Priority(); } 
  if (r>=114 && r<=114) { return R55.Priority(); } 
  if (r>=115 && r<=116) { return R56.Priority(); } 
  if (r>=117 && r<=117) { return R57.Priority(); } 
  if (r>=118 && r<=118) { return R58.Priority(); } 
  if (r>=119 && r<=120) { return R59.Priority(); } 
  if (r>=121 && r<=122) { return R60.Priority(); } 
  if (r>=123 && r<=126) { return R61.Priority(); } 
return 0;}
char * Name(unsigned r)
{
  if (r<=0) return R0.Name(r-0);
  if (r>=1 && r<=2) return R1.Name(r-1);
  if (r>=3 && r<=3) return R2.Name(r-3);
  if (r>=4 && r<=4) return R3.Name(r-4);
  if (r>=5 && r<=5) return R4.Name(r-5);
  if (r>=6 && r<=7) return R5.Name(r-6);
  if (r>=8 && r<=9) return R6.Name(r-8);
  if (r>=10 && r<=11) return R7.Name(r-10);
  if (r>=12 && r<=15) return R8.Name(r-12);
  if (r>=16 && r<=17) return R9.Name(r-16);
  if (r>=18 && r<=19) return R10.Name(r-18);
  if (r>=20 && r<=21) return R11.Name(r-20);
  if (r>=22 && r<=22) return R12.Name(r-22);
  if (r>=23 && r<=24) return R13.Name(r-23);
  if (r>=25 && r<=25) return R14.Name(r-25);
  if (r>=26 && r<=27) return R15.Name(r-26);
  if (r>=28 && r<=31) return R16.Name(r-28);
  if (r>=32 && r<=33) return R17.Name(r-32);
  if (r>=34 && r<=37) return R18.Name(r-34);
  if (r>=38 && r<=39) return R19.Name(r-38);
  if (r>=40 && r<=43) return R20.Name(r-40);
  if (r>=44 && r<=45) return R21.Name(r-44);
  if (r>=46 && r<=47) return R22.Name(r-46);
  if (r>=48 && r<=51) return R23.Name(r-48);
  if (r>=52 && r<=55) return R24.Name(r-52);
  if (r>=56 && r<=57) return R25.Name(r-56);
  if (r>=58 && r<=59) return R26.Name(r-58);
  if (r>=60 && r<=61) return R27.Name(r-60);
  if (r>=62 && r<=63) return R28.Name(r-62);
  if (r>=64 && r<=65) return R29.Name(r-64);
  if (r>=66 && r<=67) return R30.Name(r-66);
  if (r>=68 && r<=69) return R31.Name(r-68);
  if (r>=70 && r<=71) return R32.Name(r-70);
  if (r>=72 && r<=73) return R33.Name(r-72);
  if (r>=74 && r<=75) return R34.Name(r-74);
  if (r>=76 && r<=77) return R35.Name(r-76);
  if (r>=78 && r<=79) return R36.Name(r-78);
  if (r>=80 && r<=81) return R37.Name(r-80);
  if (r>=82 && r<=85) return R38.Name(r-82);
  if (r>=86 && r<=87) return R39.Name(r-86);
  if (r>=88 && r<=91) return R40.Name(r-88);
  if (r>=92 && r<=93) return R41.Name(r-92);
  if (r>=94 && r<=95) return R42.Name(r-94);
  if (r>=96 && r<=97) return R43.Name(r-96);
  if (r>=98 && r<=99) return R44.Name(r-98);
  if (r>=100 && r<=101) return R45.Name(r-100);
  if (r>=102 && r<=102) return R46.Name(r-102);
  if (r>=103 && r<=103) return R47.Name(r-103);
  if (r>=104 && r<=105) return R48.Name(r-104);
  if (r>=106 && r<=106) return R49.Name(r-106);
  if (r>=107 && r<=108) return R50.Name(r-107);
  if (r>=109 && r<=109) return R51.Name(r-109);
  if (r>=110 && r<=111) return R52.Name(r-110);
  if (r>=112 && r<=112) return R53.Name(r-112);
  if (r>=113 && r<=113) return R54.Name(r-113);
  if (r>=114 && r<=114) return R55.Name(r-114);
  if (r>=115 && r<=116) return R56.Name(r-115);
  if (r>=117 && r<=117) return R57.Name(r-117);
  if (r>=118 && r<=118) return R58.Name(r-118);
  if (r>=119 && r<=120) return R59.Name(r-119);
  if (r>=121 && r<=122) return R60.Name(r-121);
  if (r>=123 && r<=126) return R61.Name(r-123);
  return NULL;
}
};
const unsigned numrules = 127;

/********************
  parameter
 ********************/
#define RULES_IN_WORLD 127


/********************
  Startstate records
 ********************/
/******************** StartStateBase0 ********************/
class StartStateBase0
{
public:
  char * Name(unsigned short r)
  {
    static mu_1_NODE mu_h;
    mu_h.value((r % 2) + 1);
    r = r / 2;
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("Init, h:%s, d:%s", mu_h.Name(), mu_d.Name());
  }
  void Code(unsigned short r)
  {
    static mu_1_NODE mu_h;
    mu_h.value((r % 2) + 1);
    r = r / 2;
    static mu_1_DATA mu_d;
    mu_d.value((r % 2) + 1);
    r = r / 2;
mu_Sta.mu_MemData = mu_d;
mu_Sta.mu_Dir.mu_Pending = mu_false;
mu_Sta.mu_Dir.mu_Local = mu_false;
mu_Sta.mu_Dir.mu_Dirty = mu_false;
mu_Sta.mu_Dir.mu_HeadVld = mu_false;
mu_Sta.mu_Dir.mu_HeadPtr = mu_h;
mu_Sta.mu_Dir.mu_HomeHeadPtr = mu_true;
mu_Sta.mu_Dir.mu_ShrVld = mu_false;
mu_Sta.mu_WbMsg.mu_Cmd = mu_WB_None;
mu_Sta.mu_WbMsg.mu_Proc = mu_h;
mu_Sta.mu_WbMsg.mu_HomeProc = mu_true;
mu_Sta.mu_WbMsg.mu_Data = mu_d;
mu_Sta.mu_ShWbMsg.mu_Cmd = mu_SHWB_None;
mu_Sta.mu_ShWbMsg.mu_Proc = mu_h;
mu_Sta.mu_ShWbMsg.mu_HomeProc = mu_true;
mu_Sta.mu_ShWbMsg.mu_Data = mu_d;
mu_Sta.mu_NakcMsg.mu_Cmd = mu_NAKC_None;
{
for(int mu_p = 1; mu_p <= 2; mu_p++) {
mu_Sta.mu_Proc[mu_p].mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_Proc[mu_p].mu_InvMarked = mu_false;
mu_Sta.mu_Proc[mu_p].mu_CacheState = mu_CACHE_I;
mu_Sta.mu_Proc[mu_p].mu_CacheData = mu_d;
mu_Sta.mu_Dir.mu_ShrSet[mu_p] = mu_false;
mu_Sta.mu_Dir.mu_InvSet[mu_p] = mu_false;
mu_Sta.mu_UniMsg[mu_p].mu_Cmd = mu_UNI_None;
mu_Sta.mu_UniMsg[mu_p].mu_Proc = mu_h;
mu_Sta.mu_UniMsg[mu_p].mu_HomeProc = mu_true;
mu_Sta.mu_UniMsg[mu_p].mu_Data = mu_d;
mu_Sta.mu_InvMsg[mu_p].mu_Cmd = mu_INV_None;
mu_Sta.mu_RpMsg[mu_p].mu_Cmd = mu_RP_None;
};
};
mu_Sta.mu_HomeProc.mu_ProcCmd = mu_NODE_None;
mu_Sta.mu_HomeProc.mu_InvMarked = mu_false;
mu_Sta.mu_HomeProc.mu_CacheState = mu_CACHE_I;
mu_Sta.mu_HomeProc.mu_CacheData = mu_d;
mu_Sta.mu_Dir.mu_HomeShrSet = mu_false;
mu_Sta.mu_Dir.mu_HomeInvSet = mu_false;
mu_Sta.mu_HomeUniMsg.mu_Cmd = mu_UNI_None;
mu_Sta.mu_HomeUniMsg.mu_Proc = mu_h;
mu_Sta.mu_HomeUniMsg.mu_HomeProc = mu_true;
mu_Sta.mu_HomeUniMsg.mu_Data = mu_d;
mu_Sta.mu_HomeInvMsg.mu_Cmd = mu_INV_None;
mu_Sta.mu_HomeRpMsg.mu_Cmd = mu_RP_None;
mu_Sta.mu_CurrData = mu_d;
  };

};
class StartStateGenerator
{
  StartStateBase0 S0;
public:
void Code(unsigned short r)
{
  if (r<=3) { S0.Code(r-0); return; }
}
char * Name(unsigned short r)
{
  if (r<=3) return S0.Name(r-0);
  return NULL;
}
};
const rulerec startstates[] = {
{ NULL, NULL, NULL, FALSE},
};
unsigned short StartStateManager::numstartstates = 4;

/********************
  Invariant records
 ********************/
int mu__invariant_579() // Invariant "reachableStateN"
{
bool mu__boolexpr580;
bool mu__boolexpr581;
bool mu__boolexpr582;
bool mu__boolexpr583;
bool mu__boolexpr584;
bool mu__boolexpr585;
bool mu__boolexpr586;
bool mu__boolexpr587;
bool mu__boolexpr588;
bool mu__boolexpr589;
bool mu__boolexpr590;
bool mu__boolexpr591;
bool mu__boolexpr592;
bool mu__boolexpr593;
bool mu__boolexpr594;
bool mu__boolexpr595;
bool mu__boolexpr596;
bool mu__boolexpr597;
bool mu__boolexpr598;
bool mu__boolexpr599;
bool mu__boolexpr600;
bool mu__boolexpr601;
bool mu__boolexpr602;
bool mu__boolexpr603;
bool mu__boolexpr604;
bool mu__boolexpr605;
bool mu__boolexpr606;
bool mu__boolexpr607;
bool mu__boolexpr608;
bool mu__boolexpr609;
bool mu__boolexpr610;
bool mu__boolexpr611;
bool mu__boolexpr612;
bool mu__boolexpr613;
bool mu__boolexpr614;
bool mu__boolexpr615;
bool mu__boolexpr616;
bool mu__boolexpr617;
bool mu__boolexpr618;
bool mu__boolexpr619;
bool mu__boolexpr620;
bool mu__boolexpr621;
  if (!((mu_Sta.mu_HomeProc.mu_CacheData) == (2))) mu__boolexpr621 = FALSE ;
  else {
  mu__boolexpr621 = ((mu_Sta.mu_Dir.mu_Pending) == (mu_true)) ; 
}
  if (!(mu__boolexpr621)) mu__boolexpr620 = FALSE ;
  else {
  mu__boolexpr620 = ((mu_Sta.mu_Dir.mu_Local) == (mu_false)) ; 
}
  if (!(mu__boolexpr620)) mu__boolexpr619 = FALSE ;
  else {
  mu__boolexpr619 = ((mu_Sta.mu_Dir.mu_Dirty) == (mu_true)) ; 
}
  if (!(mu__boolexpr619)) mu__boolexpr618 = FALSE ;
  else {
  mu__boolexpr618 = ((mu_Sta.mu_Dir.mu_HeadVld) == (mu_true)) ; 
}
  if (!(mu__boolexpr618)) mu__boolexpr617 = FALSE ;
  else {
  mu__boolexpr617 = ((mu_Sta.mu_Dir.mu_HeadPtr) == (2)) ; 
}
  if (!(mu__boolexpr617)) mu__boolexpr616 = FALSE ;
  else {
  mu__boolexpr616 = ((mu_Sta.mu_Dir.mu_HomeHeadPtr) == (mu_false)) ; 
}
  if (!(mu__boolexpr616)) mu__boolexpr615 = FALSE ;
  else {
  mu__boolexpr615 = ((mu_Sta.mu_Dir.mu_ShrVld) == (mu_false)) ; 
}
  if (!(mu__boolexpr615)) mu__boolexpr614 = FALSE ;
  else {
  mu__boolexpr614 = ((mu_Sta.mu_Dir.mu_ShrSet[1]) == (mu_false)) ; 
}
  if (!(mu__boolexpr614)) mu__boolexpr613 = FALSE ;
  else {
  mu__boolexpr613 = ((mu_Sta.mu_Dir.mu_ShrSet[2]) == (mu_false)) ; 
}
  if (!(mu__boolexpr613)) mu__boolexpr612 = FALSE ;
  else {
  mu__boolexpr612 = ((mu_Sta.mu_Dir.mu_HomeShrSet) == (mu_false)) ; 
}
  if (!(mu__boolexpr612)) mu__boolexpr611 = FALSE ;
  else {
  mu__boolexpr611 = ((mu_Sta.mu_Dir.mu_InvSet[1]) == (mu_false)) ; 
}
  if (!(mu__boolexpr611)) mu__boolexpr610 = FALSE ;
  else {
  mu__boolexpr610 = ((mu_Sta.mu_Dir.mu_InvSet[2]) == (mu_false)) ; 
}
  if (!(mu__boolexpr610)) mu__boolexpr609 = FALSE ;
  else {
  mu__boolexpr609 = ((mu_Sta.mu_Dir.mu_HomeInvSet) == (mu_false)) ; 
}
  if (!(mu__boolexpr609)) mu__boolexpr608 = FALSE ;
  else {
  mu__boolexpr608 = ((mu_Sta.mu_MemData) == (2)) ; 
}
  if (!(mu__boolexpr608)) mu__boolexpr607 = FALSE ;
  else {
  mu__boolexpr607 = ((mu_Sta.mu_UniMsg[1].mu_Cmd) == (mu_UNI_None)) ; 
}
  if (!(mu__boolexpr607)) mu__boolexpr606 = FALSE ;
  else {
  mu__boolexpr606 = ((mu_Sta.mu_UniMsg[1].mu_Proc) == (2)) ; 
}
  if (!(mu__boolexpr606)) mu__boolexpr605 = FALSE ;
  else {
  mu__boolexpr605 = ((mu_Sta.mu_UniMsg[1].mu_HomeProc) == (mu_true)) ; 
}
  if (!(mu__boolexpr605)) mu__boolexpr604 = FALSE ;
  else {
  mu__boolexpr604 = ((mu_Sta.mu_UniMsg[1].mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr604)) mu__boolexpr603 = FALSE ;
  else {
  mu__boolexpr603 = ((mu_Sta.mu_UniMsg[2].mu_Cmd) == (mu_UNI_PutX)) ; 
}
  if (!(mu__boolexpr603)) mu__boolexpr602 = FALSE ;
  else {
  mu__boolexpr602 = ((mu_Sta.mu_UniMsg[2].mu_Proc) == (1)) ; 
}
  if (!(mu__boolexpr602)) mu__boolexpr601 = FALSE ;
  else {
  mu__boolexpr601 = ((mu_Sta.mu_UniMsg[2].mu_HomeProc) == (mu_false)) ; 
}
  if (!(mu__boolexpr601)) mu__boolexpr600 = FALSE ;
  else {
  mu__boolexpr600 = ((mu_Sta.mu_UniMsg[2].mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr600)) mu__boolexpr599 = FALSE ;
  else {
  mu__boolexpr599 = ((mu_Sta.mu_HomeUniMsg.mu_Cmd) == (mu_UNI_Nak)) ; 
}
  if (!(mu__boolexpr599)) mu__boolexpr598 = FALSE ;
  else {
  mu__boolexpr598 = ((mu_Sta.mu_HomeUniMsg.mu_Proc) == (2)) ; 
}
  if (!(mu__boolexpr598)) mu__boolexpr597 = FALSE ;
  else {
  mu__boolexpr597 = ((mu_Sta.mu_HomeUniMsg.mu_HomeProc) == (mu_false)) ; 
}
  if (!(mu__boolexpr597)) mu__boolexpr596 = FALSE ;
  else {
  mu__boolexpr596 = ((mu_Sta.mu_HomeUniMsg.mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr596)) mu__boolexpr595 = FALSE ;
  else {
  mu__boolexpr595 = ((mu_Sta.mu_InvMsg[1].mu_Cmd) == (mu_INV_None)) ; 
}
  if (!(mu__boolexpr595)) mu__boolexpr594 = FALSE ;
  else {
  mu__boolexpr594 = ((mu_Sta.mu_InvMsg[2].mu_Cmd) == (mu_INV_None)) ; 
}
  if (!(mu__boolexpr594)) mu__boolexpr593 = FALSE ;
  else {
  mu__boolexpr593 = ((mu_Sta.mu_HomeInvMsg.mu_Cmd) == (mu_INV_None)) ; 
}
  if (!(mu__boolexpr593)) mu__boolexpr592 = FALSE ;
  else {
  mu__boolexpr592 = ((mu_Sta.mu_RpMsg[1].mu_Cmd) == (mu_RP_None)) ; 
}
  if (!(mu__boolexpr592)) mu__boolexpr591 = FALSE ;
  else {
  mu__boolexpr591 = ((mu_Sta.mu_RpMsg[2].mu_Cmd) == (mu_RP_None)) ; 
}
  if (!(mu__boolexpr591)) mu__boolexpr590 = FALSE ;
  else {
  mu__boolexpr590 = ((mu_Sta.mu_HomeRpMsg.mu_Cmd) == (mu_RP_None)) ; 
}
  if (!(mu__boolexpr590)) mu__boolexpr589 = FALSE ;
  else {
  mu__boolexpr589 = ((mu_Sta.mu_WbMsg.mu_Cmd) == (mu_WB_None)) ; 
}
  if (!(mu__boolexpr589)) mu__boolexpr588 = FALSE ;
  else {
  mu__boolexpr588 = ((mu_Sta.mu_WbMsg.mu_Proc) == (2)) ; 
}
  if (!(mu__boolexpr588)) mu__boolexpr587 = FALSE ;
  else {
  mu__boolexpr587 = ((mu_Sta.mu_WbMsg.mu_HomeProc) == (mu_false)) ; 
}
  if (!(mu__boolexpr587)) mu__boolexpr586 = FALSE ;
  else {
  mu__boolexpr586 = ((mu_Sta.mu_WbMsg.mu_Data) == (1)) ; 
}
  if (!(mu__boolexpr586)) mu__boolexpr585 = FALSE ;
  else {
  mu__boolexpr585 = ((mu_Sta.mu_ShWbMsg.mu_Cmd) == (mu_SHWB_None)) ; 
}
  if (!(mu__boolexpr585)) mu__boolexpr584 = FALSE ;
  else {
  mu__boolexpr584 = ((mu_Sta.mu_ShWbMsg.mu_Proc) == (2)) ; 
}
  if (!(mu__boolexpr584)) mu__boolexpr583 = FALSE ;
  else {
  mu__boolexpr583 = ((mu_Sta.mu_ShWbMsg.mu_HomeProc) == (mu_false)) ; 
}
  if (!(mu__boolexpr583)) mu__boolexpr582 = FALSE ;
  else {
  mu__boolexpr582 = ((mu_Sta.mu_ShWbMsg.mu_Data) == (2)) ; 
}
  if (!(mu__boolexpr582)) mu__boolexpr581 = FALSE ;
  else {
  mu__boolexpr581 = ((mu_Sta.mu_NakcMsg.mu_Cmd) == (mu_NAKC_Nakc)) ; 
}
  if (!(mu__boolexpr581)) mu__boolexpr580 = FALSE ;
  else {
  mu__boolexpr580 = ((mu_Sta.mu_CurrData) == (1)) ; 
}
return !(mu__boolexpr580);
};

bool mu__condition_622() // Condition for Rule "reachableStateN"
{
  return mu__invariant_579( );
}

/**** end rule declaration ****/

const rulerec invariants[] = {
{"reachableStateN", &mu__condition_622, NULL, },
};
const unsigned short numinvariants = 1;

/********************
  Normal/Canonicalization for scalarset
 ********************/
/*
Sta:NoScalarset
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
        mu_Sta.MultisetSort();
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
void mu_1_NODE_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_NODE_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_NODE_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_NODE_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_NODE_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_NODE_CMD::Limit(PermSet& Perm) {};
void mu_1_NODE_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_NODE_STATE::Permute(PermSet& Perm, int i)
{
};
void mu_1_NODE_STATE::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_NODE_STATE::Canonicalize(PermSet& Perm)
{
};
void mu_1_NODE_STATE::SimpleLimit(PermSet& Perm){}
void mu_1_NODE_STATE::ArrayLimit(PermSet& Perm){}
void mu_1_NODE_STATE::Limit(PermSet& Perm)
{
};
void mu_1_NODE_STATE::MultisetLimit(PermSet& Perm)
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
void mu_1_DIR_STATE::Permute(PermSet& Perm, int i)
{
};
void mu_1_DIR_STATE::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_DIR_STATE::Canonicalize(PermSet& Perm)
{
};
void mu_1_DIR_STATE::SimpleLimit(PermSet& Perm){}
void mu_1_DIR_STATE::ArrayLimit(PermSet& Perm){}
void mu_1_DIR_STATE::Limit(PermSet& Perm)
{
};
void mu_1_DIR_STATE::MultisetLimit(PermSet& Perm)
{
};
void mu_1_UNI_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_UNI_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_UNI_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_UNI_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_UNI_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_UNI_CMD::Limit(PermSet& Perm) {};
void mu_1_UNI_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_UNI_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_UNI_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_UNI_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_UNI_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_UNI_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_UNI_MSG::Limit(PermSet& Perm)
{
};
void mu_1_UNI_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1_INV_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_INV_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_INV_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_INV_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_INV_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_INV_CMD::Limit(PermSet& Perm) {};
void mu_1_INV_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_INV_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_INV_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_INV_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_INV_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_INV_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_INV_MSG::Limit(PermSet& Perm)
{
};
void mu_1_INV_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1_RP_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_RP_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_RP_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_RP_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_RP_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_RP_CMD::Limit(PermSet& Perm) {};
void mu_1_RP_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_RP_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_RP_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_RP_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_RP_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_RP_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_RP_MSG::Limit(PermSet& Perm)
{
};
void mu_1_RP_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1_WB_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_WB_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_WB_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_WB_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_WB_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_WB_CMD::Limit(PermSet& Perm) {};
void mu_1_WB_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_WB_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_WB_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_WB_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_WB_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_WB_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_WB_MSG::Limit(PermSet& Perm)
{
};
void mu_1_WB_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1_SHWB_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_SHWB_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_SHWB_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_SHWB_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_SHWB_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_SHWB_CMD::Limit(PermSet& Perm) {};
void mu_1_SHWB_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_SHWB_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_SHWB_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_SHWB_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_SHWB_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_SHWB_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_SHWB_MSG::Limit(PermSet& Perm)
{
};
void mu_1_SHWB_MSG::MultisetLimit(PermSet& Perm)
{
};
void mu_1_NAKC_CMD::Permute(PermSet& Perm, int i) {};
void mu_1_NAKC_CMD::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_NAKC_CMD::Canonicalize(PermSet& Perm) {};
void mu_1_NAKC_CMD::SimpleLimit(PermSet& Perm) {};
void mu_1_NAKC_CMD::ArrayLimit(PermSet& Perm) {};
void mu_1_NAKC_CMD::Limit(PermSet& Perm) {};
void mu_1_NAKC_CMD::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_NAKC_MSG::Permute(PermSet& Perm, int i)
{
};
void mu_1_NAKC_MSG::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_NAKC_MSG::Canonicalize(PermSet& Perm)
{
};
void mu_1_NAKC_MSG::SimpleLimit(PermSet& Perm){}
void mu_1_NAKC_MSG::ArrayLimit(PermSet& Perm){}
void mu_1_NAKC_MSG::Limit(PermSet& Perm)
{
};
void mu_1_NAKC_MSG::MultisetLimit(PermSet& Perm)
{
};
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
void mu_1_STATE::Permute(PermSet& Perm, int i)
{
};
void mu_1_STATE::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_STATE::Canonicalize(PermSet& Perm)
{
};
void mu_1_STATE::SimpleLimit(PermSet& Perm){}
void mu_1_STATE::ArrayLimit(PermSet& Perm){}
void mu_1_STATE::Limit(PermSet& Perm)
{
};
void mu_1_STATE::MultisetLimit(PermSet& Perm)
{
};

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
              
              mu_Sta.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Sta.MultisetSort();
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

          mu_Sta.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Sta.MultisetSort();
        if (p.compare(workingstate)) {
          StateCopy(workingstate,&temp); return TRUE; }

        while (Perm.NextPermutation())
          {
            if (ns != workingstate)
              StateCopy(workingstate, ns);
              
              mu_Sta.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Sta.MultisetSort();
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
      mu_Sta.MultisetSort();
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
        mu_Sta.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Sta.MultisetSort();
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
