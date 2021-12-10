#----------Implicit constant------------
# Shell program
SHELL	:=/usr/bin/bash
CC		:=gcc
CCX		:=g++
# C flags
CFLAGS	:=-Wall -O2
# CPP flags
CXXFLAGS:=-Wall -O2
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
INC		:=-I .
# Soruce files directory
SRC_DIR	:= .
SRCS	:=$(shell find $(SRC_DIR) -name '*.cpp' -or -name '*.c')

# Object and external object file
OBJ		:=$(SRCS:%=$(OBJ_DIR)/%.o)
EX 		:=

#-----------Content----------------------

all: build $(APP_DIR)/$(TARGET)			#all: target  './main'

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

.PHONY: all build debug execute clean
build:
		@mkdir -p $(APP_DIR)
		@mkdir -p $(OBJ_DIR)

debug: NFLAGS+=-g
debug: all

execute :all
execute	:
		setsid $(APP_DIR)/$(TARGET)

clean:
		-@rm -rf $(BUILD)
		-@rm -rf $(APP_DIR)/$(TARGET)
