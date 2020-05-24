# Usage:
# make
# make run
# make clean

.PHONY = all clean

COMPILE := g++
DELETE := @rm
MKDIR := @mkdir
COPY := @cp
MOVE := @mv
PRINT := @echo
SRC_DIR := ./src
BUILD_DIR := ./build

# Define phony and suffix rules
.PHONY: all run clean

all: $(BUILD_DIR) $(BUILD_DIR)/app

run: all
	./${BUILD_DIR}/app

clean:
	${DELETE} -rf ${BUILD_DIR}

$(BUILD_DIR):
	$(MKDIR) -p $@

$(BUILD_DIR)/app: $(SRC_DIR)/app.cpp
	$(COMPILE) $^ -o $@