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
#define BITS_IN_WORLD 696
#define ALIGN
#define HASHC

/********************
  Include
 ********************/
#include "mu_prolog.hpp"

/********************
  Decl declaration
 ********************/

class mu_1_chanType: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_chanType& val) { return mu__byte::operator=((int) val); };
  mu_1_chanType (const char *name, int os): mu__byte(1, 5, 3, name, os) {};
  mu_1_chanType (void): mu__byte(1, 5, 3) {};
  mu_1_chanType (int val): mu__byte(1, 5, 3, "Parameter or function result.", 0)
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
mu_1_chanType mu_1_chanType_undefined_var;

class mu_1_coreId: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_coreId& val) { return mu__byte::operator=((int) val); };
  mu_1_coreId (const char *name, int os): mu__byte(2, 3, 2, name, os) {};
  mu_1_coreId (void): mu__byte(2, 3, 2) {};
  mu_1_coreId (int val): mu__byte(2, 3, 2, "Parameter or function result.", 0)
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
mu_1_coreId mu_1_coreId_undefined_var;

class mu_1_l2Id: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_l2Id& val) { return mu__byte::operator=((int) val); };
  mu_1_l2Id (const char *name, int os): mu__byte(1, 1, 1, name, os) {};
  mu_1_l2Id (void): mu__byte(1, 1, 1) {};
  mu_1_l2Id (int val): mu__byte(1, 1, 1, "Parameter or function result.", 0)
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
mu_1_l2Id mu_1_l2Id_undefined_var;

class mu_1_cacheId: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_cacheId& val) { return mu__byte::operator=((int) val); };
  mu_1_cacheId (const char *name, int os): mu__byte(1, 1, 1, name, os) {};
  mu_1_cacheId (void): mu__byte(1, 1, 1) {};
  mu_1_cacheId (int val): mu__byte(1, 1, 1, "Parameter or function result.", 0)
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
mu_1_cacheId mu_1_cacheId_undefined_var;

class mu_1_nodeId: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_nodeId& val) { return mu__byte::operator=((int) val); };
  mu_1_nodeId (const char *name, int os): mu__byte(1, 3, 2, name, os) {};
  mu_1_nodeId (void): mu__byte(1, 3, 2) {};
  mu_1_nodeId (int val): mu__byte(1, 3, 2, "Parameter or function result.", 0)
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
mu_1_nodeId mu_1_nodeId_undefined_var;

class mu_1_branchType: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_branchType& val) { return mu__byte::operator=((int) val); };
  mu_1_branchType (const char *name, int os): mu__byte(1, 2, 2, name, os) {};
  mu_1_branchType (void): mu__byte(1, 2, 2) {};
  mu_1_branchType (int val): mu__byte(1, 2, 2, "Parameter or function result.", 0)
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
mu_1_branchType mu_1_branchType_undefined_var;

class mu_1_stateType: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_stateType& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_stateType& val)
  {
    if (val.defined())
      return ( s << mu_1_stateType::values[ int(val) - 1] );
    else return ( s << "Undefined" );
  };

  mu_1_stateType (const char *name, int os): mu__byte(1, 4, 3, name, os) {};
  mu_1_stateType (void): mu__byte(1, 4, 3) {};
  mu_1_stateType (int val): mu__byte(1, 4, 3, "Parameter or function result.", 0)
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

const char *mu_1_stateType::values[] = {"None","Trunk","Branch","Tip",NULL };

/*** end of enum declaration ***/
mu_1_stateType mu_1_stateType_undefined_var;

class mu_1_opType: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_opType& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_opType& val)
  {
    if (val.defined())
      return ( s << mu_1_opType::values[ int(val) - 5] );
    else return ( s << "Undefined" );
  };

  mu_1_opType (const char *name, int os): mu__byte(5, 17, 4, name, os) {};
  mu_1_opType (void): mu__byte(5, 17, 4) {};
  mu_1_opType (int val): mu__byte(5, 17, 4, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -5]; };
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
      cout << name << ":" << values[ value() -5] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_opType::values[] = {"Empty","AcquireBlock","AcquirePerm","ProbeBlock","ProbePerm","ProbeAck","ProbeAckData","Grant","GrantData","GrantAck","Release","ReleaseData","ReleaseAck",NULL };

/*** end of enum declaration ***/
mu_1_opType mu_1_opType_undefined_var;

class mu_1_transType: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_transType& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_transType& val)
  {
    if (val.defined())
      return ( s << mu_1_transType::values[ int(val) - 18] );
    else return ( s << "Undefined" );
  };

  mu_1_transType (const char *name, int os): mu__byte(18, 29, 4, name, os) {};
  mu_1_transType (void): mu__byte(18, 29, 4) {};
  mu_1_transType (int val): mu__byte(18, 29, 4, "Parameter or function result.", 0)
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

const char *mu_1_transType::values[] = {"toN","toB","toT","NtoB","NtoT","BtoT","TtoB","TtoN","BtoN","TtoT","BtoB","NtoN",NULL };

/*** end of enum declaration ***/
mu_1_transType mu_1_transType_undefined_var;

class mu_1_nodeType: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_nodeType& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_nodeType& val)
  {
    if (val.defined())
      return ( s << mu_1_nodeType::values[ int(val) - 30] );
    else return ( s << "Undefined" );
  };

  mu_1_nodeType (const char *name, int os): mu__byte(30, 31, 2, name, os) {};
  mu_1_nodeType (void): mu__byte(30, 31, 2) {};
  mu_1_nodeType (int val): mu__byte(30, 31, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -30]; };
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
      cout << name << ":" << values[ value() -30] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_nodeType::values[] = {"leaf","branch",NULL };

/*** end of enum declaration ***/
mu_1_nodeType mu_1_nodeType_undefined_var;

class mu_1_msgType
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_opType mu_opcode;
  mu_1_transType mu_para;
  mu_1_msgType ( const char *n, int os ) { set_self(n,os); };
  mu_1_msgType ( void ) {};

  virtual ~mu_1_msgType(); 
friend int CompareWeight(mu_1_msgType& a, mu_1_msgType& b)
  {
    int w;
    w = CompareWeight(a.mu_opcode, b.mu_opcode);
    if (w!=0) return w;
    w = CompareWeight(a.mu_para, b.mu_para);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_msgType& a, mu_1_msgType& b)
  {
    int w;
    w = Compare(a.mu_opcode, b.mu_opcode);
    if (w!=0) return w;
    w = Compare(a.mu_para, b.mu_para);
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
    mu_opcode.MultisetSort();
    mu_para.MultisetSort();
  }
  void print_statistic()
  {
    mu_opcode.print_statistic();
    mu_para.print_statistic();
  }
  void clear() {
    mu_opcode.clear();
    mu_para.clear();
 };
  void undefine() {
    mu_opcode.undefine();
    mu_para.undefine();
 };
  void reset() {
    mu_opcode.reset();
    mu_para.reset();
 };
  void print() {
    mu_opcode.print();
    mu_para.print();
  };
  void print_diff(state *prevstate) {
    mu_opcode.print_diff(prevstate);
    mu_para.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_opcode.to_state(thestate);
    mu_para.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_msgType& operator= (const mu_1_msgType& from) {
    mu_opcode.value(from.mu_opcode.value());
    mu_para.value(from.mu_para.value());
    return *this;
  };
};

  void mu_1_msgType::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_msgType::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_msgType::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_opcode.set_self_2(name, ".opcode", os + 0 ); else mu_opcode.set_self_2(NULL, NULL, 0);
  if (name) mu_para.set_self_2(name, ".para", os + 8 ); else mu_para.set_self_2(NULL, NULL, 0);
}

mu_1_msgType::~mu_1_msgType()
{
}

/*** end record declaration ***/
mu_1_msgType mu_1_msgType_undefined_var;

class mu_1_cacheType
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_stateType mu_state;
  mu_1_cacheType ( const char *n, int os ) { set_self(n,os); };
  mu_1_cacheType ( void ) {};

  virtual ~mu_1_cacheType(); 
friend int CompareWeight(mu_1_cacheType& a, mu_1_cacheType& b)
  {
    int w;
    w = CompareWeight(a.mu_state, b.mu_state);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_cacheType& a, mu_1_cacheType& b)
  {
    int w;
    w = Compare(a.mu_state, b.mu_state);
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
    mu_state.MultisetSort();
  }
  void print_statistic()
  {
    mu_state.print_statistic();
  }
  void clear() {
    mu_state.clear();
 };
  void undefine() {
    mu_state.undefine();
 };
  void reset() {
    mu_state.reset();
 };
  void print() {
    mu_state.print();
  };
  void print_diff(state *prevstate) {
    mu_state.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_state.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_cacheType& operator= (const mu_1_cacheType& from) {
    mu_state.value(from.mu_state.value());
    return *this;
  };
};

  void mu_1_cacheType::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_cacheType::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_cacheType::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_state.set_self_2(name, ".state", os + 0 ); else mu_state.set_self_2(NULL, NULL, 0);
}

mu_1_cacheType::~mu_1_cacheType()
{
}

/*** end record declaration ***/
mu_1_cacheType mu_1_cacheType_undefined_var;

class mu_1__type_0
{
 public:
  mu_1_nodeId array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_0 (const char *n, int os) { set_self(n, os); };
  mu_1__type_0 ( void ) {};
  virtual ~mu_1__type_0 ();
  mu_1_nodeId& operator[] (int index) /* const */
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
  mu_1_stateType array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_1 (const char *n, int os) { set_self(n, os); };
  mu_1__type_1 ( void ) {};
  virtual ~mu_1__type_1 ();
  mu_1_stateType& operator[] (int index) /* const */
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

class mu_1__type_2
{
 public:
  mu_1_opType array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_2 (const char *n, int os) { set_self(n, os); };
  mu_1__type_2 ( void ) {};
  virtual ~mu_1__type_2 ();
  mu_1_opType& operator[] (int index) /* const */
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
      array[i].value(from.array[i].value());
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
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
  mu_1_msgType array[ 5 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_3 (const char *n, int os) { set_self(n, os); };
  mu_1__type_3 ( void ) {};
  virtual ~mu_1__type_3 ();
  mu_1_msgType& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 5 ) )
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
    for (int i = 0; i < 5; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<5; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<5; i++) {
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
    for (int i=0; i<5; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<5; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 5; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 5; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 5; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 5; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 5; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 5; i++)
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
  for(int i = 0; i < 5; i++) {
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
  mu_1__type_3 array[ 2 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_4 (const char *n, int os) { set_self(n, os); };
  mu_1__type_4 ( void ) {};
  virtual ~mu_1__type_4 ();
  mu_1__type_3& operator[] (int index) /* const */
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
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 80 + os);
    delete[] s;
  }
};
mu_1__type_4::~mu_1__type_4()
{
}
/*** end array declaration ***/
mu_1__type_4 mu_1__type_4_undefined_var;

class mu_1_treeNode
{
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  void set_self(const char *n, int os);
  mu_1_cacheType mu_cache;
  mu_1_nodeId mu_father;
  mu_1__type_0 mu_sons;
  mu_1__type_1 mu_directory;
  mu_1__type_2 mu_slave_pending;
  mu_1_opType mu_master_pending;
  mu_1__type_4 mu_link;
  mu_1_treeNode ( const char *n, int os ) { set_self(n,os); };
  mu_1_treeNode ( void ) {};

  virtual ~mu_1_treeNode(); 
friend int CompareWeight(mu_1_treeNode& a, mu_1_treeNode& b)
  {
    int w;
    w = CompareWeight(a.mu_cache, b.mu_cache);
    if (w!=0) return w;
    w = CompareWeight(a.mu_father, b.mu_father);
    if (w!=0) return w;
    w = CompareWeight(a.mu_sons, b.mu_sons);
    if (w!=0) return w;
    w = CompareWeight(a.mu_directory, b.mu_directory);
    if (w!=0) return w;
    w = CompareWeight(a.mu_slave_pending, b.mu_slave_pending);
    if (w!=0) return w;
    w = CompareWeight(a.mu_master_pending, b.mu_master_pending);
    if (w!=0) return w;
    w = CompareWeight(a.mu_link, b.mu_link);
    if (w!=0) return w;
  return 0;
}
friend int Compare(mu_1_treeNode& a, mu_1_treeNode& b)
  {
    int w;
    w = Compare(a.mu_cache, b.mu_cache);
    if (w!=0) return w;
    w = Compare(a.mu_father, b.mu_father);
    if (w!=0) return w;
    w = Compare(a.mu_sons, b.mu_sons);
    if (w!=0) return w;
    w = Compare(a.mu_directory, b.mu_directory);
    if (w!=0) return w;
    w = Compare(a.mu_slave_pending, b.mu_slave_pending);
    if (w!=0) return w;
    w = Compare(a.mu_master_pending, b.mu_master_pending);
    if (w!=0) return w;
    w = Compare(a.mu_link, b.mu_link);
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
    mu_cache.MultisetSort();
    mu_father.MultisetSort();
    mu_sons.MultisetSort();
    mu_directory.MultisetSort();
    mu_slave_pending.MultisetSort();
    mu_master_pending.MultisetSort();
    mu_link.MultisetSort();
  }
  void print_statistic()
  {
    mu_cache.print_statistic();
    mu_father.print_statistic();
    mu_sons.print_statistic();
    mu_directory.print_statistic();
    mu_slave_pending.print_statistic();
    mu_master_pending.print_statistic();
    mu_link.print_statistic();
  }
  void clear() {
    mu_cache.clear();
    mu_father.clear();
    mu_sons.clear();
    mu_directory.clear();
    mu_slave_pending.clear();
    mu_master_pending.clear();
    mu_link.clear();
 };
  void undefine() {
    mu_cache.undefine();
    mu_father.undefine();
    mu_sons.undefine();
    mu_directory.undefine();
    mu_slave_pending.undefine();
    mu_master_pending.undefine();
    mu_link.undefine();
 };
  void reset() {
    mu_cache.reset();
    mu_father.reset();
    mu_sons.reset();
    mu_directory.reset();
    mu_slave_pending.reset();
    mu_master_pending.reset();
    mu_link.reset();
 };
  void print() {
    mu_cache.print();
    mu_father.print();
    mu_sons.print();
    mu_directory.print();
    mu_slave_pending.print();
    mu_master_pending.print();
    mu_link.print();
  };
  void print_diff(state *prevstate) {
    mu_cache.print_diff(prevstate);
    mu_father.print_diff(prevstate);
    mu_sons.print_diff(prevstate);
    mu_directory.print_diff(prevstate);
    mu_slave_pending.print_diff(prevstate);
    mu_master_pending.print_diff(prevstate);
    mu_link.print_diff(prevstate);
  };
  void to_state(state *thestate) {
    mu_cache.to_state(thestate);
    mu_father.to_state(thestate);
    mu_sons.to_state(thestate);
    mu_directory.to_state(thestate);
    mu_slave_pending.to_state(thestate);
    mu_master_pending.to_state(thestate);
    mu_link.to_state(thestate);
  };
virtual bool isundefined() { Error.Error("Checking undefinedness of a non-base type"); return TRUE;}
virtual bool ismember() { Error.Error("Checking membership for a non-base type"); return TRUE;}
  mu_1_treeNode& operator= (const mu_1_treeNode& from) {
    mu_cache = from.mu_cache;
    mu_father.value(from.mu_father.value());
    mu_sons = from.mu_sons;
    mu_directory = from.mu_directory;
    mu_slave_pending = from.mu_slave_pending;
    mu_master_pending.value(from.mu_master_pending.value());
    mu_link = from.mu_link;
    return *this;
  };
};

  void mu_1_treeNode::set_self_ar( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    int l1 = strlen(n1), l2 = strlen(n2);
    strcpy( longname, n1 );
    longname[l1] = '[';
    strcpy( longname+l1+1, n2 );
    longname[l1+l2+1] = ']';
    longname[l1+l2+2] = 0;
    set_self( longname, os );
  };
  void mu_1_treeNode::set_self_2( const char *n1, const char *n2, int os ) {
    if (n1 == NULL) {set_self(NULL, 0); return;}
    strcpy( longname, n1 );
    strcat( longname, n2 );
    set_self( longname, os );
  };
void mu_1_treeNode::set_self(const char *n, int os)
{
  name = (char *)n;

  if (name) mu_cache.set_self_2(name, ".cache", os + 0 ); else mu_cache.set_self_2(NULL, NULL, 0);
  if (name) mu_father.set_self_2(name, ".father", os + 8 ); else mu_father.set_self_2(NULL, NULL, 0);
  if (name) mu_sons.set_self_2(name, ".sons", os + 16 ); else mu_sons.set_self_2(NULL, NULL, 0);
  if (name) mu_directory.set_self_2(name, ".directory", os + 32 ); else mu_directory.set_self_2(NULL, NULL, 0);
  if (name) mu_slave_pending.set_self_2(name, ".slave_pending", os + 48 ); else mu_slave_pending.set_self_2(NULL, NULL, 0);
  if (name) mu_master_pending.set_self_2(name, ".master_pending", os + 64 ); else mu_master_pending.set_self_2(NULL, NULL, 0);
  if (name) mu_link.set_self_2(name, ".link", os + 72 ); else mu_link.set_self_2(NULL, NULL, 0);
}

mu_1_treeNode::~mu_1_treeNode()
{
}

/*** end record declaration ***/
mu_1_treeNode mu_1_treeNode_undefined_var;

class mu_1__type_5
{
 public:
  mu_1_treeNode array[ 3 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_5 (const char *n, int os) { set_self(n, os); };
  mu_1__type_5 ( void ) {};
  virtual ~mu_1__type_5 ();
  mu_1_treeNode& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 3 ) )
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
    for (int i = 0; i < 3; i++)
      array[i] = from.array[i];
    return *this;
  }

friend int CompareWeight(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<3; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<3; i++) {
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
    for (int i=0; i<3; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<3; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 3; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 3; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 3; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 3; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 3; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 3; i++)
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
  for(int i = 0; i < 3; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 232 + os);
    delete[] s;
  }
};
mu_1__type_5::~mu_1__type_5()
{
}
/*** end array declaration ***/
mu_1__type_5 mu_1__type_5_undefined_var;

const int mu_coreNum = 2;
const int mu_allNodeNum = 3;
const int mu_allBranchNum = 2;
const int mu_ChanNum = 5;
const int mu_None = 1;
const int mu_Trunk = 2;
const int mu_Branch = 3;
const int mu_Tip = 4;
const int mu_Empty = 5;
const int mu_AcquireBlock = 6;
const int mu_AcquirePerm = 7;
const int mu_ProbeBlock = 8;
const int mu_ProbePerm = 9;
const int mu_ProbeAck = 10;
const int mu_ProbeAckData = 11;
const int mu_Grant = 12;
const int mu_GrantData = 13;
const int mu_GrantAck = 14;
const int mu_Release = 15;
const int mu_ReleaseData = 16;
const int mu_ReleaseAck = 17;
const int mu_toN = 18;
const int mu_toB = 19;
const int mu_toT = 20;
const int mu_NtoB = 21;
const int mu_NtoT = 22;
const int mu_BtoT = 23;
const int mu_TtoB = 24;
const int mu_TtoN = 25;
const int mu_BtoN = 26;
const int mu_TtoT = 27;
const int mu_BtoB = 28;
const int mu_NtoN = 29;
const int mu_leaf = 30;
const int mu_branch = 31;
/*** Variable declaration ***/
mu_1__type_5 mu_Tree("Tree",0);





/********************
  The world
 ********************/
void world_class::clear()
{
  mu_Tree.clear();
}
void world_class::undefine()
{
  mu_Tree.undefine();
}
void world_class::reset()
{
  mu_Tree.reset();
}
void world_class::print()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Tree.print();
    num_calls--;
}
}
void world_class::print_statistic()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_Tree.print_statistic();
    num_calls--;
}
}
void world_class::print_diff( state *prevstate )
{
  if ( prevstate != NULL )
  {
    mu_Tree.print_diff(prevstate);
  }
  else
print();
}
void world_class::to_state(state *newstate)
{
  mu_Tree.to_state( newstate );
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("L3_receive_AcquireBlock, b:%s", mu_b.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr6;
  if (!((mu_Tree[1].mu_link[mu_b][1].mu_opcode) == (mu_AcquireBlock))) mu__boolexpr6 = FALSE ;
  else {
  mu__boolexpr6 = ((mu_Tree[1].mu_cache.mu_state) == (mu_None)) ; 
}
    return mu__boolexpr6;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 0;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 2 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr7;
  if (!((mu_Tree[1].mu_link[mu_b][1].mu_opcode) == (mu_AcquireBlock))) mu__boolexpr7 = FALSE ;
  else {
  mu__boolexpr7 = ((mu_Tree[1].mu_cache.mu_state) == (mu_None)) ; 
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
mu_Tree[1].mu_cache.mu_state = mu_Tip;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("L3_receive_AcquirePerm, b:%s", mu_b.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr8;
  if (!((mu_Tree[1].mu_link[mu_b][1].mu_opcode) == (mu_AcquirePerm))) mu__boolexpr8 = FALSE ;
  else {
  mu__boolexpr8 = ((mu_Tree[1].mu_cache.mu_state) == (mu_None)) ; 
}
    return mu__boolexpr8;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 2;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 4 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr9;
  if (!((mu_Tree[1].mu_link[mu_b][1].mu_opcode) == (mu_AcquirePerm))) mu__boolexpr9 = FALSE ;
  else {
  mu__boolexpr9 = ((mu_Tree[1].mu_cache.mu_state) == (mu_None)) ; 
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
mu_Tree[1].mu_cache.mu_state = mu_Tip;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("L3_send_release_3, b:%s", mu_b.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr10;
  if (!((mu_Tree[1].mu_cache.mu_state) == (mu_Tip))) mu__boolexpr10 = FALSE ;
  else {
bool mu__quant11; 
mu__quant11 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
if ( !((mu_Tree[1].mu_directory[mu_k]) == (mu_None)) )
  { mu__quant11 = FALSE; break; }
};
};
  mu__boolexpr10 = (mu__quant11) ; 
}
    return mu__boolexpr10;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 4;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 6 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr12;
  if (!((mu_Tree[1].mu_cache.mu_state) == (mu_Tip))) mu__boolexpr12 = FALSE ;
  else {
bool mu__quant13; 
mu__quant13 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
if ( !((mu_Tree[1].mu_directory[mu_k]) == (mu_None)) )
  { mu__quant13 = FALSE; break; }
};
};
  mu__boolexpr12 = (mu__quant13) ; 
}
	      if (mu__boolexpr12) {
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
    r = what_rule - 4;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
mu_Tree[1].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    return tsprintf("L3_send_release_2, b:%s", mu_b.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
bool mu__boolexpr14;
  if (!((mu_Tree[1].mu_cache.mu_state) == (mu_Tip))) mu__boolexpr14 = FALSE ;
  else {
bool mu__quant15; 
mu__quant15 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
if ( !((mu_Tree[1].mu_directory[mu_k]) == (mu_None)) )
  { mu__quant15 = FALSE; break; }
};
};
  mu__boolexpr14 = (mu__quant15) ; 
}
    return mu__boolexpr14;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 6;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    while (what_rule < 8 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr16;
  if (!((mu_Tree[1].mu_cache.mu_state) == (mu_Tip))) mu__boolexpr16 = FALSE ;
  else {
bool mu__quant17; 
mu__quant17 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
if ( !((mu_Tree[1].mu_directory[mu_k]) == (mu_None)) )
  { mu__quant17 = FALSE; break; }
};
};
  mu__boolexpr16 = (mu__quant17) ; 
}
	      if (mu__boolexpr16) {
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
    r = what_rule - 6;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
mu_Tree[1].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_send_Release_5, b1:%s, b2:%s, j:%s, i:%s", mu_b1.Name(), mu_b2.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr18;
bool mu__boolexpr19;
bool mu__boolexpr20;
  if ((mu_i) == (1)) mu__boolexpr20 = TRUE ;
  else {
  mu__boolexpr20 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr20)) mu__boolexpr19 = FALSE ;
  else {
  mu__boolexpr19 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr19)) mu__boolexpr18 = FALSE ;
  else {
bool mu__quant21; 
mu__quant21 = FALSE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( ((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_Tip)) )
  { mu__quant21 = TRUE; break; }
};
};
  mu__boolexpr18 = (mu__quant21) ; 
}
    return mu__boolexpr18;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 8;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 12 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr22;
bool mu__boolexpr23;
bool mu__boolexpr24;
  if ((mu_i) == (1)) mu__boolexpr24 = TRUE ;
  else {
  mu__boolexpr24 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr24)) mu__boolexpr23 = FALSE ;
  else {
  mu__boolexpr23 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr23)) mu__boolexpr22 = FALSE ;
  else {
bool mu__quant25; 
mu__quant25 = FALSE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( ((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_Tip)) )
  { mu__quant25 = TRUE; break; }
};
};
  mu__boolexpr22 = (mu__quant25) ; 
}
	      if (mu__boolexpr22) {
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
    r = what_rule - 8;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr26;
bool mu__boolexpr27;
bool mu__boolexpr28;
  if (!((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip))) mu__boolexpr28 = FALSE ;
  else {
  mu__boolexpr28 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr28)) mu__boolexpr27 = FALSE ;
  else {
  mu__boolexpr27 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr27)) mu__boolexpr26 = FALSE ;
  else {
  mu__boolexpr26 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( mu__boolexpr26 )
{
mu_msg.mu_opcode = mu_ProbeBlock;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_send_Release_4, b1:%s, b2:%s, j:%s, i:%s", mu_b1.Name(), mu_b2.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr29;
bool mu__boolexpr30;
bool mu__boolexpr31;
  if ((mu_i) == (1)) mu__boolexpr31 = TRUE ;
  else {
  mu__boolexpr31 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr31)) mu__boolexpr30 = FALSE ;
  else {
bool mu__boolexpr32;
  if ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) mu__boolexpr32 = TRUE ;
  else {
  mu__boolexpr32 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  mu__boolexpr30 = (mu__boolexpr32) ; 
}
  if (!(mu__boolexpr30)) mu__boolexpr29 = FALSE ;
  else {
bool mu__quant33; 
mu__quant33 = FALSE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( ((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_Branch)) )
  { mu__quant33 = TRUE; break; }
};
};
  mu__boolexpr29 = (mu__quant33) ; 
}
    return mu__boolexpr29;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 12;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 16 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr34;
bool mu__boolexpr35;
bool mu__boolexpr36;
  if ((mu_i) == (1)) mu__boolexpr36 = TRUE ;
  else {
  mu__boolexpr36 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr36)) mu__boolexpr35 = FALSE ;
  else {
bool mu__boolexpr37;
  if ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) mu__boolexpr37 = TRUE ;
  else {
  mu__boolexpr37 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  mu__boolexpr35 = (mu__boolexpr37) ; 
}
  if (!(mu__boolexpr35)) mu__boolexpr34 = FALSE ;
  else {
bool mu__quant38; 
mu__quant38 = FALSE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( ((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_Branch)) )
  { mu__quant38 = TRUE; break; }
};
};
  mu__boolexpr34 = (mu__quant38) ; 
}
	      if (mu__boolexpr34) {
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
    r = what_rule - 12;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr39;
bool mu__boolexpr40;
bool mu__boolexpr41;
  if (!((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch))) mu__boolexpr41 = FALSE ;
  else {
  mu__boolexpr41 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr41)) mu__boolexpr40 = FALSE ;
  else {
  mu__boolexpr40 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr40)) mu__boolexpr39 = FALSE ;
  else {
  mu__boolexpr39 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( mu__boolexpr39 )
{
mu_msg.mu_opcode = mu_ProbePerm;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_GrantAck, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return (mu_Tree[mu_i].mu_link[mu_b1][5].mu_opcode) == (mu_GrantAck);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 16;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 20 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_Tree[mu_i].mu_link[mu_b1][5].mu_opcode) == (mu_GrantAck)) {
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
    r = what_rule - 16;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][5].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_Release_2, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr42;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_Release))) mu__boolexpr42 = FALSE ;
  else {
bool mu__boolexpr43;
  if ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_BtoN)) mu__boolexpr43 = TRUE ;
  else {
  mu__boolexpr43 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_NtoN)) ; 
}
  mu__boolexpr42 = (mu__boolexpr43) ; 
}
    return mu__boolexpr42;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 20;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 24 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr44;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_Release))) mu__boolexpr44 = FALSE ;
  else {
bool mu__boolexpr45;
  if ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_BtoN)) mu__boolexpr45 = TRUE ;
  else {
  mu__boolexpr45 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_NtoN)) ; 
}
  mu__boolexpr44 = (mu__boolexpr45) ; 
}
	      if (mu__boolexpr44) {
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
    r = what_rule - 20;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_None;
mu_msg.mu_opcode = mu_ReleaseAck;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_Release_1, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr46;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_Release))) mu__boolexpr46 = FALSE ;
  else {
  mu__boolexpr46 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
    return mu__boolexpr46;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 24;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 28 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr47;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_Release))) mu__boolexpr47 = FALSE ;
  else {
  mu__boolexpr47 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
	      if (mu__boolexpr47) {
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
    r = what_rule - 24;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_None;
mu_msg.mu_opcode = mu_ReleaseAck;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_ProbeAckData_2, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr48;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAckData))) mu__boolexpr48 = FALSE ;
  else {
  mu__boolexpr48 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoB)) ; 
}
    return mu__boolexpr48;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 28;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 32 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr49;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAckData))) mu__boolexpr49 = FALSE ;
  else {
  mu__boolexpr49 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoB)) ; 
}
	      if (mu__boolexpr49) {
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
    r = what_rule - 28;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Branch;
mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_ProbeAckData_1, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr50;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAckData))) mu__boolexpr50 = FALSE ;
  else {
  mu__boolexpr50 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
    return mu__boolexpr50;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 32;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 36 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr51;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAckData))) mu__boolexpr51 = FALSE ;
  else {
  mu__boolexpr51 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
	      if (mu__boolexpr51) {
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
    r = what_rule - 32;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_None;
mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_ProbeAck_3, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr52;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr52 = FALSE ;
  else {
  mu__boolexpr52 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoB)) ; 
}
    return mu__boolexpr52;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 36;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 40 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr53;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr53 = FALSE ;
  else {
  mu__boolexpr53 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoB)) ; 
}
	      if (mu__boolexpr53) {
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
    r = what_rule - 36;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Branch;
mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_ProbeAck_2, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr54;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr54 = FALSE ;
  else {
  mu__boolexpr54 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
    return mu__boolexpr54;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 40;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 44 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr55;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr55 = FALSE ;
  else {
  mu__boolexpr55 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_TtoN)) ; 
}
	      if (mu__boolexpr55) {
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
    r = what_rule - 40;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_None;
mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_ProbeAck_1, j:%s, b2:%s, b1:%s, i:%s", mu_j.Name(), mu_b2.Name(), mu_b1.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr56;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr56 = FALSE ;
  else {
bool mu__boolexpr57;
  if ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_BtoN)) mu__boolexpr57 = TRUE ;
  else {
  mu__boolexpr57 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_NtoN)) ; 
}
  mu__boolexpr56 = (mu__boolexpr57) ; 
}
    return mu__boolexpr56;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 44;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 48 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr58;
  if (!((mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode) == (mu_ProbeAck))) mu__boolexpr58 = FALSE ;
  else {
bool mu__boolexpr59;
  if ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_BtoN)) mu__boolexpr59 = TRUE ;
  else {
  mu__boolexpr59 = ((mu_Tree[mu_i].mu_link[mu_b1][3].mu_para) == (mu_NtoN)) ; 
}
  mu__boolexpr58 = (mu__boolexpr59) ; 
}
	      if (mu__boolexpr58) {
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
    r = what_rule - 44;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
mu_Tree[mu_i].mu_link[mu_b1][3].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_None;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_Empty;
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquireBlock_8, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr60;
bool mu__boolexpr61;
bool mu__boolexpr62;
bool mu__boolexpr63;
bool mu__boolexpr64;
  if ((mu_i) == (1)) mu__boolexpr64 = TRUE ;
  else {
  mu__boolexpr64 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr64)) mu__boolexpr63 = FALSE ;
  else {
  mu__boolexpr63 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr63)) mu__boolexpr62 = FALSE ;
  else {
  mu__boolexpr62 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr62)) mu__boolexpr61 = FALSE ;
  else {
  mu__boolexpr61 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr61)) mu__boolexpr60 = FALSE ;
  else {
bool mu__quant65; 
mu__quant65 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr66;
bool mu__boolexpr67;
bool mu__boolexpr68;
bool mu__boolexpr69;
  if (!((mu_k) != (mu_b1))) mu__boolexpr69 = FALSE ;
  else {
  mu__boolexpr69 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr69)) mu__boolexpr68 = FALSE ;
  else {
  mu__boolexpr68 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr68)) mu__boolexpr67 = FALSE ;
  else {
  mu__boolexpr67 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr67)) mu__boolexpr66 = FALSE ;
  else {
  mu__boolexpr66 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr66) )
  { mu__quant65 = TRUE; break; }
};
};
  mu__boolexpr60 = (mu__quant65) ; 
}
    return mu__boolexpr60;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 48;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 52 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr70;
bool mu__boolexpr71;
bool mu__boolexpr72;
bool mu__boolexpr73;
bool mu__boolexpr74;
  if ((mu_i) == (1)) mu__boolexpr74 = TRUE ;
  else {
  mu__boolexpr74 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr74)) mu__boolexpr73 = FALSE ;
  else {
  mu__boolexpr73 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr73)) mu__boolexpr72 = FALSE ;
  else {
  mu__boolexpr72 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr72)) mu__boolexpr71 = FALSE ;
  else {
  mu__boolexpr71 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr71)) mu__boolexpr70 = FALSE ;
  else {
bool mu__quant75; 
mu__quant75 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr76;
bool mu__boolexpr77;
bool mu__boolexpr78;
bool mu__boolexpr79;
  if (!((mu_k) != (mu_b1))) mu__boolexpr79 = FALSE ;
  else {
  mu__boolexpr79 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr79)) mu__boolexpr78 = FALSE ;
  else {
  mu__boolexpr78 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr78)) mu__boolexpr77 = FALSE ;
  else {
  mu__boolexpr77 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr77)) mu__boolexpr76 = FALSE ;
  else {
  mu__boolexpr76 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr76) )
  { mu__quant75 = TRUE; break; }
};
};
  mu__boolexpr70 = (mu__quant75) ; 
}
	      if (mu__boolexpr70) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr80;
  if (!((mu_k) != (mu_b1))) mu__boolexpr80 = FALSE ;
  else {
  mu__boolexpr80 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
if ( mu__boolexpr80 )
{
mu_msg.mu_opcode = mu_ProbeBlock;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquireBlock_7, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr81;
bool mu__boolexpr82;
bool mu__boolexpr83;
bool mu__boolexpr84;
bool mu__boolexpr85;
  if ((mu_i) == (1)) mu__boolexpr85 = TRUE ;
  else {
  mu__boolexpr85 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr85)) mu__boolexpr84 = FALSE ;
  else {
  mu__boolexpr84 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr84)) mu__boolexpr83 = FALSE ;
  else {
  mu__boolexpr83 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr83)) mu__boolexpr82 = FALSE ;
  else {
  mu__boolexpr82 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr82)) mu__boolexpr81 = FALSE ;
  else {
bool mu__quant86; 
mu__quant86 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr87;
bool mu__boolexpr88;
bool mu__boolexpr89;
bool mu__boolexpr90;
  if (!((mu_k) != (mu_b1))) mu__boolexpr90 = FALSE ;
  else {
  mu__boolexpr90 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr90)) mu__boolexpr89 = FALSE ;
  else {
  mu__boolexpr89 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr89)) mu__boolexpr88 = FALSE ;
  else {
  mu__boolexpr88 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr88)) mu__boolexpr87 = FALSE ;
  else {
  mu__boolexpr87 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr87) )
  { mu__quant86 = TRUE; break; }
};
};
  mu__boolexpr81 = (mu__quant86) ; 
}
    return mu__boolexpr81;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 52;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 56 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr91;
bool mu__boolexpr92;
bool mu__boolexpr93;
bool mu__boolexpr94;
bool mu__boolexpr95;
  if ((mu_i) == (1)) mu__boolexpr95 = TRUE ;
  else {
  mu__boolexpr95 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr95)) mu__boolexpr94 = FALSE ;
  else {
  mu__boolexpr94 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr94)) mu__boolexpr93 = FALSE ;
  else {
  mu__boolexpr93 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr93)) mu__boolexpr92 = FALSE ;
  else {
  mu__boolexpr92 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr92)) mu__boolexpr91 = FALSE ;
  else {
bool mu__quant96; 
mu__quant96 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr97;
bool mu__boolexpr98;
bool mu__boolexpr99;
bool mu__boolexpr100;
  if (!((mu_k) != (mu_b1))) mu__boolexpr100 = FALSE ;
  else {
  mu__boolexpr100 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr100)) mu__boolexpr99 = FALSE ;
  else {
  mu__boolexpr99 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr99)) mu__boolexpr98 = FALSE ;
  else {
  mu__boolexpr98 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr98)) mu__boolexpr97 = FALSE ;
  else {
  mu__boolexpr97 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr97) )
  { mu__quant96 = TRUE; break; }
};
};
  mu__boolexpr91 = (mu__quant96) ; 
}
	      if (mu__boolexpr91) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr101;
bool mu__boolexpr102;
bool mu__boolexpr103;
bool mu__boolexpr104;
  if (!((mu_k) != (mu_b1))) mu__boolexpr104 = FALSE ;
  else {
  mu__boolexpr104 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr104)) mu__boolexpr103 = FALSE ;
  else {
  mu__boolexpr103 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr103)) mu__boolexpr102 = FALSE ;
  else {
  mu__boolexpr102 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr102)) mu__boolexpr101 = FALSE ;
  else {
  mu__boolexpr101 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( mu__boolexpr101 )
{
mu_msg.mu_opcode = mu_ProbePerm;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquireBlock_6, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr105;
bool mu__boolexpr106;
bool mu__boolexpr107;
bool mu__boolexpr108;
bool mu__boolexpr109;
bool mu__boolexpr110;
  if ((mu_i) == (1)) mu__boolexpr110 = TRUE ;
  else {
  mu__boolexpr110 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr110)) mu__boolexpr109 = FALSE ;
  else {
  mu__boolexpr109 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr109)) mu__boolexpr108 = FALSE ;
  else {
  mu__boolexpr108 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr108)) mu__boolexpr107 = FALSE ;
  else {
  mu__boolexpr107 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr107)) mu__boolexpr106 = FALSE ;
  else {
bool mu__quant111; 
mu__quant111 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr112;
bool mu__boolexpr113;
  if (!((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None))) mu__boolexpr113 = FALSE ;
  else {
  mu__boolexpr113 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr113)) mu__boolexpr112 = FALSE ;
  else {
  mu__boolexpr112 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr112) )
  { mu__quant111 = FALSE; break; }
};
};
  mu__boolexpr106 = (mu__quant111) ; 
}
  if (!(mu__boolexpr106)) mu__boolexpr105 = FALSE ;
  else {
  mu__boolexpr105 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
    return mu__boolexpr105;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 56;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 60 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr114;
bool mu__boolexpr115;
bool mu__boolexpr116;
bool mu__boolexpr117;
bool mu__boolexpr118;
bool mu__boolexpr119;
  if ((mu_i) == (1)) mu__boolexpr119 = TRUE ;
  else {
  mu__boolexpr119 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr119)) mu__boolexpr118 = FALSE ;
  else {
  mu__boolexpr118 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr118)) mu__boolexpr117 = FALSE ;
  else {
  mu__boolexpr117 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoT)) ; 
}
  if (!(mu__boolexpr117)) mu__boolexpr116 = FALSE ;
  else {
  mu__boolexpr116 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr116)) mu__boolexpr115 = FALSE ;
  else {
bool mu__quant120; 
mu__quant120 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr121;
bool mu__boolexpr122;
  if (!((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None))) mu__boolexpr122 = FALSE ;
  else {
  mu__boolexpr122 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr122)) mu__boolexpr121 = FALSE ;
  else {
  mu__boolexpr121 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr121) )
  { mu__quant120 = FALSE; break; }
};
};
  mu__boolexpr115 = (mu__quant120) ; 
}
  if (!(mu__boolexpr115)) mu__boolexpr114 = FALSE ;
  else {
  mu__boolexpr114 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
	      if (mu__boolexpr114) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode = mu_Empty;
mu_msg.mu_opcode = mu_GrantData;
mu_msg.mu_para = mu_toT;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_GrantAck;
mu_Tree[mu_i].mu_cache.mu_state = mu_Trunk;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Tip;
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquireBlock_3, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr123;
bool mu__boolexpr124;
bool mu__boolexpr125;
bool mu__boolexpr126;
bool mu__boolexpr127;
  if ((mu_i) == (1)) mu__boolexpr127 = TRUE ;
  else {
  mu__boolexpr127 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr127)) mu__boolexpr126 = FALSE ;
  else {
  mu__boolexpr126 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr126)) mu__boolexpr125 = FALSE ;
  else {
  mu__boolexpr125 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoB)) ; 
}
  if (!(mu__boolexpr125)) mu__boolexpr124 = FALSE ;
  else {
  mu__boolexpr124 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr124)) mu__boolexpr123 = FALSE ;
  else {
bool mu__quant128; 
mu__quant128 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr129;
bool mu__boolexpr130;
bool mu__boolexpr131;
bool mu__boolexpr132;
  if (!((mu_k) != (mu_b1))) mu__boolexpr132 = FALSE ;
  else {
  mu__boolexpr132 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr132)) mu__boolexpr131 = FALSE ;
  else {
  mu__boolexpr131 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr131)) mu__boolexpr130 = FALSE ;
  else {
  mu__boolexpr130 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr130)) mu__boolexpr129 = FALSE ;
  else {
  mu__boolexpr129 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr129) )
  { mu__quant128 = TRUE; break; }
};
};
  mu__boolexpr123 = (mu__quant128) ; 
}
    return mu__boolexpr123;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 60;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 64 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr133;
bool mu__boolexpr134;
bool mu__boolexpr135;
bool mu__boolexpr136;
bool mu__boolexpr137;
  if ((mu_i) == (1)) mu__boolexpr137 = TRUE ;
  else {
  mu__boolexpr137 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr137)) mu__boolexpr136 = FALSE ;
  else {
  mu__boolexpr136 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr136)) mu__boolexpr135 = FALSE ;
  else {
  mu__boolexpr135 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoB)) ; 
}
  if (!(mu__boolexpr135)) mu__boolexpr134 = FALSE ;
  else {
  mu__boolexpr134 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
  if (!(mu__boolexpr134)) mu__boolexpr133 = FALSE ;
  else {
bool mu__quant138; 
mu__quant138 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr139;
bool mu__boolexpr140;
bool mu__boolexpr141;
bool mu__boolexpr142;
  if (!((mu_k) != (mu_b1))) mu__boolexpr142 = FALSE ;
  else {
  mu__boolexpr142 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr142)) mu__boolexpr141 = FALSE ;
  else {
  mu__boolexpr141 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr141)) mu__boolexpr140 = FALSE ;
  else {
  mu__boolexpr140 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr140)) mu__boolexpr139 = FALSE ;
  else {
  mu__boolexpr139 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr139) )
  { mu__quant138 = TRUE; break; }
};
};
  mu__boolexpr133 = (mu__quant138) ; 
}
	      if (mu__boolexpr133) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr143;
  if (!((mu_k) != (mu_b1))) mu__boolexpr143 = FALSE ;
  else {
  mu__boolexpr143 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip)) ; 
}
if ( mu__boolexpr143 )
{
mu_msg.mu_opcode = mu_ProbeBlock;
mu_msg.mu_para = mu_toB;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquireBlock_2, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr144;
bool mu__boolexpr145;
bool mu__boolexpr146;
bool mu__boolexpr147;
bool mu__boolexpr148;
bool mu__boolexpr149;
bool mu__boolexpr150;
  if ((mu_i) == (1)) mu__boolexpr150 = TRUE ;
  else {
  mu__boolexpr150 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr150)) mu__boolexpr149 = FALSE ;
  else {
  mu__boolexpr149 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr149)) mu__boolexpr148 = FALSE ;
  else {
  mu__boolexpr148 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoB)) ; 
}
  if (!(mu__boolexpr148)) mu__boolexpr147 = FALSE ;
  else {
bool mu__boolexpr151;
  if ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) mu__boolexpr151 = TRUE ;
  else {
  mu__boolexpr151 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  mu__boolexpr147 = (mu__boolexpr151) ; 
}
  if (!(mu__boolexpr147)) mu__boolexpr146 = FALSE ;
  else {
  mu__boolexpr146 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr146)) mu__boolexpr145 = FALSE ;
  else {
  mu__boolexpr145 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr145)) mu__boolexpr144 = FALSE ;
  else {
  mu__boolexpr144 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_ProbeAckData)) ; 
}
    return mu__boolexpr144;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 64;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 68 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr152;
bool mu__boolexpr153;
bool mu__boolexpr154;
bool mu__boolexpr155;
bool mu__boolexpr156;
bool mu__boolexpr157;
bool mu__boolexpr158;
  if ((mu_i) == (1)) mu__boolexpr158 = TRUE ;
  else {
  mu__boolexpr158 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr158)) mu__boolexpr157 = FALSE ;
  else {
  mu__boolexpr157 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquireBlock)) ; 
}
  if (!(mu__boolexpr157)) mu__boolexpr156 = FALSE ;
  else {
  mu__boolexpr156 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_para) == (mu_NtoB)) ; 
}
  if (!(mu__boolexpr156)) mu__boolexpr155 = FALSE ;
  else {
bool mu__boolexpr159;
  if ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) mu__boolexpr159 = TRUE ;
  else {
  mu__boolexpr159 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  mu__boolexpr155 = (mu__boolexpr159) ; 
}
  if (!(mu__boolexpr155)) mu__boolexpr154 = FALSE ;
  else {
  mu__boolexpr154 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr154)) mu__boolexpr153 = FALSE ;
  else {
  mu__boolexpr153 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr153)) mu__boolexpr152 = FALSE ;
  else {
  mu__boolexpr152 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_ProbeAckData)) ; 
}
	      if (mu__boolexpr152) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode = mu_Empty;
mu_msg.mu_opcode = mu_GrantData;
mu_msg.mu_para = mu_toB;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_GrantAck;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Branch;
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquirePerm_6, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr160;
bool mu__boolexpr161;
bool mu__boolexpr162;
  if ((mu_i) == (1)) mu__boolexpr162 = TRUE ;
  else {
  mu__boolexpr162 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr162)) mu__boolexpr161 = FALSE ;
  else {
  mu__boolexpr161 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr161)) mu__boolexpr160 = FALSE ;
  else {
  mu__boolexpr160 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
    return mu__boolexpr160;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 68;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 72 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr163;
bool mu__boolexpr164;
bool mu__boolexpr165;
  if ((mu_i) == (1)) mu__boolexpr165 = TRUE ;
  else {
  mu__boolexpr165 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr165)) mu__boolexpr164 = FALSE ;
  else {
  mu__boolexpr164 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr164)) mu__boolexpr163 = FALSE ;
  else {
  mu__boolexpr163 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk)) ; 
}
	      if (mu__boolexpr163) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr166;
bool mu__boolexpr167;
bool mu__boolexpr168;
  if (!((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Tip))) mu__boolexpr168 = FALSE ;
  else {
  mu__boolexpr168 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr168)) mu__boolexpr167 = FALSE ;
  else {
  mu__boolexpr167 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr167)) mu__boolexpr166 = FALSE ;
  else {
  mu__boolexpr166 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( mu__boolexpr166 )
{
mu_msg.mu_opcode = mu_ProbeBlock;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquirePerm_3, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr169;
bool mu__boolexpr170;
bool mu__boolexpr171;
bool mu__boolexpr172;
  if ((mu_i) == (1)) mu__boolexpr172 = TRUE ;
  else {
  mu__boolexpr172 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr172)) mu__boolexpr171 = FALSE ;
  else {
  mu__boolexpr171 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr171)) mu__boolexpr170 = FALSE ;
  else {
  mu__boolexpr170 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr170)) mu__boolexpr169 = FALSE ;
  else {
bool mu__quant173; 
mu__quant173 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr174;
bool mu__boolexpr175;
bool mu__boolexpr176;
bool mu__boolexpr177;
  if (!((mu_k) != (mu_b1))) mu__boolexpr177 = FALSE ;
  else {
  mu__boolexpr177 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr177)) mu__boolexpr176 = FALSE ;
  else {
  mu__boolexpr176 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr176)) mu__boolexpr175 = FALSE ;
  else {
  mu__boolexpr175 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr175)) mu__boolexpr174 = FALSE ;
  else {
  mu__boolexpr174 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr174) )
  { mu__quant173 = TRUE; break; }
};
};
  mu__boolexpr169 = (mu__quant173) ; 
}
    return mu__boolexpr169;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 72;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 76 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr178;
bool mu__boolexpr179;
bool mu__boolexpr180;
bool mu__boolexpr181;
  if ((mu_i) == (1)) mu__boolexpr181 = TRUE ;
  else {
  mu__boolexpr181 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr181)) mu__boolexpr180 = FALSE ;
  else {
  mu__boolexpr180 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr180)) mu__boolexpr179 = FALSE ;
  else {
  mu__boolexpr179 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr179)) mu__boolexpr178 = FALSE ;
  else {
bool mu__quant182; 
mu__quant182 = FALSE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr183;
bool mu__boolexpr184;
bool mu__boolexpr185;
bool mu__boolexpr186;
  if (!((mu_k) != (mu_b1))) mu__boolexpr186 = FALSE ;
  else {
  mu__boolexpr186 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr186)) mu__boolexpr185 = FALSE ;
  else {
  mu__boolexpr185 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr185)) mu__boolexpr184 = FALSE ;
  else {
  mu__boolexpr184 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr184)) mu__boolexpr183 = FALSE ;
  else {
  mu__boolexpr183 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( (mu__boolexpr183) )
  { mu__quant182 = TRUE; break; }
};
};
  mu__boolexpr178 = (mu__quant182) ; 
}
	      if (mu__boolexpr178) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr187;
bool mu__boolexpr188;
bool mu__boolexpr189;
bool mu__boolexpr190;
  if (!((mu_k) != (mu_b1))) mu__boolexpr190 = FALSE ;
  else {
  mu__boolexpr190 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr190)) mu__boolexpr189 = FALSE ;
  else {
  mu__boolexpr189 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr189)) mu__boolexpr188 = FALSE ;
  else {
  mu__boolexpr188 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
  if (!(mu__boolexpr188)) mu__boolexpr187 = FALSE ;
  else {
  mu__boolexpr187 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_GrantAck)) ; 
}
if ( mu__boolexpr187 )
{
mu_msg.mu_opcode = mu_ProbePerm;
mu_msg.mu_para = mu_toN;
mu_Tree[mu_i].mu_link[mu_k][2] = mu_msg;
mu_Tree[mu_i].mu_slave_pending[mu_k] = mu_ProbeAck;
}
};
};
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquirePerm_2, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr191;
bool mu__boolexpr192;
bool mu__boolexpr193;
bool mu__boolexpr194;
bool mu__boolexpr195;
bool mu__boolexpr196;
  if ((mu_i) == (1)) mu__boolexpr196 = TRUE ;
  else {
  mu__boolexpr196 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr196)) mu__boolexpr195 = FALSE ;
  else {
  mu__boolexpr195 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr195)) mu__boolexpr194 = FALSE ;
  else {
  mu__boolexpr194 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr194)) mu__boolexpr193 = FALSE ;
  else {
bool mu__quant197; 
mu__quant197 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr198;
bool mu__boolexpr199;
bool mu__boolexpr200;
  if (!((mu_k) != (mu_b1))) mu__boolexpr200 = TRUE ;
  else {
  mu__boolexpr200 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None)) ; 
}
  if (!(mu__boolexpr200)) mu__boolexpr199 = FALSE ;
  else {
  mu__boolexpr199 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr199)) mu__boolexpr198 = FALSE ;
  else {
  mu__boolexpr198 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr198) )
  { mu__quant197 = FALSE; break; }
};
};
  mu__boolexpr193 = (mu__quant197) ; 
}
  if (!(mu__boolexpr193)) mu__boolexpr192 = FALSE ;
  else {
  mu__boolexpr192 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr192)) mu__boolexpr191 = FALSE ;
  else {
  mu__boolexpr191 = ((mu_Tree[mu_i].mu_directory[mu_b1]) == (mu_None)) ; 
}
    return mu__boolexpr191;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 76;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 80 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr201;
bool mu__boolexpr202;
bool mu__boolexpr203;
bool mu__boolexpr204;
bool mu__boolexpr205;
bool mu__boolexpr206;
  if ((mu_i) == (1)) mu__boolexpr206 = TRUE ;
  else {
  mu__boolexpr206 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr206)) mu__boolexpr205 = FALSE ;
  else {
  mu__boolexpr205 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr205)) mu__boolexpr204 = FALSE ;
  else {
  mu__boolexpr204 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr204)) mu__boolexpr203 = FALSE ;
  else {
bool mu__quant207; 
mu__quant207 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr208;
bool mu__boolexpr209;
bool mu__boolexpr210;
  if (!((mu_k) != (mu_b1))) mu__boolexpr210 = TRUE ;
  else {
  mu__boolexpr210 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None)) ; 
}
  if (!(mu__boolexpr210)) mu__boolexpr209 = FALSE ;
  else {
  mu__boolexpr209 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr209)) mu__boolexpr208 = FALSE ;
  else {
  mu__boolexpr208 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr208) )
  { mu__quant207 = FALSE; break; }
};
};
  mu__boolexpr203 = (mu__quant207) ; 
}
  if (!(mu__boolexpr203)) mu__boolexpr202 = FALSE ;
  else {
  mu__boolexpr202 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr202)) mu__boolexpr201 = FALSE ;
  else {
  mu__boolexpr201 = ((mu_Tree[mu_i].mu_directory[mu_b1]) == (mu_None)) ; 
}
	      if (mu__boolexpr201) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode = mu_Empty;
mu_msg.mu_opcode = mu_GrantData;
mu_msg.mu_para = mu_toT;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Tip;
mu_Tree[mu_i].mu_cache.mu_state = mu_Trunk;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_GrantAck;
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
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    return tsprintf("Ln_receive_AcquirePerm_1, b2:%s, b1:%s, j:%s, i:%s", mu_b2.Name(), mu_b1.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
bool mu__boolexpr211;
bool mu__boolexpr212;
bool mu__boolexpr213;
bool mu__boolexpr214;
bool mu__boolexpr215;
bool mu__boolexpr216;
  if ((mu_i) == (1)) mu__boolexpr216 = TRUE ;
  else {
  mu__boolexpr216 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr216)) mu__boolexpr215 = FALSE ;
  else {
  mu__boolexpr215 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr215)) mu__boolexpr214 = FALSE ;
  else {
  mu__boolexpr214 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr214)) mu__boolexpr213 = FALSE ;
  else {
bool mu__quant217; 
mu__quant217 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr218;
bool mu__boolexpr219;
bool mu__boolexpr220;
  if (!((mu_k) != (mu_b1))) mu__boolexpr220 = TRUE ;
  else {
  mu__boolexpr220 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None)) ; 
}
  if (!(mu__boolexpr220)) mu__boolexpr219 = FALSE ;
  else {
  mu__boolexpr219 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr219)) mu__boolexpr218 = FALSE ;
  else {
  mu__boolexpr218 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr218) )
  { mu__quant217 = FALSE; break; }
};
};
  mu__boolexpr213 = (mu__quant217) ; 
}
  if (!(mu__boolexpr213)) mu__boolexpr212 = FALSE ;
  else {
  mu__boolexpr212 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr212)) mu__boolexpr211 = FALSE ;
  else {
  mu__boolexpr211 = ((mu_Tree[mu_i].mu_directory[mu_b1]) == (mu_Branch)) ; 
}
    return mu__boolexpr211;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 80;
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    while (what_rule < 84 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr221;
bool mu__boolexpr222;
bool mu__boolexpr223;
bool mu__boolexpr224;
bool mu__boolexpr225;
bool mu__boolexpr226;
  if ((mu_i) == (1)) mu__boolexpr226 = TRUE ;
  else {
  mu__boolexpr226 = ((mu_Tree[mu_j].mu_sons[mu_b2]) == (mu_i)) ; 
}
  if (!(mu__boolexpr226)) mu__boolexpr225 = FALSE ;
  else {
  mu__boolexpr225 = ((mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode) == (mu_AcquirePerm)) ; 
}
  if (!(mu__boolexpr225)) mu__boolexpr224 = FALSE ;
  else {
  mu__boolexpr224 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr224)) mu__boolexpr223 = FALSE ;
  else {
bool mu__quant227; 
mu__quant227 = TRUE;
{
for(int mu_k = 1; mu_k <= 2; mu_k++) {
bool mu__boolexpr228;
bool mu__boolexpr229;
bool mu__boolexpr230;
  if (!((mu_k) != (mu_b1))) mu__boolexpr230 = TRUE ;
  else {
  mu__boolexpr230 = ((mu_Tree[mu_i].mu_directory[mu_k]) == (mu_None)) ; 
}
  if (!(mu__boolexpr230)) mu__boolexpr229 = FALSE ;
  else {
  mu__boolexpr229 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAck)) ; 
}
  if (!(mu__boolexpr229)) mu__boolexpr228 = FALSE ;
  else {
  mu__boolexpr228 = ((mu_Tree[mu_i].mu_slave_pending[mu_k]) != (mu_ProbeAckData)) ; 
}
if ( !(mu__boolexpr228) )
  { mu__quant227 = FALSE; break; }
};
};
  mu__boolexpr223 = (mu__quant227) ; 
}
  if (!(mu__boolexpr223)) mu__boolexpr222 = FALSE ;
  else {
  mu__boolexpr222 = ((mu_Tree[mu_i].mu_slave_pending[mu_b1]) != (mu_GrantAck)) ; 
}
  if (!(mu__boolexpr222)) mu__boolexpr221 = FALSE ;
  else {
  mu__boolexpr221 = ((mu_Tree[mu_i].mu_directory[mu_b1]) == (mu_Branch)) ; 
}
	      if (mu__boolexpr221) {
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
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 1) + 1);
    r = r / 1;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b2;
    mu_b2.value((r % 2) + 1);
    r = r / 2;
    static mu_1_branchType mu_b1;
    mu_b1.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_cacheId mu_i;
    mu_i.value((r % 1) + 1);
    r = r / 1;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_link[mu_b1][1].mu_opcode = mu_Empty;
mu_msg.mu_opcode = mu_Grant;
mu_msg.mu_para = mu_toT;
mu_Tree[mu_i].mu_link[mu_b1][4] = mu_msg;
mu_Tree[mu_i].mu_directory[mu_b1] = mu_Tip;
mu_Tree[mu_i].mu_cache.mu_state = mu_Trunk;
mu_Tree[mu_i].mu_slave_pending[mu_b1] = mu_GrantAck;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("receive_ReleaseAck, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr231;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr231 = FALSE ;
  else {
  mu__boolexpr231 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_ReleaseAck)) ; 
}
    return mu__boolexpr231;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 84;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 88 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr232;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr232 = FALSE ;
  else {
  mu__boolexpr232 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_ReleaseAck)) ; 
}
	      if (mu__boolexpr232) {
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
    r = what_rule - 84;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
mu_Tree[mu_i].mu_master_pending = mu_Empty;
mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode = mu_Empty;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_ProbeBlock_toB_2, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr233;
bool mu__boolexpr234;
bool mu__boolexpr235;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr235 = FALSE ;
  else {
  mu__boolexpr235 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr235)) mu__boolexpr234 = FALSE ;
  else {
  mu__boolexpr234 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr234)) mu__boolexpr233 = FALSE ;
  else {
  mu__boolexpr233 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
    return mu__boolexpr233;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 88;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 92 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr236;
bool mu__boolexpr237;
bool mu__boolexpr238;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr238 = FALSE ;
  else {
  mu__boolexpr238 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr238)) mu__boolexpr237 = FALSE ;
  else {
  mu__boolexpr237 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr237)) mu__boolexpr236 = FALSE ;
  else {
  mu__boolexpr236 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
	      if (mu__boolexpr236) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_para = mu_TtoB;
mu_msg.mu_opcode = mu_ProbeAck;
mu_Tree[mu_i].mu_cache.mu_state = mu_Branch;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_ProbeBlock_toB_1, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr239;
bool mu__boolexpr240;
bool mu__boolexpr241;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr241 = FALSE ;
  else {
  mu__boolexpr241 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr241)) mu__boolexpr240 = FALSE ;
  else {
  mu__boolexpr240 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr240)) mu__boolexpr239 = FALSE ;
  else {
  mu__boolexpr239 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
    return mu__boolexpr239;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 92;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 96 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr242;
bool mu__boolexpr243;
bool mu__boolexpr244;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr244 = FALSE ;
  else {
  mu__boolexpr244 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr244)) mu__boolexpr243 = FALSE ;
  else {
  mu__boolexpr243 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr243)) mu__boolexpr242 = FALSE ;
  else {
  mu__boolexpr242 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
	      if (mu__boolexpr242) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_para = mu_TtoB;
mu_msg.mu_opcode = mu_ProbeAckData;
mu_Tree[mu_i].mu_cache.mu_state = mu_Branch;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_ProbeBlock_TtoN_2, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr245;
bool mu__boolexpr246;
bool mu__boolexpr247;
bool mu__boolexpr248;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr248 = FALSE ;
  else {
  mu__boolexpr248 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr248)) mu__boolexpr247 = FALSE ;
  else {
  mu__boolexpr247 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr247)) mu__boolexpr246 = FALSE ;
  else {
  mu__boolexpr246 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr246)) mu__boolexpr245 = FALSE ;
  else {
  mu__boolexpr245 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
    return mu__boolexpr245;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 96;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 100 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr249;
bool mu__boolexpr250;
bool mu__boolexpr251;
bool mu__boolexpr252;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr252 = FALSE ;
  else {
  mu__boolexpr252 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr252)) mu__boolexpr251 = FALSE ;
  else {
  mu__boolexpr251 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr251)) mu__boolexpr250 = FALSE ;
  else {
  mu__boolexpr250 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr250)) mu__boolexpr249 = FALSE ;
  else {
  mu__boolexpr249 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
	      if (mu__boolexpr249) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_ProbeAck;
mu_msg.mu_para = mu_TtoN;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_ProbeBlock_TtoN_1, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr253;
bool mu__boolexpr254;
bool mu__boolexpr255;
bool mu__boolexpr256;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr256 = FALSE ;
  else {
  mu__boolexpr256 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr256)) mu__boolexpr255 = FALSE ;
  else {
  mu__boolexpr255 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr255)) mu__boolexpr254 = FALSE ;
  else {
  mu__boolexpr254 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr254)) mu__boolexpr253 = FALSE ;
  else {
  mu__boolexpr253 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
    return mu__boolexpr253;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 100;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 104 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr257;
bool mu__boolexpr258;
bool mu__boolexpr259;
bool mu__boolexpr260;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr260 = FALSE ;
  else {
  mu__boolexpr260 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr260)) mu__boolexpr259 = FALSE ;
  else {
  mu__boolexpr259 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  if (!(mu__boolexpr259)) mu__boolexpr258 = FALSE ;
  else {
  mu__boolexpr258 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr258)) mu__boolexpr257 = FALSE ;
  else {
  mu__boolexpr257 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
	      if (mu__boolexpr257) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_para = mu_TtoN;
mu_msg.mu_opcode = mu_ProbeAckData;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_ProbePerm_BtoN, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr261;
bool mu__boolexpr262;
bool mu__boolexpr263;
bool mu__boolexpr264;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr264 = FALSE ;
  else {
  mu__boolexpr264 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr264)) mu__boolexpr263 = FALSE ;
  else {
  mu__boolexpr263 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbePerm)) ; 
}
  if (!(mu__boolexpr263)) mu__boolexpr262 = FALSE ;
  else {
  mu__boolexpr262 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr262)) mu__boolexpr261 = FALSE ;
  else {
  mu__boolexpr261 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
    return mu__boolexpr261;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 104;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 108 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr265;
bool mu__boolexpr266;
bool mu__boolexpr267;
bool mu__boolexpr268;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr268 = FALSE ;
  else {
  mu__boolexpr268 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr268)) mu__boolexpr267 = FALSE ;
  else {
  mu__boolexpr267 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbePerm)) ; 
}
  if (!(mu__boolexpr267)) mu__boolexpr266 = FALSE ;
  else {
  mu__boolexpr266 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) ; 
}
  if (!(mu__boolexpr266)) mu__boolexpr265 = FALSE ;
  else {
  mu__boolexpr265 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
	      if (mu__boolexpr265) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_ProbeAck;
mu_msg.mu_para = mu_BtoN;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_Probe_NtoN, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr269;
bool mu__boolexpr270;
bool mu__boolexpr271;
bool mu__boolexpr272;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr272 = FALSE ;
  else {
  mu__boolexpr272 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr272)) mu__boolexpr271 = FALSE ;
  else {
bool mu__boolexpr273;
  if ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbePerm)) mu__boolexpr273 = TRUE ;
  else {
  mu__boolexpr273 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  mu__boolexpr271 = (mu__boolexpr273) ; 
}
  if (!(mu__boolexpr271)) mu__boolexpr270 = FALSE ;
  else {
bool mu__boolexpr274;
  if ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) mu__boolexpr274 = TRUE ;
  else {
  mu__boolexpr274 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toB)) ; 
}
  mu__boolexpr270 = (mu__boolexpr274) ; 
}
  if (!(mu__boolexpr270)) mu__boolexpr269 = FALSE ;
  else {
  mu__boolexpr269 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
    return mu__boolexpr269;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 108;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 112 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr275;
bool mu__boolexpr276;
bool mu__boolexpr277;
bool mu__boolexpr278;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr278 = FALSE ;
  else {
  mu__boolexpr278 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
  if (!(mu__boolexpr278)) mu__boolexpr277 = FALSE ;
  else {
bool mu__boolexpr279;
  if ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbePerm)) mu__boolexpr279 = TRUE ;
  else {
  mu__boolexpr279 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode) == (mu_ProbeBlock)) ; 
}
  mu__boolexpr277 = (mu__boolexpr279) ; 
}
  if (!(mu__boolexpr277)) mu__boolexpr276 = FALSE ;
  else {
bool mu__boolexpr280;
  if ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toN)) mu__boolexpr280 = TRUE ;
  else {
  mu__boolexpr280 = ((mu_Tree[mu_j].mu_link[mu_b][2].mu_para) == (mu_toB)) ; 
}
  mu__boolexpr276 = (mu__boolexpr280) ; 
}
  if (!(mu__boolexpr276)) mu__boolexpr275 = FALSE ;
  else {
  mu__boolexpr275 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
	      if (mu__boolexpr275) {
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
    r = what_rule - 108;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_ProbeAck;
mu_msg.mu_para = mu_NtoN;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_j].mu_link[mu_b][2].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_GrantData_toT, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr281;
bool mu__boolexpr282;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr282 = FALSE ;
  else {
  mu__boolexpr282 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_GrantData)) ; 
}
  if (!(mu__boolexpr282)) mu__boolexpr281 = FALSE ;
  else {
  mu__boolexpr281 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toT)) ; 
}
    return mu__boolexpr281;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 112;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 116 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr283;
bool mu__boolexpr284;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr284 = FALSE ;
  else {
  mu__boolexpr284 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_GrantData)) ; 
}
  if (!(mu__boolexpr284)) mu__boolexpr283 = FALSE ;
  else {
  mu__boolexpr283 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toT)) ; 
}
	      if (mu__boolexpr283) {
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
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_master_pending = mu_Empty;
mu_msg.mu_opcode = mu_GrantAck;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_j].mu_link[mu_b][5] = mu_msg;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_GrantData_toB, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr285;
bool mu__boolexpr286;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr286 = FALSE ;
  else {
  mu__boolexpr286 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_GrantData)) ; 
}
  if (!(mu__boolexpr286)) mu__boolexpr285 = FALSE ;
  else {
  mu__boolexpr285 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toB)) ; 
}
    return mu__boolexpr285;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 116;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 120 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr287;
bool mu__boolexpr288;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr288 = FALSE ;
  else {
  mu__boolexpr288 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_GrantData)) ; 
}
  if (!(mu__boolexpr288)) mu__boolexpr287 = FALSE ;
  else {
  mu__boolexpr287 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toB)) ; 
}
	      if (mu__boolexpr287) {
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
    r = what_rule - 116;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_cache.mu_state = mu_Branch;
mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_master_pending = mu_Empty;
mu_msg.mu_opcode = mu_GrantAck;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_j].mu_link[mu_b][5] = mu_msg;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("respond_Grant_toT, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr289;
bool mu__boolexpr290;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr290 = FALSE ;
  else {
  mu__boolexpr290 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_Grant)) ; 
}
  if (!(mu__boolexpr290)) mu__boolexpr289 = FALSE ;
  else {
  mu__boolexpr289 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toT)) ; 
}
    return mu__boolexpr289;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 120;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 124 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr291;
bool mu__boolexpr292;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr292 = FALSE ;
  else {
  mu__boolexpr292 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode) == (mu_Grant)) ; 
}
  if (!(mu__boolexpr292)) mu__boolexpr291 = FALSE ;
  else {
  mu__boolexpr291 = ((mu_Tree[mu_j].mu_link[mu_b][4].mu_para) == (mu_toT)) ; 
}
	      if (mu__boolexpr291) {
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
    r = what_rule - 120;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_Tree[mu_i].mu_cache.mu_state = mu_Tip;
mu_Tree[mu_j].mu_link[mu_b][4].mu_opcode = mu_Empty;
mu_Tree[mu_i].mu_master_pending = mu_Empty;
mu_msg.mu_opcode = mu_GrantAck;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_j].mu_link[mu_b][5] = mu_msg;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("send_Release_TtoN_1, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr293;
bool mu__boolexpr294;
bool mu__boolexpr295;
bool mu__boolexpr296;
bool mu__boolexpr297;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr297 = FALSE ;
  else {
  mu__boolexpr297 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr297)) mu__boolexpr296 = FALSE ;
  else {
  mu__boolexpr296 = ((mu_Tree[mu_j].mu_link[mu_b][3].mu_opcode) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr296)) mu__boolexpr295 = FALSE ;
  else {
  mu__boolexpr295 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr295)) mu__boolexpr294 = FALSE ;
  else {
  mu__boolexpr294 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr294)) mu__boolexpr293 = FALSE ;
  else {
  mu__boolexpr293 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
    return mu__boolexpr293;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 124;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 128 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr298;
bool mu__boolexpr299;
bool mu__boolexpr300;
bool mu__boolexpr301;
bool mu__boolexpr302;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr302 = FALSE ;
  else {
  mu__boolexpr302 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Tip)) ; 
}
  if (!(mu__boolexpr302)) mu__boolexpr301 = FALSE ;
  else {
  mu__boolexpr301 = ((mu_Tree[mu_j].mu_link[mu_b][3].mu_opcode) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr301)) mu__boolexpr300 = FALSE ;
  else {
  mu__boolexpr300 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr300)) mu__boolexpr299 = FALSE ;
  else {
  mu__boolexpr299 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr299)) mu__boolexpr298 = FALSE ;
  else {
  mu__boolexpr298 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
	      if (mu__boolexpr298) {
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
    r = what_rule - 124;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_para = mu_TtoN;
mu_msg.mu_opcode = mu_Release;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_i].mu_master_pending = mu_ReleaseAck;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("send_Release_BtoN, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr303;
bool mu__boolexpr304;
bool mu__boolexpr305;
bool mu__boolexpr306;
bool mu__boolexpr307;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr307 = FALSE ;
  else {
  mu__boolexpr307 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr307)) mu__boolexpr306 = FALSE ;
  else {
  mu__boolexpr306 = ((mu_Tree[mu_j].mu_link[mu_b][3].mu_opcode) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr306)) mu__boolexpr305 = FALSE ;
  else {
  mu__boolexpr305 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr305)) mu__boolexpr304 = FALSE ;
  else {
  mu__boolexpr304 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr304)) mu__boolexpr303 = FALSE ;
  else {
  mu__boolexpr303 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
    return mu__boolexpr303;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 128;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 132 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr308;
bool mu__boolexpr309;
bool mu__boolexpr310;
bool mu__boolexpr311;
bool mu__boolexpr312;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr312 = FALSE ;
  else {
  mu__boolexpr312 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr312)) mu__boolexpr311 = FALSE ;
  else {
  mu__boolexpr311 = ((mu_Tree[mu_j].mu_link[mu_b][3].mu_opcode) == (mu_Empty)) ; 
}
  if (!(mu__boolexpr311)) mu__boolexpr310 = FALSE ;
  else {
  mu__boolexpr310 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr310)) mu__boolexpr309 = FALSE ;
  else {
  mu__boolexpr309 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr309)) mu__boolexpr308 = FALSE ;
  else {
  mu__boolexpr308 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
	      if (mu__boolexpr308) {
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
    r = what_rule - 128;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_Release;
mu_msg.mu_para = mu_BtoN;
mu_Tree[mu_j].mu_link[mu_b][3] = mu_msg;
mu_Tree[mu_i].mu_master_pending = mu_ReleaseAck;
mu_Tree[mu_i].mu_cache.mu_state = mu_None;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("send_AcquireBlock_toT, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr313;
bool mu__boolexpr314;
bool mu__boolexpr315;
bool mu__boolexpr316;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr316 = FALSE ;
  else {
  mu__boolexpr316 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
  if (!(mu__boolexpr316)) mu__boolexpr315 = FALSE ;
  else {
  mu__boolexpr315 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr315)) mu__boolexpr314 = FALSE ;
  else {
  mu__boolexpr314 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr314)) mu__boolexpr313 = FALSE ;
  else {
  mu__boolexpr313 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
    return mu__boolexpr313;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 132;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 136 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr317;
bool mu__boolexpr318;
bool mu__boolexpr319;
bool mu__boolexpr320;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr320 = FALSE ;
  else {
  mu__boolexpr320 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
  if (!(mu__boolexpr320)) mu__boolexpr319 = FALSE ;
  else {
  mu__boolexpr319 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr319)) mu__boolexpr318 = FALSE ;
  else {
  mu__boolexpr318 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr318)) mu__boolexpr317 = FALSE ;
  else {
  mu__boolexpr317 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
	      if (mu__boolexpr317) {
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
    r = what_rule - 132;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_AcquireBlock;
mu_msg.mu_para = mu_NtoT;
mu_Tree[mu_j].mu_link[mu_b][1] = mu_msg;
mu_Tree[mu_i].mu_master_pending = mu_GrantData;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("send_AcquirePerm_toT, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr321;
bool mu__boolexpr322;
bool mu__boolexpr323;
bool mu__boolexpr324;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr324 = FALSE ;
  else {
  mu__boolexpr324 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr324)) mu__boolexpr323 = FALSE ;
  else {
  mu__boolexpr323 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr323)) mu__boolexpr322 = FALSE ;
  else {
  mu__boolexpr322 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr322)) mu__boolexpr321 = FALSE ;
  else {
  mu__boolexpr321 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
    return mu__boolexpr321;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 136;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 140 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr325;
bool mu__boolexpr326;
bool mu__boolexpr327;
bool mu__boolexpr328;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr328 = FALSE ;
  else {
  mu__boolexpr328 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch)) ; 
}
  if (!(mu__boolexpr328)) mu__boolexpr327 = FALSE ;
  else {
  mu__boolexpr327 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr327)) mu__boolexpr326 = FALSE ;
  else {
  mu__boolexpr326 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr326)) mu__boolexpr325 = FALSE ;
  else {
  mu__boolexpr325 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
	      if (mu__boolexpr325) {
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
    r = what_rule - 136;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_AcquirePerm;
mu_msg.mu_para = mu_BtoT;
mu_Tree[mu_j].mu_link[mu_b][1] = mu_msg;
mu_Tree[mu_i].mu_master_pending = mu_Grant;
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
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    return tsprintf("send_AcquireBlock_toB, b:%s, j:%s, i:%s", mu_b.Name(), mu_j.Name(), mu_i.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
bool mu__boolexpr329;
bool mu__boolexpr330;
bool mu__boolexpr331;
bool mu__boolexpr332;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr332 = FALSE ;
  else {
  mu__boolexpr332 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
  if (!(mu__boolexpr332)) mu__boolexpr331 = FALSE ;
  else {
  mu__boolexpr331 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr331)) mu__boolexpr330 = FALSE ;
  else {
  mu__boolexpr330 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr330)) mu__boolexpr329 = FALSE ;
  else {
  mu__boolexpr329 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
}
    return mu__boolexpr329;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 140;
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    while (what_rule < 144 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr333;
bool mu__boolexpr334;
bool mu__boolexpr335;
bool mu__boolexpr336;
  if (!((mu_Tree[mu_j].mu_sons[mu_b]) == (mu_i))) mu__boolexpr336 = FALSE ;
  else {
  mu__boolexpr336 = ((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None)) ; 
}
  if (!(mu__boolexpr336)) mu__boolexpr335 = FALSE ;
  else {
  mu__boolexpr335 = ((mu_Tree[mu_i].mu_master_pending) != (mu_GrantData)) ; 
}
  if (!(mu__boolexpr335)) mu__boolexpr334 = FALSE ;
  else {
  mu__boolexpr334 = ((mu_Tree[mu_i].mu_master_pending) != (mu_Grant)) ; 
}
  if (!(mu__boolexpr334)) mu__boolexpr333 = FALSE ;
  else {
  mu__boolexpr333 = ((mu_Tree[mu_i].mu_master_pending) != (mu_ReleaseAck)) ; 
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
    r = what_rule - 140;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    mu_i.value((r % 2) + 2);
    r = r / 2;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_branchType mu_b;
    mu_b.value((r % 2) + 1);
    r = r / 2;
    static mu_1_cacheId mu_j;
    mu_j.value((r % 1) + 1);
    r = r / 1;
    static mu_1_coreId mu_i;
    mu_i.value((r % 2) + 2);
    r = r / 2;
/*** Variable declaration ***/
mu_1_msgType mu_msg("msg",0);

mu_msg.mu_opcode = mu_AcquireBlock;
mu_msg.mu_para = mu_NtoB;
mu_Tree[mu_j].mu_link[mu_b][1] = mu_msg;
mu_Tree[mu_i].mu_master_pending = mu_GrantData;
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
  if (what_rule>=8 && what_rule<12)
    { R4.NextRule(what_rule);
      if (what_rule<12) return; }
  if (what_rule>=12 && what_rule<16)
    { R5.NextRule(what_rule);
      if (what_rule<16) return; }
  if (what_rule>=16 && what_rule<20)
    { R6.NextRule(what_rule);
      if (what_rule<20) return; }
  if (what_rule>=20 && what_rule<24)
    { R7.NextRule(what_rule);
      if (what_rule<24) return; }
  if (what_rule>=24 && what_rule<28)
    { R8.NextRule(what_rule);
      if (what_rule<28) return; }
  if (what_rule>=28 && what_rule<32)
    { R9.NextRule(what_rule);
      if (what_rule<32) return; }
  if (what_rule>=32 && what_rule<36)
    { R10.NextRule(what_rule);
      if (what_rule<36) return; }
  if (what_rule>=36 && what_rule<40)
    { R11.NextRule(what_rule);
      if (what_rule<40) return; }
  if (what_rule>=40 && what_rule<44)
    { R12.NextRule(what_rule);
      if (what_rule<44) return; }
  if (what_rule>=44 && what_rule<48)
    { R13.NextRule(what_rule);
      if (what_rule<48) return; }
  if (what_rule>=48 && what_rule<52)
    { R14.NextRule(what_rule);
      if (what_rule<52) return; }
  if (what_rule>=52 && what_rule<56)
    { R15.NextRule(what_rule);
      if (what_rule<56) return; }
  if (what_rule>=56 && what_rule<60)
    { R16.NextRule(what_rule);
      if (what_rule<60) return; }
  if (what_rule>=60 && what_rule<64)
    { R17.NextRule(what_rule);
      if (what_rule<64) return; }
  if (what_rule>=64 && what_rule<68)
    { R18.NextRule(what_rule);
      if (what_rule<68) return; }
  if (what_rule>=68 && what_rule<72)
    { R19.NextRule(what_rule);
      if (what_rule<72) return; }
  if (what_rule>=72 && what_rule<76)
    { R20.NextRule(what_rule);
      if (what_rule<76) return; }
  if (what_rule>=76 && what_rule<80)
    { R21.NextRule(what_rule);
      if (what_rule<80) return; }
  if (what_rule>=80 && what_rule<84)
    { R22.NextRule(what_rule);
      if (what_rule<84) return; }
  if (what_rule>=84 && what_rule<88)
    { R23.NextRule(what_rule);
      if (what_rule<88) return; }
  if (what_rule>=88 && what_rule<92)
    { R24.NextRule(what_rule);
      if (what_rule<92) return; }
  if (what_rule>=92 && what_rule<96)
    { R25.NextRule(what_rule);
      if (what_rule<96) return; }
  if (what_rule>=96 && what_rule<100)
    { R26.NextRule(what_rule);
      if (what_rule<100) return; }
  if (what_rule>=100 && what_rule<104)
    { R27.NextRule(what_rule);
      if (what_rule<104) return; }
  if (what_rule>=104 && what_rule<108)
    { R28.NextRule(what_rule);
      if (what_rule<108) return; }
  if (what_rule>=108 && what_rule<112)
    { R29.NextRule(what_rule);
      if (what_rule<112) return; }
  if (what_rule>=112 && what_rule<116)
    { R30.NextRule(what_rule);
      if (what_rule<116) return; }
  if (what_rule>=116 && what_rule<120)
    { R31.NextRule(what_rule);
      if (what_rule<120) return; }
  if (what_rule>=120 && what_rule<124)
    { R32.NextRule(what_rule);
      if (what_rule<124) return; }
  if (what_rule>=124 && what_rule<128)
    { R33.NextRule(what_rule);
      if (what_rule<128) return; }
  if (what_rule>=128 && what_rule<132)
    { R34.NextRule(what_rule);
      if (what_rule<132) return; }
  if (what_rule>=132 && what_rule<136)
    { R35.NextRule(what_rule);
      if (what_rule<136) return; }
  if (what_rule>=136 && what_rule<140)
    { R36.NextRule(what_rule);
      if (what_rule<140) return; }
  if (what_rule>=140 && what_rule<144)
    { R37.NextRule(what_rule);
      if (what_rule<144) return; }
}
bool Condition(unsigned r)
{
  category = CONDITION;
  if (r<=1) return R0.Condition(r-0);
  if (r>=2 && r<=3) return R1.Condition(r-2);
  if (r>=4 && r<=5) return R2.Condition(r-4);
  if (r>=6 && r<=7) return R3.Condition(r-6);
  if (r>=8 && r<=11) return R4.Condition(r-8);
  if (r>=12 && r<=15) return R5.Condition(r-12);
  if (r>=16 && r<=19) return R6.Condition(r-16);
  if (r>=20 && r<=23) return R7.Condition(r-20);
  if (r>=24 && r<=27) return R8.Condition(r-24);
  if (r>=28 && r<=31) return R9.Condition(r-28);
  if (r>=32 && r<=35) return R10.Condition(r-32);
  if (r>=36 && r<=39) return R11.Condition(r-36);
  if (r>=40 && r<=43) return R12.Condition(r-40);
  if (r>=44 && r<=47) return R13.Condition(r-44);
  if (r>=48 && r<=51) return R14.Condition(r-48);
  if (r>=52 && r<=55) return R15.Condition(r-52);
  if (r>=56 && r<=59) return R16.Condition(r-56);
  if (r>=60 && r<=63) return R17.Condition(r-60);
  if (r>=64 && r<=67) return R18.Condition(r-64);
  if (r>=68 && r<=71) return R19.Condition(r-68);
  if (r>=72 && r<=75) return R20.Condition(r-72);
  if (r>=76 && r<=79) return R21.Condition(r-76);
  if (r>=80 && r<=83) return R22.Condition(r-80);
  if (r>=84 && r<=87) return R23.Condition(r-84);
  if (r>=88 && r<=91) return R24.Condition(r-88);
  if (r>=92 && r<=95) return R25.Condition(r-92);
  if (r>=96 && r<=99) return R26.Condition(r-96);
  if (r>=100 && r<=103) return R27.Condition(r-100);
  if (r>=104 && r<=107) return R28.Condition(r-104);
  if (r>=108 && r<=111) return R29.Condition(r-108);
  if (r>=112 && r<=115) return R30.Condition(r-112);
  if (r>=116 && r<=119) return R31.Condition(r-116);
  if (r>=120 && r<=123) return R32.Condition(r-120);
  if (r>=124 && r<=127) return R33.Condition(r-124);
  if (r>=128 && r<=131) return R34.Condition(r-128);
  if (r>=132 && r<=135) return R35.Condition(r-132);
  if (r>=136 && r<=139) return R36.Condition(r-136);
  if (r>=140 && r<=143) return R37.Condition(r-140);
Error.Notrace("Internal: NextStateGenerator -- checking condition for nonexisting rule.");
return 0;}
void Code(unsigned r)
{
  if (r<=1) { R0.Code(r-0); return; } 
  if (r>=2 && r<=3) { R1.Code(r-2); return; } 
  if (r>=4 && r<=5) { R2.Code(r-4); return; } 
  if (r>=6 && r<=7) { R3.Code(r-6); return; } 
  if (r>=8 && r<=11) { R4.Code(r-8); return; } 
  if (r>=12 && r<=15) { R5.Code(r-12); return; } 
  if (r>=16 && r<=19) { R6.Code(r-16); return; } 
  if (r>=20 && r<=23) { R7.Code(r-20); return; } 
  if (r>=24 && r<=27) { R8.Code(r-24); return; } 
  if (r>=28 && r<=31) { R9.Code(r-28); return; } 
  if (r>=32 && r<=35) { R10.Code(r-32); return; } 
  if (r>=36 && r<=39) { R11.Code(r-36); return; } 
  if (r>=40 && r<=43) { R12.Code(r-40); return; } 
  if (r>=44 && r<=47) { R13.Code(r-44); return; } 
  if (r>=48 && r<=51) { R14.Code(r-48); return; } 
  if (r>=52 && r<=55) { R15.Code(r-52); return; } 
  if (r>=56 && r<=59) { R16.Code(r-56); return; } 
  if (r>=60 && r<=63) { R17.Code(r-60); return; } 
  if (r>=64 && r<=67) { R18.Code(r-64); return; } 
  if (r>=68 && r<=71) { R19.Code(r-68); return; } 
  if (r>=72 && r<=75) { R20.Code(r-72); return; } 
  if (r>=76 && r<=79) { R21.Code(r-76); return; } 
  if (r>=80 && r<=83) { R22.Code(r-80); return; } 
  if (r>=84 && r<=87) { R23.Code(r-84); return; } 
  if (r>=88 && r<=91) { R24.Code(r-88); return; } 
  if (r>=92 && r<=95) { R25.Code(r-92); return; } 
  if (r>=96 && r<=99) { R26.Code(r-96); return; } 
  if (r>=100 && r<=103) { R27.Code(r-100); return; } 
  if (r>=104 && r<=107) { R28.Code(r-104); return; } 
  if (r>=108 && r<=111) { R29.Code(r-108); return; } 
  if (r>=112 && r<=115) { R30.Code(r-112); return; } 
  if (r>=116 && r<=119) { R31.Code(r-116); return; } 
  if (r>=120 && r<=123) { R32.Code(r-120); return; } 
  if (r>=124 && r<=127) { R33.Code(r-124); return; } 
  if (r>=128 && r<=131) { R34.Code(r-128); return; } 
  if (r>=132 && r<=135) { R35.Code(r-132); return; } 
  if (r>=136 && r<=139) { R36.Code(r-136); return; } 
  if (r>=140 && r<=143) { R37.Code(r-140); return; } 
}
int Priority(unsigned short r)
{
  if (r<=1) { return R0.Priority(); } 
  if (r>=2 && r<=3) { return R1.Priority(); } 
  if (r>=4 && r<=5) { return R2.Priority(); } 
  if (r>=6 && r<=7) { return R3.Priority(); } 
  if (r>=8 && r<=11) { return R4.Priority(); } 
  if (r>=12 && r<=15) { return R5.Priority(); } 
  if (r>=16 && r<=19) { return R6.Priority(); } 
  if (r>=20 && r<=23) { return R7.Priority(); } 
  if (r>=24 && r<=27) { return R8.Priority(); } 
  if (r>=28 && r<=31) { return R9.Priority(); } 
  if (r>=32 && r<=35) { return R10.Priority(); } 
  if (r>=36 && r<=39) { return R11.Priority(); } 
  if (r>=40 && r<=43) { return R12.Priority(); } 
  if (r>=44 && r<=47) { return R13.Priority(); } 
  if (r>=48 && r<=51) { return R14.Priority(); } 
  if (r>=52 && r<=55) { return R15.Priority(); } 
  if (r>=56 && r<=59) { return R16.Priority(); } 
  if (r>=60 && r<=63) { return R17.Priority(); } 
  if (r>=64 && r<=67) { return R18.Priority(); } 
  if (r>=68 && r<=71) { return R19.Priority(); } 
  if (r>=72 && r<=75) { return R20.Priority(); } 
  if (r>=76 && r<=79) { return R21.Priority(); } 
  if (r>=80 && r<=83) { return R22.Priority(); } 
  if (r>=84 && r<=87) { return R23.Priority(); } 
  if (r>=88 && r<=91) { return R24.Priority(); } 
  if (r>=92 && r<=95) { return R25.Priority(); } 
  if (r>=96 && r<=99) { return R26.Priority(); } 
  if (r>=100 && r<=103) { return R27.Priority(); } 
  if (r>=104 && r<=107) { return R28.Priority(); } 
  if (r>=108 && r<=111) { return R29.Priority(); } 
  if (r>=112 && r<=115) { return R30.Priority(); } 
  if (r>=116 && r<=119) { return R31.Priority(); } 
  if (r>=120 && r<=123) { return R32.Priority(); } 
  if (r>=124 && r<=127) { return R33.Priority(); } 
  if (r>=128 && r<=131) { return R34.Priority(); } 
  if (r>=132 && r<=135) { return R35.Priority(); } 
  if (r>=136 && r<=139) { return R36.Priority(); } 
  if (r>=140 && r<=143) { return R37.Priority(); } 
return 0;}
char * Name(unsigned r)
{
  if (r<=1) return R0.Name(r-0);
  if (r>=2 && r<=3) return R1.Name(r-2);
  if (r>=4 && r<=5) return R2.Name(r-4);
  if (r>=6 && r<=7) return R3.Name(r-6);
  if (r>=8 && r<=11) return R4.Name(r-8);
  if (r>=12 && r<=15) return R5.Name(r-12);
  if (r>=16 && r<=19) return R6.Name(r-16);
  if (r>=20 && r<=23) return R7.Name(r-20);
  if (r>=24 && r<=27) return R8.Name(r-24);
  if (r>=28 && r<=31) return R9.Name(r-28);
  if (r>=32 && r<=35) return R10.Name(r-32);
  if (r>=36 && r<=39) return R11.Name(r-36);
  if (r>=40 && r<=43) return R12.Name(r-40);
  if (r>=44 && r<=47) return R13.Name(r-44);
  if (r>=48 && r<=51) return R14.Name(r-48);
  if (r>=52 && r<=55) return R15.Name(r-52);
  if (r>=56 && r<=59) return R16.Name(r-56);
  if (r>=60 && r<=63) return R17.Name(r-60);
  if (r>=64 && r<=67) return R18.Name(r-64);
  if (r>=68 && r<=71) return R19.Name(r-68);
  if (r>=72 && r<=75) return R20.Name(r-72);
  if (r>=76 && r<=79) return R21.Name(r-76);
  if (r>=80 && r<=83) return R22.Name(r-80);
  if (r>=84 && r<=87) return R23.Name(r-84);
  if (r>=88 && r<=91) return R24.Name(r-88);
  if (r>=92 && r<=95) return R25.Name(r-92);
  if (r>=96 && r<=99) return R26.Name(r-96);
  if (r>=100 && r<=103) return R27.Name(r-100);
  if (r>=104 && r<=107) return R28.Name(r-104);
  if (r>=108 && r<=111) return R29.Name(r-108);
  if (r>=112 && r<=115) return R30.Name(r-112);
  if (r>=116 && r<=119) return R31.Name(r-116);
  if (r>=120 && r<=123) return R32.Name(r-120);
  if (r>=124 && r<=127) return R33.Name(r-124);
  if (r>=128 && r<=131) return R34.Name(r-128);
  if (r>=132 && r<=135) return R35.Name(r-132);
  if (r>=136 && r<=139) return R36.Name(r-136);
  if (r>=140 && r<=143) return R37.Name(r-140);
  return NULL;
}
};
const unsigned numrules = 144;

/********************
  parameter
 ********************/
#define RULES_IN_WORLD 144


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
mu_Tree[1].mu_father = 1;
mu_Tree[2].mu_father = 1;
mu_Tree[1].mu_sons[1] = 2;
mu_Tree[3].mu_father = 1;
mu_Tree[1].mu_sons[2] = 3;
{
for(int mu_cur = 1; mu_cur <= 1; mu_cur++) {
{
for(int mu_i = 1; mu_i <= 2; mu_i++) {
{
for(int mu_c = 1; mu_c <= 5; mu_c++) {
mu_Tree[mu_cur].mu_link[mu_i][mu_c].mu_opcode = mu_Empty;
};
};
mu_Tree[mu_cur].mu_cache.mu_state = mu_None;
mu_Tree[mu_cur].mu_master_pending = mu_Empty;
mu_Tree[mu_cur].mu_slave_pending[mu_i] = mu_Empty;
mu_Tree[mu_cur].mu_directory[mu_i] = mu_None;
};
};
};
};
{
for(int mu_cur = 2; mu_cur <= 3; mu_cur++) {
mu_Tree[mu_cur].mu_cache.mu_state = mu_None;
mu_Tree[mu_cur].mu_master_pending = mu_Empty;
};
};
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
int mu__invariant_337() // Invariant "trunk_have_t_child_r"
{
bool mu__quant338; 
mu__quant338 = TRUE;
{
for(int mu_i = 1; mu_i <= 1; mu_i++) {
bool mu__boolexpr339;
  if (!((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk))) mu__boolexpr339 = TRUE ;
  else {
bool mu__quant340; 
mu__quant340 = FALSE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( ((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_Tip)) )
  { mu__quant340 = TRUE; break; }
};
};
  mu__boolexpr339 = (mu__quant340) ; 
}
if ( !(mu__boolexpr339) )
  { mu__quant338 = FALSE; break; }
};
};
return mu__quant338;
};

bool mu__condition_341() // Condition for Rule "trunk_have_t_child_r"
{
  return mu__invariant_337( );
}

/**** end rule declaration ****/

int mu__invariant_342() // Invariant "branch_not_have_t_child_r"
{
bool mu__quant343; 
mu__quant343 = TRUE;
{
for(int mu_i = 1; mu_i <= 1; mu_i++) {
bool mu__boolexpr344;
  if (!((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Branch))) mu__boolexpr344 = TRUE ;
  else {
bool mu__quant345; 
mu__quant345 = TRUE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( !((mu_Tree[mu_i].mu_directory[mu_b]) != (mu_Tip)) )
  { mu__quant345 = FALSE; break; }
};
};
  mu__boolexpr344 = (mu__quant345) ; 
}
if ( !(mu__boolexpr344) )
  { mu__quant343 = FALSE; break; }
};
};
return mu__quant343;
};

bool mu__condition_346() // Condition for Rule "branch_not_have_t_child_r"
{
  return mu__invariant_342( );
}

/**** end rule declaration ****/

int mu__invariant_347() // Invariant "trunk_not_have_branch_child_r"
{
bool mu__quant348; 
mu__quant348 = TRUE;
{
for(int mu_i = 1; mu_i <= 1; mu_i++) {
bool mu__boolexpr349;
  if (!((mu_Tree[mu_i].mu_cache.mu_state) == (mu_Trunk))) mu__boolexpr349 = TRUE ;
  else {
bool mu__quant350; 
mu__quant350 = TRUE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( !((mu_Tree[mu_i].mu_directory[mu_b]) != (mu_Branch)) )
  { mu__quant350 = FALSE; break; }
};
};
  mu__boolexpr349 = (mu__quant350) ; 
}
if ( !(mu__boolexpr349) )
  { mu__quant348 = FALSE; break; }
};
};
return mu__quant348;
};

bool mu__condition_351() // Condition for Rule "trunk_not_have_branch_child_r"
{
  return mu__invariant_347( );
}

/**** end rule declaration ****/

int mu__invariant_352() // Invariant "invalid_not_have_valid_child_r"
{
bool mu__quant353; 
mu__quant353 = TRUE;
{
for(int mu_i = 1; mu_i <= 1; mu_i++) {
bool mu__boolexpr354;
  if (!((mu_Tree[mu_i].mu_cache.mu_state) == (mu_None))) mu__boolexpr354 = TRUE ;
  else {
bool mu__quant355; 
mu__quant355 = TRUE;
{
for(int mu_b = 1; mu_b <= 2; mu_b++) {
if ( !((mu_Tree[mu_i].mu_directory[mu_b]) == (mu_None)) )
  { mu__quant355 = FALSE; break; }
};
};
  mu__boolexpr354 = (mu__quant355) ; 
}
if ( !(mu__boolexpr354) )
  { mu__quant353 = FALSE; break; }
};
};
return mu__quant353;
};

bool mu__condition_356() // Condition for Rule "invalid_not_have_valid_child_r"
{
  return mu__invariant_352( );
}

/**** end rule declaration ****/

const rulerec invariants[] = {
{"invalid_not_have_valid_child_r", &mu__condition_356, NULL, },
{"trunk_not_have_branch_child_r", &mu__condition_351, NULL, },
{"branch_not_have_t_child_r", &mu__condition_346, NULL, },
{"trunk_have_t_child_r", &mu__condition_341, NULL, },
};
const unsigned short numinvariants = 4;

/********************
  Normal/Canonicalization for scalarset
 ********************/
/*
Tree:NoScalarset
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
        mu_Tree.MultisetSort();
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
void mu_1_chanType::Permute(PermSet& Perm, int i) {};
void mu_1_chanType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_chanType::Canonicalize(PermSet& Perm) {};
void mu_1_chanType::SimpleLimit(PermSet& Perm) {};
void mu_1_chanType::ArrayLimit(PermSet& Perm) {};
void mu_1_chanType::Limit(PermSet& Perm) {};
void mu_1_chanType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_coreId::Permute(PermSet& Perm, int i) {};
void mu_1_coreId::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_coreId::Canonicalize(PermSet& Perm) {};
void mu_1_coreId::SimpleLimit(PermSet& Perm) {};
void mu_1_coreId::ArrayLimit(PermSet& Perm) {};
void mu_1_coreId::Limit(PermSet& Perm) {};
void mu_1_coreId::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_l2Id::Permute(PermSet& Perm, int i) {};
void mu_1_l2Id::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_l2Id::Canonicalize(PermSet& Perm) {};
void mu_1_l2Id::SimpleLimit(PermSet& Perm) {};
void mu_1_l2Id::ArrayLimit(PermSet& Perm) {};
void mu_1_l2Id::Limit(PermSet& Perm) {};
void mu_1_l2Id::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_cacheId::Permute(PermSet& Perm, int i) {};
void mu_1_cacheId::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_cacheId::Canonicalize(PermSet& Perm) {};
void mu_1_cacheId::SimpleLimit(PermSet& Perm) {};
void mu_1_cacheId::ArrayLimit(PermSet& Perm) {};
void mu_1_cacheId::Limit(PermSet& Perm) {};
void mu_1_cacheId::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_nodeId::Permute(PermSet& Perm, int i) {};
void mu_1_nodeId::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_nodeId::Canonicalize(PermSet& Perm) {};
void mu_1_nodeId::SimpleLimit(PermSet& Perm) {};
void mu_1_nodeId::ArrayLimit(PermSet& Perm) {};
void mu_1_nodeId::Limit(PermSet& Perm) {};
void mu_1_nodeId::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_branchType::Permute(PermSet& Perm, int i) {};
void mu_1_branchType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_branchType::Canonicalize(PermSet& Perm) {};
void mu_1_branchType::SimpleLimit(PermSet& Perm) {};
void mu_1_branchType::ArrayLimit(PermSet& Perm) {};
void mu_1_branchType::Limit(PermSet& Perm) {};
void mu_1_branchType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for subrange type.\n"); };
void mu_1_stateType::Permute(PermSet& Perm, int i) {};
void mu_1_stateType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_stateType::Canonicalize(PermSet& Perm) {};
void mu_1_stateType::SimpleLimit(PermSet& Perm) {};
void mu_1_stateType::ArrayLimit(PermSet& Perm) {};
void mu_1_stateType::Limit(PermSet& Perm) {};
void mu_1_stateType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_opType::Permute(PermSet& Perm, int i) {};
void mu_1_opType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_opType::Canonicalize(PermSet& Perm) {};
void mu_1_opType::SimpleLimit(PermSet& Perm) {};
void mu_1_opType::ArrayLimit(PermSet& Perm) {};
void mu_1_opType::Limit(PermSet& Perm) {};
void mu_1_opType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_transType::Permute(PermSet& Perm, int i) {};
void mu_1_transType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_transType::Canonicalize(PermSet& Perm) {};
void mu_1_transType::SimpleLimit(PermSet& Perm) {};
void mu_1_transType::ArrayLimit(PermSet& Perm) {};
void mu_1_transType::Limit(PermSet& Perm) {};
void mu_1_transType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_nodeType::Permute(PermSet& Perm, int i) {};
void mu_1_nodeType::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_nodeType::Canonicalize(PermSet& Perm) {};
void mu_1_nodeType::SimpleLimit(PermSet& Perm) {};
void mu_1_nodeType::ArrayLimit(PermSet& Perm) {};
void mu_1_nodeType::Limit(PermSet& Perm) {};
void mu_1_nodeType::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_msgType::Permute(PermSet& Perm, int i)
{
};
void mu_1_msgType::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_msgType::Canonicalize(PermSet& Perm)
{
};
void mu_1_msgType::SimpleLimit(PermSet& Perm){}
void mu_1_msgType::ArrayLimit(PermSet& Perm){}
void mu_1_msgType::Limit(PermSet& Perm)
{
};
void mu_1_msgType::MultisetLimit(PermSet& Perm)
{
};
void mu_1_cacheType::Permute(PermSet& Perm, int i)
{
};
void mu_1_cacheType::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_cacheType::Canonicalize(PermSet& Perm)
{
};
void mu_1_cacheType::SimpleLimit(PermSet& Perm){}
void mu_1_cacheType::ArrayLimit(PermSet& Perm){}
void mu_1_cacheType::Limit(PermSet& Perm)
{
};
void mu_1_cacheType::MultisetLimit(PermSet& Perm)
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
  for (j=0; j<5; j++)
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
void mu_1_treeNode::Permute(PermSet& Perm, int i)
{
};
void mu_1_treeNode::SimpleCanonicalize(PermSet& Perm)
{ Error.Error("Internal: Simple Canonicalization of Record with no scalarset variable\n"); };
void mu_1_treeNode::Canonicalize(PermSet& Perm)
{
};
void mu_1_treeNode::SimpleLimit(PermSet& Perm){}
void mu_1_treeNode::ArrayLimit(PermSet& Perm){}
void mu_1_treeNode::Limit(PermSet& Perm)
{
};
void mu_1_treeNode::MultisetLimit(PermSet& Perm)
{
};
void mu_1__type_5::Permute(PermSet& Perm, int i)
{
  static mu_1__type_5 temp("Permute_mu_1__type_5",-1);
  int j;
  for (j=0; j<3; j++)
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
              
              mu_Tree.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_Tree.MultisetSort();
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

          mu_Tree.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_Tree.MultisetSort();
        if (p.compare(workingstate)) {
          StateCopy(workingstate,&temp); return TRUE; }

        while (Perm.NextPermutation())
          {
            if (ns != workingstate)
              StateCopy(workingstate, ns);
              
              mu_Tree.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_Tree.MultisetSort();
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
      mu_Tree.MultisetSort();
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
        mu_Tree.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_Tree.MultisetSort();
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
