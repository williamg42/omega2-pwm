TARGET = omega2-pwm
OBJ = omega2-pwm.o

#CC = mipsel-openwrt-linux-gcc

#CC = $(TOOLCHAIN_DIR)/bin/mipsel-openwrt-linux-gcc

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LCDFLAGS) -o $@ $^

clean:
	rm -f $(TARGET) *~ \#*\# *.o
