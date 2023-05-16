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
#define BITS_IN_WORLD 600
#define ALIGN
#define HASHC

/********************
  Include
 ********************/
#include "mu_prolog.hpp"

/********************
  Decl declaration
 ********************/

class mu_1_message: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_message& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_message& val)
  {
    if (val.defined())
      return ( s << mu_1_message::values[ int(val) - 1] );
    else return ( s << "Undefined" );
  };

  mu_1_message (const char *name, int os): mu__byte(1, 7, 3, name, os) {};
  mu_1_message (void): mu__byte(1, 7, 3) {};
  mu_1_message (int val): mu__byte(1, 7, 3, "Parameter or function result.", 0)
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

const char *mu_1_message::values[] = {"empty","req_shared","req_exclusive","invalidate","invalidate_ack","grant_shared","grant_exclusive",NULL };

/*** end of enum declaration ***/
mu_1_message mu_1_message_undefined_var;

class mu_1_cache_state: public mu__byte
{
 public:
  inline int operator=(int val) { return value(val); };
  inline int operator=(const mu_1_cache_state& val) { return value(val.value()); };
  static const char *values[];
  friend ostream& operator<< (ostream& s, mu_1_cache_state& val)
  {
    if (val.defined())
      return ( s << mu_1_cache_state::values[ int(val) - 8] );
    else return ( s << "Undefined" );
  };

  mu_1_cache_state (const char *name, int os): mu__byte(8, 10, 2, name, os) {};
  mu_1_cache_state (void): mu__byte(8, 10, 2) {};
  mu_1_cache_state (int val): mu__byte(8, 10, 2, "Parameter or function result.", 0)
  {
     operator=(val);
  };
  const char * Name() { return values[ value() -8]; };
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
      cout << name << ":" << values[ value() -8] << '\n';
    else
      cout << name << ":Undefined\n";
  };
};

const char *mu_1_cache_state::values[] = {"invalid","shared","exclusive",NULL };

/*** end of enum declaration ***/
mu_1_cache_state mu_1_cache_state_undefined_var;

class mu_1_client: public mu__byte
{
 public:
  inline int operator=(int val) { return mu__byte::operator=(val); };
  inline int operator=(const mu_1_client& val) { return mu__byte::operator=((int) val); };
  mu_1_client (const char *name, int os): mu__byte(1, 12, 4, name, os) {};
  mu_1_client (void): mu__byte(1, 12, 4) {};
  mu_1_client (int val): mu__byte(1, 12, 4, "Parameter or function result.", 0)
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
  mu_1_message array[ 12 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_0 (const char *n, int os) { set_self(n, os); };
  mu_1__type_0 ( void ) {};
  virtual ~mu_1__type_0 ();
  mu_1_message& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_0& a, mu_1__type_0& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
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
  mu_1_message array[ 12 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_1 (const char *n, int os) { set_self(n, os); };
  mu_1__type_1 ( void ) {};
  virtual ~mu_1__type_1 ();
  mu_1_message& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_1& a, mu_1__type_1& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_1& a, mu_1__type_1& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
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
  mu_1_message array[ 12 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_2 (const char *n, int os) { set_self(n, os); };
  mu_1__type_2 ( void ) {};
  virtual ~mu_1__type_2 ();
  mu_1_message& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_2& a, mu_1__type_2& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_2& a, mu_1__type_2& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
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
  mu_0_boolean array[ 12 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_3 (const char *n, int os) { set_self(n, os); };
  mu_1__type_3 ( void ) {};
  virtual ~mu_1__type_3 ();
  mu_0_boolean& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_3& a, mu_1__type_3& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
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
  mu_0_boolean array[ 12 ];
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
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_4& a, mu_1__type_4& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_4& a, mu_1__type_4& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
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
  mu_1_cache_state array[ 12 ];
 public:
  char *name;
  char longname[BUFFER_SIZE/4];
  void set_self( const char *n, int os);
  void set_self_2( const char *n, const char *n2, int os);
  void set_self_ar( const char *n, const char *n2, int os);
  mu_1__type_5 (const char *n, int os) { set_self(n, os); };
  mu_1__type_5 ( void ) {};
  virtual ~mu_1__type_5 ();
  mu_1_cache_state& operator[] (int index) /* const */
  {
#ifndef NO_RUN_TIME_CHECKING
    if ( ( index >= 1 ) && ( index <= 12 ) )
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
    for (int i = 0; i < 12; i++)
      array[i].value(from.array[i].value());
    return *this;
  }

friend int CompareWeight(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<12; i++) {
      w = CompareWeight(a.array[i], b.array[i]);
      if (w!=0) return w;
    }
    return 0;
  }
friend int Compare(mu_1__type_5& a, mu_1__type_5& b)
  {
    int w;
    for (int i=0; i<12; i++) {
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
    for (int i=0; i<12; i++)
      array[i].MultisetSort();
  }
  void print_statistic()
  {
    for (int i=0; i<12; i++)
      array[i].print_statistic();
  }
  void clear() { for (int i = 0; i < 12; i++) array[i].clear(); };

  void undefine() { for (int i = 0; i < 12; i++) array[i].undefine(); };

  void reset() { for (int i = 0; i < 12; i++) array[i].reset(); };

  void to_state(state *thestate)
  {
    for (int i = 0; i < 12; i++)
      array[i].to_state(thestate);
  };

  void print()
  {
    for (int i = 0; i < 12; i++)
      array[i].print(); };

  void print_diff(state *prevstate)
  {
    for (int i = 0; i < 12; i++)
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
  for(int i = 0; i < 12; i++) {
    array[i].set_self_ar(n, s=tsprintf("%d",i + 1), i * 8 + os);
    delete[] s;
  }
};
mu_1__type_5::~mu_1__type_5()
{
}
/*** end array declaration ***/
mu_1__type_5 mu_1__type_5_undefined_var;

const int mu_num_clients = 12;
const int mu_empty = 1;
const int mu_req_shared = 2;
const int mu_req_exclusive = 3;
const int mu_invalidate = 4;
const int mu_invalidate_ack = 5;
const int mu_grant_shared = 6;
const int mu_grant_exclusive = 7;
const int mu_invalid = 8;
const int mu_shared = 9;
const int mu_exclusive = 10;
/*** Variable declaration ***/
mu_1__type_0 mu_channel1("channel1",0);

/*** Variable declaration ***/
mu_1__type_1 mu_channel2_4("channel2_4",96);

/*** Variable declaration ***/
mu_1__type_2 mu_channel3("channel3",192);

/*** Variable declaration ***/
mu_1__type_3 mu_home_sharer_list("home_sharer_list",288);

/*** Variable declaration ***/
mu_1__type_4 mu_home_invalidate_list("home_invalidate_list",384);

/*** Variable declaration ***/
mu_0_boolean mu_home_exclusive_granted("home_exclusive_granted",480);

/*** Variable declaration ***/
mu_1_message mu_home_current_command("home_current_command",488);

/*** Variable declaration ***/
mu_1_client mu_home_current_client("home_current_client",496);

/*** Variable declaration ***/
mu_1__type_5 mu_cache("cache",504);





/********************
  The world
 ********************/
void world_class::clear()
{
  mu_channel1.clear();
  mu_channel2_4.clear();
  mu_channel3.clear();
  mu_home_sharer_list.clear();
  mu_home_invalidate_list.clear();
  mu_home_exclusive_granted.clear();
  mu_home_current_command.clear();
  mu_home_current_client.clear();
  mu_cache.clear();
}
void world_class::undefine()
{
  mu_channel1.undefine();
  mu_channel2_4.undefine();
  mu_channel3.undefine();
  mu_home_sharer_list.undefine();
  mu_home_invalidate_list.undefine();
  mu_home_exclusive_granted.undefine();
  mu_home_current_command.undefine();
  mu_home_current_client.undefine();
  mu_cache.undefine();
}
void world_class::reset()
{
  mu_channel1.reset();
  mu_channel2_4.reset();
  mu_channel3.reset();
  mu_home_sharer_list.reset();
  mu_home_invalidate_list.reset();
  mu_home_exclusive_granted.reset();
  mu_home_current_command.reset();
  mu_home_current_client.reset();
  mu_cache.reset();
}
void world_class::print()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_channel1.print();
  mu_channel2_4.print();
  mu_channel3.print();
  mu_home_sharer_list.print();
  mu_home_invalidate_list.print();
  mu_home_exclusive_granted.print();
  mu_home_current_command.print();
  mu_home_current_client.print();
  mu_cache.print();
    num_calls--;
}
}
void world_class::print_statistic()
{
  static int num_calls = 0; /* to ward off recursive calls. */
  if ( num_calls == 0 ) {
    num_calls++;
  mu_channel1.print_statistic();
  mu_channel2_4.print_statistic();
  mu_channel3.print_statistic();
  mu_home_sharer_list.print_statistic();
  mu_home_invalidate_list.print_statistic();
  mu_home_exclusive_granted.print_statistic();
  mu_home_current_command.print_statistic();
  mu_home_current_client.print_statistic();
  mu_cache.print_statistic();
    num_calls--;
}
}
void world_class::print_diff( state *prevstate )
{
  if ( prevstate != NULL )
  {
    mu_channel1.print_diff(prevstate);
    mu_channel2_4.print_diff(prevstate);
    mu_channel3.print_diff(prevstate);
    mu_home_sharer_list.print_diff(prevstate);
    mu_home_invalidate_list.print_diff(prevstate);
    mu_home_exclusive_granted.print_diff(prevstate);
    mu_home_current_command.print_diff(prevstate);
    mu_home_current_client.print_diff(prevstate);
    mu_cache.print_diff(prevstate);
  }
  else
print();
}
void world_class::to_state(state *newstate)
{
  mu_channel1.to_state( newstate );
  mu_channel2_4.to_state( newstate );
  mu_channel3.to_state( newstate );
  mu_home_sharer_list.to_state( newstate );
  mu_home_invalidate_list.to_state( newstate );
  mu_home_exclusive_granted.to_state( newstate );
  mu_home_current_command.to_state( newstate );
  mu_home_current_client.to_state( newstate );
  mu_cache.to_state( newstate );
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
    return tsprintf("home sends reply to client_exclusive");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr6;
bool mu__boolexpr7;
  if (!((mu_home_current_command) == (mu_req_exclusive))) mu__boolexpr7 = FALSE ;
  else {
bool mu__quant8; 
mu__quant8 = TRUE;
{
for(int mu_i = 1; mu_i <= 12; mu_i++) {
if ( !((mu_home_sharer_list[mu_i]) == (mu_false)) )
  { mu__quant8 = FALSE; break; }
};
};
  mu__boolexpr7 = (mu__quant8) ; 
}
  if (!(mu__boolexpr7)) mu__boolexpr6 = FALSE ;
  else {
  mu__boolexpr6 = ((mu_channel2_4[mu_home_current_client]) == (mu_empty)) ; 
}
    return mu__boolexpr6;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 0;
    while (what_rule < 1 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr9;
bool mu__boolexpr10;
  if (!((mu_home_current_command) == (mu_req_exclusive))) mu__boolexpr10 = FALSE ;
  else {
bool mu__quant11; 
mu__quant11 = TRUE;
{
for(int mu_i = 1; mu_i <= 12; mu_i++) {
if ( !((mu_home_sharer_list[mu_i]) == (mu_false)) )
  { mu__quant11 = FALSE; break; }
};
};
  mu__boolexpr10 = (mu__quant11) ; 
}
  if (!(mu__boolexpr10)) mu__boolexpr9 = FALSE ;
  else {
  mu__boolexpr9 = ((mu_channel2_4[mu_home_current_client]) == (mu_empty)) ; 
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
    r = what_rule - 0;
    }
  }

  void Code(unsigned r)
  {
mu_home_sharer_list[mu_home_current_client] = mu_true;
mu_home_current_command = mu_empty;
mu_channel2_4[mu_home_current_client] = mu_grant_exclusive;
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
    return tsprintf("home sends reply to client_shared");
  }
  bool Condition(unsigned r)
  {
bool mu__boolexpr12;
bool mu__boolexpr13;
  if (!((mu_home_current_command) == (mu_req_shared))) mu__boolexpr13 = FALSE ;
  else {
  mu__boolexpr13 = (!(mu_home_exclusive_granted)) ; 
}
  if (!(mu__boolexpr13)) mu__boolexpr12 = FALSE ;
  else {
  mu__boolexpr12 = ((mu_channel2_4[mu_home_current_client]) == (mu_empty)) ; 
}
    return mu__boolexpr12;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 1;
    while (what_rule < 2 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr14;
bool mu__boolexpr15;
  if (!((mu_home_current_command) == (mu_req_shared))) mu__boolexpr15 = FALSE ;
  else {
  mu__boolexpr15 = (!(mu_home_exclusive_granted)) ; 
}
  if (!(mu__boolexpr15)) mu__boolexpr14 = FALSE ;
  else {
  mu__boolexpr14 = ((mu_channel2_4[mu_home_current_client]) == (mu_empty)) ; 
}
	      if (mu__boolexpr14) {
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
    }
  }

  void Code(unsigned r)
  {
mu_home_sharer_list[mu_home_current_client] = mu_true;
mu_home_current_command = mu_empty;
mu_channel2_4[mu_home_current_client] = mu_grant_shared;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("client received exclusive grant, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return (mu_channel2_4[mu_cl]) == (mu_grant_exclusive);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 2;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 14 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_channel2_4[mu_cl]) == (mu_grant_exclusive)) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_cache[mu_cl] = mu_exclusive;
mu_channel2_4[mu_cl] = mu_empty;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("client receives shared grant, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return (mu_channel2_4[mu_cl]) == (mu_grant_shared);
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 14;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 26 )
      {
	if ( ( TRUE  ) ) {
	      if ((mu_channel2_4[mu_cl]) == (mu_grant_shared)) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_cache[mu_cl] = mu_shared;
mu_channel2_4[mu_cl] = mu_empty;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("sharer invalidates cache, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr16;
  if (!((mu_channel2_4[mu_cl]) == (mu_invalidate))) mu__boolexpr16 = FALSE ;
  else {
  mu__boolexpr16 = ((mu_channel3[mu_cl]) == (mu_empty)) ; 
}
    return mu__boolexpr16;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 26;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 38 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr17;
  if (!((mu_channel2_4[mu_cl]) == (mu_invalidate))) mu__boolexpr17 = FALSE ;
  else {
  mu__boolexpr17 = ((mu_channel3[mu_cl]) == (mu_empty)) ; 
}
	      if (mu__boolexpr17) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_channel2_4[mu_cl] = mu_empty;
mu_channel3[mu_cl] = mu_invalidate_ack;
mu_cache[mu_cl] = mu_invalid;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("home receives invalidate acknowledgement, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr18;
  if (!((mu_home_current_command) != (mu_empty))) mu__boolexpr18 = FALSE ;
  else {
  mu__boolexpr18 = ((mu_channel3[mu_cl]) == (mu_invalidate_ack)) ; 
}
    return mu__boolexpr18;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 38;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 50 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr19;
  if (!((mu_home_current_command) != (mu_empty))) mu__boolexpr19 = FALSE ;
  else {
  mu__boolexpr19 = ((mu_channel3[mu_cl]) == (mu_invalidate_ack)) ; 
}
	      if (mu__boolexpr19) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_home_sharer_list[mu_cl] = mu_false;
mu_home_exclusive_granted = mu_false;
mu_channel3[mu_cl] = mu_empty;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("home sends invalidate message, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr20;
bool mu__boolexpr21;
bool mu__boolexpr22;
bool mu__boolexpr23;
  if (!((mu_home_current_command) == (mu_req_shared))) mu__boolexpr23 = FALSE ;
  else {
  mu__boolexpr23 = (mu_home_exclusive_granted) ; 
}
  if (mu__boolexpr23) mu__boolexpr22 = TRUE ;
  else {
  mu__boolexpr22 = ((mu_home_current_command) == (mu_req_exclusive)) ; 
}
  if (!(mu__boolexpr22)) mu__boolexpr21 = FALSE ;
  else {
  mu__boolexpr21 = (mu_home_invalidate_list[mu_cl]) ; 
}
  if (!(mu__boolexpr21)) mu__boolexpr20 = FALSE ;
  else {
  mu__boolexpr20 = ((mu_channel2_4[mu_cl]) == (mu_empty)) ; 
}
    return mu__boolexpr20;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 50;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 62 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr24;
bool mu__boolexpr25;
bool mu__boolexpr26;
bool mu__boolexpr27;
  if (!((mu_home_current_command) == (mu_req_shared))) mu__boolexpr27 = FALSE ;
  else {
  mu__boolexpr27 = (mu_home_exclusive_granted) ; 
}
  if (mu__boolexpr27) mu__boolexpr26 = TRUE ;
  else {
  mu__boolexpr26 = ((mu_home_current_command) == (mu_req_exclusive)) ; 
}
  if (!(mu__boolexpr26)) mu__boolexpr25 = FALSE ;
  else {
  mu__boolexpr25 = (mu_home_invalidate_list[mu_cl]) ; 
}
  if (!(mu__boolexpr25)) mu__boolexpr24 = FALSE ;
  else {
  mu__boolexpr24 = ((mu_channel2_4[mu_cl]) == (mu_empty)) ; 
}
	      if (mu__boolexpr24) {
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
    r = what_rule - 50;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_channel2_4[mu_cl] = mu_invalidate;
mu_home_invalidate_list[mu_cl] = mu_false;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("home picks new request, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr28;
  if (!((mu_home_current_command) == (mu_empty))) mu__boolexpr28 = FALSE ;
  else {
  mu__boolexpr28 = ((mu_channel1[mu_cl]) != (mu_empty)) ; 
}
    return mu__boolexpr28;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 62;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 74 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr29;
  if (!((mu_home_current_command) == (mu_empty))) mu__boolexpr29 = FALSE ;
  else {
  mu__boolexpr29 = ((mu_channel1[mu_cl]) != (mu_empty)) ; 
}
	      if (mu__boolexpr29) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_home_current_command = mu_channel1[mu_cl];
mu_channel1[mu_cl] = mu_empty;
mu_home_current_client = mu_cl;
{
for(int mu_i = 1; mu_i <= 12; mu_i++) {
mu_home_invalidate_list[mu_i] = mu_home_sharer_list[mu_i];
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("client requests exclusive access, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr30;
bool mu__boolexpr31;
  if ((mu_cache[mu_cl]) == (mu_invalid)) mu__boolexpr31 = TRUE ;
  else {
  mu__boolexpr31 = ((mu_cache[mu_cl]) == (mu_shared)) ; 
}
  if (!(mu__boolexpr31)) mu__boolexpr30 = FALSE ;
  else {
  mu__boolexpr30 = ((mu_channel1[mu_cl]) == (mu_empty)) ; 
}
    return mu__boolexpr30;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 74;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 86 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr32;
bool mu__boolexpr33;
  if ((mu_cache[mu_cl]) == (mu_invalid)) mu__boolexpr33 = TRUE ;
  else {
  mu__boolexpr33 = ((mu_cache[mu_cl]) == (mu_shared)) ; 
}
  if (!(mu__boolexpr33)) mu__boolexpr32 = FALSE ;
  else {
  mu__boolexpr32 = ((mu_channel1[mu_cl]) == (mu_empty)) ; 
}
	      if (mu__boolexpr32) {
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
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_channel1[mu_cl] = mu_req_exclusive;
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
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    return tsprintf("client requests shared access, cl:%s", mu_cl.Name());
  }
  bool Condition(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
bool mu__boolexpr34;
  if (!((mu_cache[mu_cl]) == (mu_invalid))) mu__boolexpr34 = FALSE ;
  else {
  mu__boolexpr34 = ((mu_channel1[mu_cl]) == (mu_empty)) ; 
}
    return mu__boolexpr34;
  }

  void NextRule(unsigned & what_rule)
  {
    unsigned r = what_rule - 86;
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    while (what_rule < 98 )
      {
	if ( ( TRUE  ) ) {
bool mu__boolexpr35;
  if (!((mu_cache[mu_cl]) == (mu_invalid))) mu__boolexpr35 = FALSE ;
  else {
  mu__boolexpr35 = ((mu_channel1[mu_cl]) == (mu_empty)) ; 
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
    r = what_rule - 86;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
    }
  }

  void Code(unsigned r)
  {
    static mu_1_client mu_cl;
    mu_cl.value((r % 12) + 1);
    r = r / 12;
mu_channel1[mu_cl] = mu_req_shared;
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
public:
void SetNextEnabledRule(unsigned & what_rule)
{
  category = CONDITION;
  if (what_rule<1)
    { R0.NextRule(what_rule);
      if (what_rule<1) return; }
  if (what_rule>=1 && what_rule<2)
    { R1.NextRule(what_rule);
      if (what_rule<2) return; }
  if (what_rule>=2 && what_rule<14)
    { R2.NextRule(what_rule);
      if (what_rule<14) return; }
  if (what_rule>=14 && what_rule<26)
    { R3.NextRule(what_rule);
      if (what_rule<26) return; }
  if (what_rule>=26 && what_rule<38)
    { R4.NextRule(what_rule);
      if (what_rule<38) return; }
  if (what_rule>=38 && what_rule<50)
    { R5.NextRule(what_rule);
      if (what_rule<50) return; }
  if (what_rule>=50 && what_rule<62)
    { R6.NextRule(what_rule);
      if (what_rule<62) return; }
  if (what_rule>=62 && what_rule<74)
    { R7.NextRule(what_rule);
      if (what_rule<74) return; }
  if (what_rule>=74 && what_rule<86)
    { R8.NextRule(what_rule);
      if (what_rule<86) return; }
  if (what_rule>=86 && what_rule<98)
    { R9.NextRule(what_rule);
      if (what_rule<98) return; }
}
bool Condition(unsigned r)
{
  category = CONDITION;
  if (r<=0) return R0.Condition(r-0);
  if (r>=1 && r<=1) return R1.Condition(r-1);
  if (r>=2 && r<=13) return R2.Condition(r-2);
  if (r>=14 && r<=25) return R3.Condition(r-14);
  if (r>=26 && r<=37) return R4.Condition(r-26);
  if (r>=38 && r<=49) return R5.Condition(r-38);
  if (r>=50 && r<=61) return R6.Condition(r-50);
  if (r>=62 && r<=73) return R7.Condition(r-62);
  if (r>=74 && r<=85) return R8.Condition(r-74);
  if (r>=86 && r<=97) return R9.Condition(r-86);
Error.Notrace("Internal: NextStateGenerator -- checking condition for nonexisting rule.");
return 0;}
void Code(unsigned r)
{
  if (r<=0) { R0.Code(r-0); return; } 
  if (r>=1 && r<=1) { R1.Code(r-1); return; } 
  if (r>=2 && r<=13) { R2.Code(r-2); return; } 
  if (r>=14 && r<=25) { R3.Code(r-14); return; } 
  if (r>=26 && r<=37) { R4.Code(r-26); return; } 
  if (r>=38 && r<=49) { R5.Code(r-38); return; } 
  if (r>=50 && r<=61) { R6.Code(r-50); return; } 
  if (r>=62 && r<=73) { R7.Code(r-62); return; } 
  if (r>=74 && r<=85) { R8.Code(r-74); return; } 
  if (r>=86 && r<=97) { R9.Code(r-86); return; } 
}
int Priority(unsigned short r)
{
  if (r<=0) { return R0.Priority(); } 
  if (r>=1 && r<=1) { return R1.Priority(); } 
  if (r>=2 && r<=13) { return R2.Priority(); } 
  if (r>=14 && r<=25) { return R3.Priority(); } 
  if (r>=26 && r<=37) { return R4.Priority(); } 
  if (r>=38 && r<=49) { return R5.Priority(); } 
  if (r>=50 && r<=61) { return R6.Priority(); } 
  if (r>=62 && r<=73) { return R7.Priority(); } 
  if (r>=74 && r<=85) { return R8.Priority(); } 
  if (r>=86 && r<=97) { return R9.Priority(); } 
return 0;}
char * Name(unsigned r)
{
  if (r<=0) return R0.Name(r-0);
  if (r>=1 && r<=1) return R1.Name(r-1);
  if (r>=2 && r<=13) return R2.Name(r-2);
  if (r>=14 && r<=25) return R3.Name(r-14);
  if (r>=26 && r<=37) return R4.Name(r-26);
  if (r>=38 && r<=49) return R5.Name(r-38);
  if (r>=50 && r<=61) return R6.Name(r-50);
  if (r>=62 && r<=73) return R7.Name(r-62);
  if (r>=74 && r<=85) return R8.Name(r-74);
  if (r>=86 && r<=97) return R9.Name(r-86);
  return NULL;
}
};
const unsigned numrules = 98;

/********************
  parameter
 ********************/
#define RULES_IN_WORLD 98


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
for(int mu_i = 1; mu_i <= 12; mu_i++) {
mu_channel1[mu_i] = mu_empty;
mu_channel2_4[mu_i] = mu_empty;
mu_channel3[mu_i] = mu_empty;
mu_cache[mu_i] = mu_invalid;
mu_home_sharer_list[mu_i] = mu_false;
mu_home_invalidate_list[mu_i] = mu_false;
};
};
mu_home_current_command = mu_empty;
mu_home_exclusive_granted = mu_false;
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
int mu__invariant_36( const mu_1_client &mu_c2, const mu_1_client &mu_c1) // Invariant "coherent"
{
bool mu__boolexpr37;
bool mu__boolexpr38;
  if (!((mu_c1) != (mu_c2))) mu__boolexpr38 = FALSE ;
  else {
  mu__boolexpr38 = ((mu_cache[mu_c1]) == (mu_exclusive)) ; 
}
  if (!(mu__boolexpr38)) mu__boolexpr37 = TRUE ;
  else {
  mu__boolexpr37 = ((mu_cache[mu_c2]) == (mu_invalid)) ; 
}
return mu__boolexpr37;
};

bool mu__condition_41() // Condition for Rule "coherent, c2:1, c1:1"
{
  return mu__invariant_36( 1, 1 );
}

bool mu__condition_42() // Condition for Rule "coherent, c2:1, c1:2"
{
  return mu__invariant_36( 1, 2 );
}

bool mu__condition_43() // Condition for Rule "coherent, c2:1, c1:3"
{
  return mu__invariant_36( 1, 3 );
}

bool mu__condition_44() // Condition for Rule "coherent, c2:1, c1:4"
{
  return mu__invariant_36( 1, 4 );
}

bool mu__condition_45() // Condition for Rule "coherent, c2:1, c1:5"
{
  return mu__invariant_36( 1, 5 );
}

bool mu__condition_46() // Condition for Rule "coherent, c2:1, c1:6"
{
  return mu__invariant_36( 1, 6 );
}

bool mu__condition_47() // Condition for Rule "coherent, c2:1, c1:7"
{
  return mu__invariant_36( 1, 7 );
}

bool mu__condition_48() // Condition for Rule "coherent, c2:1, c1:8"
{
  return mu__invariant_36( 1, 8 );
}

bool mu__condition_49() // Condition for Rule "coherent, c2:1, c1:9"
{
  return mu__invariant_36( 1, 9 );
}

bool mu__condition_50() // Condition for Rule "coherent, c2:1, c1:10"
{
  return mu__invariant_36( 1, 10 );
}

bool mu__condition_51() // Condition for Rule "coherent, c2:1, c1:11"
{
  return mu__invariant_36( 1, 11 );
}

bool mu__condition_52() // Condition for Rule "coherent, c2:1, c1:12"
{
  return mu__invariant_36( 1, 12 );
}

bool mu__condition_54() // Condition for Rule "coherent, c2:2, c1:1"
{
  return mu__invariant_36( 2, 1 );
}

bool mu__condition_55() // Condition for Rule "coherent, c2:2, c1:2"
{
  return mu__invariant_36( 2, 2 );
}

bool mu__condition_56() // Condition for Rule "coherent, c2:2, c1:3"
{
  return mu__invariant_36( 2, 3 );
}

bool mu__condition_57() // Condition for Rule "coherent, c2:2, c1:4"
{
  return mu__invariant_36( 2, 4 );
}

bool mu__condition_58() // Condition for Rule "coherent, c2:2, c1:5"
{
  return mu__invariant_36( 2, 5 );
}

bool mu__condition_59() // Condition for Rule "coherent, c2:2, c1:6"
{
  return mu__invariant_36( 2, 6 );
}

bool mu__condition_60() // Condition for Rule "coherent, c2:2, c1:7"
{
  return mu__invariant_36( 2, 7 );
}

bool mu__condition_61() // Condition for Rule "coherent, c2:2, c1:8"
{
  return mu__invariant_36( 2, 8 );
}

bool mu__condition_62() // Condition for Rule "coherent, c2:2, c1:9"
{
  return mu__invariant_36( 2, 9 );
}

bool mu__condition_63() // Condition for Rule "coherent, c2:2, c1:10"
{
  return mu__invariant_36( 2, 10 );
}

bool mu__condition_64() // Condition for Rule "coherent, c2:2, c1:11"
{
  return mu__invariant_36( 2, 11 );
}

bool mu__condition_65() // Condition for Rule "coherent, c2:2, c1:12"
{
  return mu__invariant_36( 2, 12 );
}

bool mu__condition_67() // Condition for Rule "coherent, c2:3, c1:1"
{
  return mu__invariant_36( 3, 1 );
}

bool mu__condition_68() // Condition for Rule "coherent, c2:3, c1:2"
{
  return mu__invariant_36( 3, 2 );
}

bool mu__condition_69() // Condition for Rule "coherent, c2:3, c1:3"
{
  return mu__invariant_36( 3, 3 );
}

bool mu__condition_70() // Condition for Rule "coherent, c2:3, c1:4"
{
  return mu__invariant_36( 3, 4 );
}

bool mu__condition_71() // Condition for Rule "coherent, c2:3, c1:5"
{
  return mu__invariant_36( 3, 5 );
}

bool mu__condition_72() // Condition for Rule "coherent, c2:3, c1:6"
{
  return mu__invariant_36( 3, 6 );
}

bool mu__condition_73() // Condition for Rule "coherent, c2:3, c1:7"
{
  return mu__invariant_36( 3, 7 );
}

bool mu__condition_74() // Condition for Rule "coherent, c2:3, c1:8"
{
  return mu__invariant_36( 3, 8 );
}

bool mu__condition_75() // Condition for Rule "coherent, c2:3, c1:9"
{
  return mu__invariant_36( 3, 9 );
}

bool mu__condition_76() // Condition for Rule "coherent, c2:3, c1:10"
{
  return mu__invariant_36( 3, 10 );
}

bool mu__condition_77() // Condition for Rule "coherent, c2:3, c1:11"
{
  return mu__invariant_36( 3, 11 );
}

bool mu__condition_78() // Condition for Rule "coherent, c2:3, c1:12"
{
  return mu__invariant_36( 3, 12 );
}

bool mu__condition_80() // Condition for Rule "coherent, c2:4, c1:1"
{
  return mu__invariant_36( 4, 1 );
}

bool mu__condition_81() // Condition for Rule "coherent, c2:4, c1:2"
{
  return mu__invariant_36( 4, 2 );
}

bool mu__condition_82() // Condition for Rule "coherent, c2:4, c1:3"
{
  return mu__invariant_36( 4, 3 );
}

bool mu__condition_83() // Condition for Rule "coherent, c2:4, c1:4"
{
  return mu__invariant_36( 4, 4 );
}

bool mu__condition_84() // Condition for Rule "coherent, c2:4, c1:5"
{
  return mu__invariant_36( 4, 5 );
}

bool mu__condition_85() // Condition for Rule "coherent, c2:4, c1:6"
{
  return mu__invariant_36( 4, 6 );
}

bool mu__condition_86() // Condition for Rule "coherent, c2:4, c1:7"
{
  return mu__invariant_36( 4, 7 );
}

bool mu__condition_87() // Condition for Rule "coherent, c2:4, c1:8"
{
  return mu__invariant_36( 4, 8 );
}

bool mu__condition_88() // Condition for Rule "coherent, c2:4, c1:9"
{
  return mu__invariant_36( 4, 9 );
}

bool mu__condition_89() // Condition for Rule "coherent, c2:4, c1:10"
{
  return mu__invariant_36( 4, 10 );
}

bool mu__condition_90() // Condition for Rule "coherent, c2:4, c1:11"
{
  return mu__invariant_36( 4, 11 );
}

bool mu__condition_91() // Condition for Rule "coherent, c2:4, c1:12"
{
  return mu__invariant_36( 4, 12 );
}

bool mu__condition_93() // Condition for Rule "coherent, c2:5, c1:1"
{
  return mu__invariant_36( 5, 1 );
}

bool mu__condition_94() // Condition for Rule "coherent, c2:5, c1:2"
{
  return mu__invariant_36( 5, 2 );
}

bool mu__condition_95() // Condition for Rule "coherent, c2:5, c1:3"
{
  return mu__invariant_36( 5, 3 );
}

bool mu__condition_96() // Condition for Rule "coherent, c2:5, c1:4"
{
  return mu__invariant_36( 5, 4 );
}

bool mu__condition_97() // Condition for Rule "coherent, c2:5, c1:5"
{
  return mu__invariant_36( 5, 5 );
}

bool mu__condition_98() // Condition for Rule "coherent, c2:5, c1:6"
{
  return mu__invariant_36( 5, 6 );
}

bool mu__condition_99() // Condition for Rule "coherent, c2:5, c1:7"
{
  return mu__invariant_36( 5, 7 );
}

bool mu__condition_100() // Condition for Rule "coherent, c2:5, c1:8"
{
  return mu__invariant_36( 5, 8 );
}

bool mu__condition_101() // Condition for Rule "coherent, c2:5, c1:9"
{
  return mu__invariant_36( 5, 9 );
}

bool mu__condition_102() // Condition for Rule "coherent, c2:5, c1:10"
{
  return mu__invariant_36( 5, 10 );
}

bool mu__condition_103() // Condition for Rule "coherent, c2:5, c1:11"
{
  return mu__invariant_36( 5, 11 );
}

bool mu__condition_104() // Condition for Rule "coherent, c2:5, c1:12"
{
  return mu__invariant_36( 5, 12 );
}

bool mu__condition_106() // Condition for Rule "coherent, c2:6, c1:1"
{
  return mu__invariant_36( 6, 1 );
}

bool mu__condition_107() // Condition for Rule "coherent, c2:6, c1:2"
{
  return mu__invariant_36( 6, 2 );
}

bool mu__condition_108() // Condition for Rule "coherent, c2:6, c1:3"
{
  return mu__invariant_36( 6, 3 );
}

bool mu__condition_109() // Condition for Rule "coherent, c2:6, c1:4"
{
  return mu__invariant_36( 6, 4 );
}

bool mu__condition_110() // Condition for Rule "coherent, c2:6, c1:5"
{
  return mu__invariant_36( 6, 5 );
}

bool mu__condition_111() // Condition for Rule "coherent, c2:6, c1:6"
{
  return mu__invariant_36( 6, 6 );
}

bool mu__condition_112() // Condition for Rule "coherent, c2:6, c1:7"
{
  return mu__invariant_36( 6, 7 );
}

bool mu__condition_113() // Condition for Rule "coherent, c2:6, c1:8"
{
  return mu__invariant_36( 6, 8 );
}

bool mu__condition_114() // Condition for Rule "coherent, c2:6, c1:9"
{
  return mu__invariant_36( 6, 9 );
}

bool mu__condition_115() // Condition for Rule "coherent, c2:6, c1:10"
{
  return mu__invariant_36( 6, 10 );
}

bool mu__condition_116() // Condition for Rule "coherent, c2:6, c1:11"
{
  return mu__invariant_36( 6, 11 );
}

bool mu__condition_117() // Condition for Rule "coherent, c2:6, c1:12"
{
  return mu__invariant_36( 6, 12 );
}

bool mu__condition_119() // Condition for Rule "coherent, c2:7, c1:1"
{
  return mu__invariant_36( 7, 1 );
}

bool mu__condition_120() // Condition for Rule "coherent, c2:7, c1:2"
{
  return mu__invariant_36( 7, 2 );
}

bool mu__condition_121() // Condition for Rule "coherent, c2:7, c1:3"
{
  return mu__invariant_36( 7, 3 );
}

bool mu__condition_122() // Condition for Rule "coherent, c2:7, c1:4"
{
  return mu__invariant_36( 7, 4 );
}

bool mu__condition_123() // Condition for Rule "coherent, c2:7, c1:5"
{
  return mu__invariant_36( 7, 5 );
}

bool mu__condition_124() // Condition for Rule "coherent, c2:7, c1:6"
{
  return mu__invariant_36( 7, 6 );
}

bool mu__condition_125() // Condition for Rule "coherent, c2:7, c1:7"
{
  return mu__invariant_36( 7, 7 );
}

bool mu__condition_126() // Condition for Rule "coherent, c2:7, c1:8"
{
  return mu__invariant_36( 7, 8 );
}

bool mu__condition_127() // Condition for Rule "coherent, c2:7, c1:9"
{
  return mu__invariant_36( 7, 9 );
}

bool mu__condition_128() // Condition for Rule "coherent, c2:7, c1:10"
{
  return mu__invariant_36( 7, 10 );
}

bool mu__condition_129() // Condition for Rule "coherent, c2:7, c1:11"
{
  return mu__invariant_36( 7, 11 );
}

bool mu__condition_130() // Condition for Rule "coherent, c2:7, c1:12"
{
  return mu__invariant_36( 7, 12 );
}

bool mu__condition_132() // Condition for Rule "coherent, c2:8, c1:1"
{
  return mu__invariant_36( 8, 1 );
}

bool mu__condition_133() // Condition for Rule "coherent, c2:8, c1:2"
{
  return mu__invariant_36( 8, 2 );
}

bool mu__condition_134() // Condition for Rule "coherent, c2:8, c1:3"
{
  return mu__invariant_36( 8, 3 );
}

bool mu__condition_135() // Condition for Rule "coherent, c2:8, c1:4"
{
  return mu__invariant_36( 8, 4 );
}

bool mu__condition_136() // Condition for Rule "coherent, c2:8, c1:5"
{
  return mu__invariant_36( 8, 5 );
}

bool mu__condition_137() // Condition for Rule "coherent, c2:8, c1:6"
{
  return mu__invariant_36( 8, 6 );
}

bool mu__condition_138() // Condition for Rule "coherent, c2:8, c1:7"
{
  return mu__invariant_36( 8, 7 );
}

bool mu__condition_139() // Condition for Rule "coherent, c2:8, c1:8"
{
  return mu__invariant_36( 8, 8 );
}

bool mu__condition_140() // Condition for Rule "coherent, c2:8, c1:9"
{
  return mu__invariant_36( 8, 9 );
}

bool mu__condition_141() // Condition for Rule "coherent, c2:8, c1:10"
{
  return mu__invariant_36( 8, 10 );
}

bool mu__condition_142() // Condition for Rule "coherent, c2:8, c1:11"
{
  return mu__invariant_36( 8, 11 );
}

bool mu__condition_143() // Condition for Rule "coherent, c2:8, c1:12"
{
  return mu__invariant_36( 8, 12 );
}

bool mu__condition_145() // Condition for Rule "coherent, c2:9, c1:1"
{
  return mu__invariant_36( 9, 1 );
}

bool mu__condition_146() // Condition for Rule "coherent, c2:9, c1:2"
{
  return mu__invariant_36( 9, 2 );
}

bool mu__condition_147() // Condition for Rule "coherent, c2:9, c1:3"
{
  return mu__invariant_36( 9, 3 );
}

bool mu__condition_148() // Condition for Rule "coherent, c2:9, c1:4"
{
  return mu__invariant_36( 9, 4 );
}

bool mu__condition_149() // Condition for Rule "coherent, c2:9, c1:5"
{
  return mu__invariant_36( 9, 5 );
}

bool mu__condition_150() // Condition for Rule "coherent, c2:9, c1:6"
{
  return mu__invariant_36( 9, 6 );
}

bool mu__condition_151() // Condition for Rule "coherent, c2:9, c1:7"
{
  return mu__invariant_36( 9, 7 );
}

bool mu__condition_152() // Condition for Rule "coherent, c2:9, c1:8"
{
  return mu__invariant_36( 9, 8 );
}

bool mu__condition_153() // Condition for Rule "coherent, c2:9, c1:9"
{
  return mu__invariant_36( 9, 9 );
}

bool mu__condition_154() // Condition for Rule "coherent, c2:9, c1:10"
{
  return mu__invariant_36( 9, 10 );
}

bool mu__condition_155() // Condition for Rule "coherent, c2:9, c1:11"
{
  return mu__invariant_36( 9, 11 );
}

bool mu__condition_156() // Condition for Rule "coherent, c2:9, c1:12"
{
  return mu__invariant_36( 9, 12 );
}

bool mu__condition_158() // Condition for Rule "coherent, c2:10, c1:1"
{
  return mu__invariant_36( 10, 1 );
}

bool mu__condition_159() // Condition for Rule "coherent, c2:10, c1:2"
{
  return mu__invariant_36( 10, 2 );
}

bool mu__condition_160() // Condition for Rule "coherent, c2:10, c1:3"
{
  return mu__invariant_36( 10, 3 );
}

bool mu__condition_161() // Condition for Rule "coherent, c2:10, c1:4"
{
  return mu__invariant_36( 10, 4 );
}

bool mu__condition_162() // Condition for Rule "coherent, c2:10, c1:5"
{
  return mu__invariant_36( 10, 5 );
}

bool mu__condition_163() // Condition for Rule "coherent, c2:10, c1:6"
{
  return mu__invariant_36( 10, 6 );
}

bool mu__condition_164() // Condition for Rule "coherent, c2:10, c1:7"
{
  return mu__invariant_36( 10, 7 );
}

bool mu__condition_165() // Condition for Rule "coherent, c2:10, c1:8"
{
  return mu__invariant_36( 10, 8 );
}

bool mu__condition_166() // Condition for Rule "coherent, c2:10, c1:9"
{
  return mu__invariant_36( 10, 9 );
}

bool mu__condition_167() // Condition for Rule "coherent, c2:10, c1:10"
{
  return mu__invariant_36( 10, 10 );
}

bool mu__condition_168() // Condition for Rule "coherent, c2:10, c1:11"
{
  return mu__invariant_36( 10, 11 );
}

bool mu__condition_169() // Condition for Rule "coherent, c2:10, c1:12"
{
  return mu__invariant_36( 10, 12 );
}

bool mu__condition_171() // Condition for Rule "coherent, c2:11, c1:1"
{
  return mu__invariant_36( 11, 1 );
}

bool mu__condition_172() // Condition for Rule "coherent, c2:11, c1:2"
{
  return mu__invariant_36( 11, 2 );
}

bool mu__condition_173() // Condition for Rule "coherent, c2:11, c1:3"
{
  return mu__invariant_36( 11, 3 );
}

bool mu__condition_174() // Condition for Rule "coherent, c2:11, c1:4"
{
  return mu__invariant_36( 11, 4 );
}

bool mu__condition_175() // Condition for Rule "coherent, c2:11, c1:5"
{
  return mu__invariant_36( 11, 5 );
}

bool mu__condition_176() // Condition for Rule "coherent, c2:11, c1:6"
{
  return mu__invariant_36( 11, 6 );
}

bool mu__condition_177() // Condition for Rule "coherent, c2:11, c1:7"
{
  return mu__invariant_36( 11, 7 );
}

bool mu__condition_178() // Condition for Rule "coherent, c2:11, c1:8"
{
  return mu__invariant_36( 11, 8 );
}

bool mu__condition_179() // Condition for Rule "coherent, c2:11, c1:9"
{
  return mu__invariant_36( 11, 9 );
}

bool mu__condition_180() // Condition for Rule "coherent, c2:11, c1:10"
{
  return mu__invariant_36( 11, 10 );
}

bool mu__condition_181() // Condition for Rule "coherent, c2:11, c1:11"
{
  return mu__invariant_36( 11, 11 );
}

bool mu__condition_182() // Condition for Rule "coherent, c2:11, c1:12"
{
  return mu__invariant_36( 11, 12 );
}

bool mu__condition_184() // Condition for Rule "coherent, c2:12, c1:1"
{
  return mu__invariant_36( 12, 1 );
}

bool mu__condition_185() // Condition for Rule "coherent, c2:12, c1:2"
{
  return mu__invariant_36( 12, 2 );
}

bool mu__condition_186() // Condition for Rule "coherent, c2:12, c1:3"
{
  return mu__invariant_36( 12, 3 );
}

bool mu__condition_187() // Condition for Rule "coherent, c2:12, c1:4"
{
  return mu__invariant_36( 12, 4 );
}

bool mu__condition_188() // Condition for Rule "coherent, c2:12, c1:5"
{
  return mu__invariant_36( 12, 5 );
}

bool mu__condition_189() // Condition for Rule "coherent, c2:12, c1:6"
{
  return mu__invariant_36( 12, 6 );
}

bool mu__condition_190() // Condition for Rule "coherent, c2:12, c1:7"
{
  return mu__invariant_36( 12, 7 );
}

bool mu__condition_191() // Condition for Rule "coherent, c2:12, c1:8"
{
  return mu__invariant_36( 12, 8 );
}

bool mu__condition_192() // Condition for Rule "coherent, c2:12, c1:9"
{
  return mu__invariant_36( 12, 9 );
}

bool mu__condition_193() // Condition for Rule "coherent, c2:12, c1:10"
{
  return mu__invariant_36( 12, 10 );
}

bool mu__condition_194() // Condition for Rule "coherent, c2:12, c1:11"
{
  return mu__invariant_36( 12, 11 );
}

bool mu__condition_195() // Condition for Rule "coherent, c2:12, c1:12"
{
  return mu__invariant_36( 12, 12 );
}

/**** end rule declaration ****/

const rulerec invariants[] = {
{"coherent, c2:12, c1:12", &mu__condition_195, NULL, },
{"coherent, c2:12, c1:11", &mu__condition_194, NULL, },
{"coherent, c2:12, c1:10", &mu__condition_193, NULL, },
{"coherent, c2:12, c1:9", &mu__condition_192, NULL, },
{"coherent, c2:12, c1:8", &mu__condition_191, NULL, },
{"coherent, c2:12, c1:7", &mu__condition_190, NULL, },
{"coherent, c2:12, c1:6", &mu__condition_189, NULL, },
{"coherent, c2:12, c1:5", &mu__condition_188, NULL, },
{"coherent, c2:12, c1:4", &mu__condition_187, NULL, },
{"coherent, c2:12, c1:3", &mu__condition_186, NULL, },
{"coherent, c2:12, c1:2", &mu__condition_185, NULL, },
{"coherent, c2:12, c1:1", &mu__condition_184, NULL, },
{"coherent, c2:11, c1:12", &mu__condition_182, NULL, },
{"coherent, c2:11, c1:11", &mu__condition_181, NULL, },
{"coherent, c2:11, c1:10", &mu__condition_180, NULL, },
{"coherent, c2:11, c1:9", &mu__condition_179, NULL, },
{"coherent, c2:11, c1:8", &mu__condition_178, NULL, },
{"coherent, c2:11, c1:7", &mu__condition_177, NULL, },
{"coherent, c2:11, c1:6", &mu__condition_176, NULL, },
{"coherent, c2:11, c1:5", &mu__condition_175, NULL, },
{"coherent, c2:11, c1:4", &mu__condition_174, NULL, },
{"coherent, c2:11, c1:3", &mu__condition_173, NULL, },
{"coherent, c2:11, c1:2", &mu__condition_172, NULL, },
{"coherent, c2:11, c1:1", &mu__condition_171, NULL, },
{"coherent, c2:10, c1:12", &mu__condition_169, NULL, },
{"coherent, c2:10, c1:11", &mu__condition_168, NULL, },
{"coherent, c2:10, c1:10", &mu__condition_167, NULL, },
{"coherent, c2:10, c1:9", &mu__condition_166, NULL, },
{"coherent, c2:10, c1:8", &mu__condition_165, NULL, },
{"coherent, c2:10, c1:7", &mu__condition_164, NULL, },
{"coherent, c2:10, c1:6", &mu__condition_163, NULL, },
{"coherent, c2:10, c1:5", &mu__condition_162, NULL, },
{"coherent, c2:10, c1:4", &mu__condition_161, NULL, },
{"coherent, c2:10, c1:3", &mu__condition_160, NULL, },
{"coherent, c2:10, c1:2", &mu__condition_159, NULL, },
{"coherent, c2:10, c1:1", &mu__condition_158, NULL, },
{"coherent, c2:9, c1:12", &mu__condition_156, NULL, },
{"coherent, c2:9, c1:11", &mu__condition_155, NULL, },
{"coherent, c2:9, c1:10", &mu__condition_154, NULL, },
{"coherent, c2:9, c1:9", &mu__condition_153, NULL, },
{"coherent, c2:9, c1:8", &mu__condition_152, NULL, },
{"coherent, c2:9, c1:7", &mu__condition_151, NULL, },
{"coherent, c2:9, c1:6", &mu__condition_150, NULL, },
{"coherent, c2:9, c1:5", &mu__condition_149, NULL, },
{"coherent, c2:9, c1:4", &mu__condition_148, NULL, },
{"coherent, c2:9, c1:3", &mu__condition_147, NULL, },
{"coherent, c2:9, c1:2", &mu__condition_146, NULL, },
{"coherent, c2:9, c1:1", &mu__condition_145, NULL, },
{"coherent, c2:8, c1:12", &mu__condition_143, NULL, },
{"coherent, c2:8, c1:11", &mu__condition_142, NULL, },
{"coherent, c2:8, c1:10", &mu__condition_141, NULL, },
{"coherent, c2:8, c1:9", &mu__condition_140, NULL, },
{"coherent, c2:8, c1:8", &mu__condition_139, NULL, },
{"coherent, c2:8, c1:7", &mu__condition_138, NULL, },
{"coherent, c2:8, c1:6", &mu__condition_137, NULL, },
{"coherent, c2:8, c1:5", &mu__condition_136, NULL, },
{"coherent, c2:8, c1:4", &mu__condition_135, NULL, },
{"coherent, c2:8, c1:3", &mu__condition_134, NULL, },
{"coherent, c2:8, c1:2", &mu__condition_133, NULL, },
{"coherent, c2:8, c1:1", &mu__condition_132, NULL, },
{"coherent, c2:7, c1:12", &mu__condition_130, NULL, },
{"coherent, c2:7, c1:11", &mu__condition_129, NULL, },
{"coherent, c2:7, c1:10", &mu__condition_128, NULL, },
{"coherent, c2:7, c1:9", &mu__condition_127, NULL, },
{"coherent, c2:7, c1:8", &mu__condition_126, NULL, },
{"coherent, c2:7, c1:7", &mu__condition_125, NULL, },
{"coherent, c2:7, c1:6", &mu__condition_124, NULL, },
{"coherent, c2:7, c1:5", &mu__condition_123, NULL, },
{"coherent, c2:7, c1:4", &mu__condition_122, NULL, },
{"coherent, c2:7, c1:3", &mu__condition_121, NULL, },
{"coherent, c2:7, c1:2", &mu__condition_120, NULL, },
{"coherent, c2:7, c1:1", &mu__condition_119, NULL, },
{"coherent, c2:6, c1:12", &mu__condition_117, NULL, },
{"coherent, c2:6, c1:11", &mu__condition_116, NULL, },
{"coherent, c2:6, c1:10", &mu__condition_115, NULL, },
{"coherent, c2:6, c1:9", &mu__condition_114, NULL, },
{"coherent, c2:6, c1:8", &mu__condition_113, NULL, },
{"coherent, c2:6, c1:7", &mu__condition_112, NULL, },
{"coherent, c2:6, c1:6", &mu__condition_111, NULL, },
{"coherent, c2:6, c1:5", &mu__condition_110, NULL, },
{"coherent, c2:6, c1:4", &mu__condition_109, NULL, },
{"coherent, c2:6, c1:3", &mu__condition_108, NULL, },
{"coherent, c2:6, c1:2", &mu__condition_107, NULL, },
{"coherent, c2:6, c1:1", &mu__condition_106, NULL, },
{"coherent, c2:5, c1:12", &mu__condition_104, NULL, },
{"coherent, c2:5, c1:11", &mu__condition_103, NULL, },
{"coherent, c2:5, c1:10", &mu__condition_102, NULL, },
{"coherent, c2:5, c1:9", &mu__condition_101, NULL, },
{"coherent, c2:5, c1:8", &mu__condition_100, NULL, },
{"coherent, c2:5, c1:7", &mu__condition_99, NULL, },
{"coherent, c2:5, c1:6", &mu__condition_98, NULL, },
{"coherent, c2:5, c1:5", &mu__condition_97, NULL, },
{"coherent, c2:5, c1:4", &mu__condition_96, NULL, },
{"coherent, c2:5, c1:3", &mu__condition_95, NULL, },
{"coherent, c2:5, c1:2", &mu__condition_94, NULL, },
{"coherent, c2:5, c1:1", &mu__condition_93, NULL, },
{"coherent, c2:4, c1:12", &mu__condition_91, NULL, },
{"coherent, c2:4, c1:11", &mu__condition_90, NULL, },
{"coherent, c2:4, c1:10", &mu__condition_89, NULL, },
{"coherent, c2:4, c1:9", &mu__condition_88, NULL, },
{"coherent, c2:4, c1:8", &mu__condition_87, NULL, },
{"coherent, c2:4, c1:7", &mu__condition_86, NULL, },
{"coherent, c2:4, c1:6", &mu__condition_85, NULL, },
{"coherent, c2:4, c1:5", &mu__condition_84, NULL, },
{"coherent, c2:4, c1:4", &mu__condition_83, NULL, },
{"coherent, c2:4, c1:3", &mu__condition_82, NULL, },
{"coherent, c2:4, c1:2", &mu__condition_81, NULL, },
{"coherent, c2:4, c1:1", &mu__condition_80, NULL, },
{"coherent, c2:3, c1:12", &mu__condition_78, NULL, },
{"coherent, c2:3, c1:11", &mu__condition_77, NULL, },
{"coherent, c2:3, c1:10", &mu__condition_76, NULL, },
{"coherent, c2:3, c1:9", &mu__condition_75, NULL, },
{"coherent, c2:3, c1:8", &mu__condition_74, NULL, },
{"coherent, c2:3, c1:7", &mu__condition_73, NULL, },
{"coherent, c2:3, c1:6", &mu__condition_72, NULL, },
{"coherent, c2:3, c1:5", &mu__condition_71, NULL, },
{"coherent, c2:3, c1:4", &mu__condition_70, NULL, },
{"coherent, c2:3, c1:3", &mu__condition_69, NULL, },
{"coherent, c2:3, c1:2", &mu__condition_68, NULL, },
{"coherent, c2:3, c1:1", &mu__condition_67, NULL, },
{"coherent, c2:2, c1:12", &mu__condition_65, NULL, },
{"coherent, c2:2, c1:11", &mu__condition_64, NULL, },
{"coherent, c2:2, c1:10", &mu__condition_63, NULL, },
{"coherent, c2:2, c1:9", &mu__condition_62, NULL, },
{"coherent, c2:2, c1:8", &mu__condition_61, NULL, },
{"coherent, c2:2, c1:7", &mu__condition_60, NULL, },
{"coherent, c2:2, c1:6", &mu__condition_59, NULL, },
{"coherent, c2:2, c1:5", &mu__condition_58, NULL, },
{"coherent, c2:2, c1:4", &mu__condition_57, NULL, },
{"coherent, c2:2, c1:3", &mu__condition_56, NULL, },
{"coherent, c2:2, c1:2", &mu__condition_55, NULL, },
{"coherent, c2:2, c1:1", &mu__condition_54, NULL, },
{"coherent, c2:1, c1:12", &mu__condition_52, NULL, },
{"coherent, c2:1, c1:11", &mu__condition_51, NULL, },
{"coherent, c2:1, c1:10", &mu__condition_50, NULL, },
{"coherent, c2:1, c1:9", &mu__condition_49, NULL, },
{"coherent, c2:1, c1:8", &mu__condition_48, NULL, },
{"coherent, c2:1, c1:7", &mu__condition_47, NULL, },
{"coherent, c2:1, c1:6", &mu__condition_46, NULL, },
{"coherent, c2:1, c1:5", &mu__condition_45, NULL, },
{"coherent, c2:1, c1:4", &mu__condition_44, NULL, },
{"coherent, c2:1, c1:3", &mu__condition_43, NULL, },
{"coherent, c2:1, c1:2", &mu__condition_42, NULL, },
{"coherent, c2:1, c1:1", &mu__condition_41, NULL, },
};
const unsigned short numinvariants = 144;

/********************
  Normal/Canonicalization for scalarset
 ********************/
/*
home_current_command:NoScalarset
home_invalidate_list:NoScalarset
home_sharer_list:NoScalarset
channel3:NoScalarset
channel2_4:NoScalarset
channel1:NoScalarset
home_exclusive_granted:NoScalarset
home_current_client:NoScalarset
cache:NoScalarset
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
        mu_home_current_command.MultisetSort();
        mu_home_invalidate_list.MultisetSort();
        mu_home_sharer_list.MultisetSort();
        mu_channel3.MultisetSort();
        mu_channel2_4.MultisetSort();
        mu_channel1.MultisetSort();
        mu_home_exclusive_granted.MultisetSort();
        mu_home_current_client.MultisetSort();
        mu_cache.MultisetSort();
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
void mu_1_message::Permute(PermSet& Perm, int i) {};
void mu_1_message::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_message::Canonicalize(PermSet& Perm) {};
void mu_1_message::SimpleLimit(PermSet& Perm) {};
void mu_1_message::ArrayLimit(PermSet& Perm) {};
void mu_1_message::Limit(PermSet& Perm) {};
void mu_1_message::MultisetLimit(PermSet& Perm)
{ Error.Error("Internal: calling MultisetLimit for enum type.\n"); };
void mu_1_cache_state::Permute(PermSet& Perm, int i) {};
void mu_1_cache_state::SimpleCanonicalize(PermSet& Perm) {};
void mu_1_cache_state::Canonicalize(PermSet& Perm) {};
void mu_1_cache_state::SimpleLimit(PermSet& Perm) {};
void mu_1_cache_state::ArrayLimit(PermSet& Perm) {};
void mu_1_cache_state::Limit(PermSet& Perm) {};
void mu_1_cache_state::MultisetLimit(PermSet& Perm)
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
  for (j=0; j<12; j++)
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
  for (j=0; j<12; j++)
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
  for (j=0; j<12; j++)
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
  for (j=0; j<12; j++)
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
  for (j=0; j<12; j++)
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
  for (j=0; j<12; j++)
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
              
              mu_home_current_command.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_home_current_command.MultisetSort();
              mu_home_invalidate_list.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_home_invalidate_list.MultisetSort();
              mu_home_sharer_list.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_home_sharer_list.MultisetSort();
              mu_channel3.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_channel3.MultisetSort();
              mu_channel2_4.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_channel2_4.MultisetSort();
              mu_channel1.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_channel1.MultisetSort();
              mu_home_exclusive_granted.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_home_exclusive_granted.MultisetSort();
              mu_home_current_client.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_home_current_client.MultisetSort();
              mu_cache.Permute(Perm,i);
              if (args->multiset_reduction.value)
                mu_cache.MultisetSort();
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

          mu_home_current_command.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_home_current_command.MultisetSort();
          mu_home_invalidate_list.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_home_invalidate_list.MultisetSort();
          mu_home_sharer_list.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_home_sharer_list.MultisetSort();
          mu_channel3.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_channel3.MultisetSort();
          mu_channel2_4.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_channel2_4.MultisetSort();
          mu_channel1.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_channel1.MultisetSort();
          mu_home_exclusive_granted.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_home_exclusive_granted.MultisetSort();
          mu_home_current_client.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_home_current_client.MultisetSort();
          mu_cache.Permute(Perm,0);
          if (args->multiset_reduction.value)
            mu_cache.MultisetSort();
        if (p.compare(workingstate)) {
          StateCopy(workingstate,&temp); return TRUE; }

        while (Perm.NextPermutation())
          {
            if (ns != workingstate)
              StateCopy(workingstate, ns);
              
              mu_home_current_command.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_home_current_command.MultisetSort();
              mu_home_invalidate_list.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_home_invalidate_list.MultisetSort();
              mu_home_sharer_list.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_home_sharer_list.MultisetSort();
              mu_channel3.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_channel3.MultisetSort();
              mu_channel2_4.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_channel2_4.MultisetSort();
              mu_channel1.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_channel1.MultisetSort();
              mu_home_exclusive_granted.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_home_exclusive_granted.MultisetSort();
              mu_home_current_client.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_home_current_client.MultisetSort();
              mu_cache.Permute(Perm,0);
              if (args->multiset_reduction.value)
                mu_cache.MultisetSort();
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
      mu_home_current_command.MultisetSort();
      mu_home_invalidate_list.MultisetSort();
      mu_home_sharer_list.MultisetSort();
      mu_channel3.MultisetSort();
      mu_channel2_4.MultisetSort();
      mu_channel1.MultisetSort();
      mu_home_exclusive_granted.MultisetSort();
      mu_home_current_client.MultisetSort();
      mu_cache.MultisetSort();
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
        mu_home_current_command.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_home_current_command.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_home_invalidate_list.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_home_invalidate_list.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_home_sharer_list.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_home_sharer_list.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_channel3.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_channel3.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_channel2_4.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_channel2_4.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_channel1.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_channel1.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_home_exclusive_granted.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_home_exclusive_granted.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_home_current_client.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_home_current_client.MultisetSort();
        SetBestResult(i, workingstate);
      }
  StateCopy(workingstate, &BestPermutedState);

  StateCopy(&temp, workingstate);
  ResetBestResult();
  for (i=0; i<Perm.count; i++)
    if (Perm.In(i))
      {
        StateCopy(workingstate, &temp);
        mu_cache.Permute(Perm,i);
        if (args->multiset_reduction.value)
          mu_cache.MultisetSort();
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
