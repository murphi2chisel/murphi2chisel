# Boolector: Satisfiablity Modulo Theories (SMT) solver.
#
# Copyright (C) 2007-2021 by the authors listed in the AUTHORS file.
#
# This file is part of Boolector.
# See COPYING for more information on using this software.
#

# Check if the linker flag no-export-dynamic is supported
include(CheckCSourceCompiles)

set(CMAKE_REQUIRED_FLAGS "-Wl,--no-export-dynamic")
check_c_compiler_flag("" HAVE_NO_EXPORT_DYNAMIC)
unset(CMAKE_REQUIRED_FLAGS)
