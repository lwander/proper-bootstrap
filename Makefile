CC=gcc

OBJ_DIR=obj
T0=t0

T0_SRCS=main.S 
T0_SRCS_E=$(T0_SRCS:%=$(T0)/%)

# Not necessary for t0, but may be later
T0_OBJS=$(T0_SRCS:%.S=$(T0)/$(OBJ_DIR)/%.o)

.PHONY: all clean clean-t0

all: 
	echo "Specify a target <- { t0 }."

$(T0): $(T0_SRCS_E)
	$(CC) $^ -o $(T0)/$(T0) -nostdlib

clean: clean-t0
	-rm $(t0)
