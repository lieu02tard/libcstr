#----------Implicit constant------------
# Shell program
SHELL	:=/usr/bin/bash
CC		:=gcc
CCX		:=g++
# C flags
CFLAGS	:=-Wall -Wextra -fstack-protector -pipe
# CPP flags
CXXFLAGS:=-Wall -Wextra -fstack-protector -pipe
# Output flags
OFLAGS	:=-o
# Assemble flag (but not link)
CCFLAGS	:=-c
# C preprocessor flag
CPPFLAGS:=
# Linker flag
LDFLAGS	:=
#------------------------------------------

#----------Directories-------------------
# Build directory
BUILD	:=./build
# Output program
TARGET	:=main
# Output directory
APP_DIR	:=.

# Debug directory
DEB_DIR	:=$(BUILD)/debug
# Object files directory
OBJ_DIR	:=$(BUILD)/obj

# Include flags
INC		:=-I ..
# Soruce files directory
SRC_DIR	:= ..
SRCS	:=$(shell find $(SRC_DIR)  -name '*.c')
VALGRIND_LOG:=./valgrind_log
CMP_SRC := ./compare.cpp
CMP_OUT := ./compare

# Object and external object file
OBJ		:=$(SRCS:%=$(OBJ_DIR)/%.o)
EX 		:=

#-----------Content----------------------

all: build $(APP_DIR)/$(TARGET) cmp_build

#Build from Cpp source
$(OBJ_DIR)/%.cpp.o: %.cpp
		@mkdir -p $(@D)
		$(CCX) $(CXXFLAGS) $(INC) $(CCFLAGS) $< $(OFLAGS) $@ 	
		#g++ -I . -c hello.cpp -o hello.cpp.o

#Build from C source
$(OBJ_DIR)/%.c.o: %.c
		@mkdir -p $(@D)
		$(CC) $(CFLAGS) $(INC) $(CCFLAGS) $< $(OFLAGS) $@

#The final build step
$(APP_DIR)/$(TARGET): $(OBJ)
		$(CC) $(CFLAGS) $(OFLAGS) $(APP_DIR)/$(TARGET) $^ $(LDFLAGS)

.PHONY: all build cmp_build debug execute clean release test all_cl asm

asm:	CCFLAGS+=-S
asm:	release

all_cl:	CC:=clang
all_cl:	CCX:=clang++-11
all_cl:	all

build:
		@mkdir -p $(APP_DIR)
		@mkdir -p $(OBJ_DIR)

cmp_build:
		$(CCX) $(CXXFLAGS) $(INC) $(CMP_SRC) $(OFLAGS) $(CMP_OUT)

release	: CFLAGS+=-O2 -D __release
release	: CXXFLAGS+=-O2 -D __release
release	: all

debug	: CFLAGS+=-g
debug	: CXXFLAGS+=-g
debug	: all

execute :all
execute	:
		setsid $(APP_DIR)/$(TARGET)

test	: debug
test	: all
test	: 
		valgrind -s --track-origins=yes --leak-check=full --show-leak-kinds=all $(APP_DIR)/$(TARGET) | tee $(VALGRIND_LOG)

clean:
		-@rm -rf $(BUILD)
		-@rm -rf $(APP_DIR)/$(TARGET)
		-@rm -rf $(CMP_OUT)
