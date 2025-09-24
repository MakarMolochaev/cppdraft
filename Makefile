BUILD_DIR = build
TARGET = myapp
CMAKE = cmake
MAKE = make

all: debug

debug:
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && $(CMAKE) -DCMAKE_BUILD_TYPE=Debug ..
	@cd $(BUILD_DIR) && $(MAKE)

clean:
	@rm -rf $(BUILD_DIR)

run: debug
	@./$(BUILD_DIR)/$(TARGET)
h
rebuild: clean debug

help:
	@echo "Available targets:"
	@echo "  all/debug - Build debug version (default)"
	@echo "  clean     - Remove build directory"
	@echo "  run       - Build and run the application"
	@echo "  rebuild   - Clean and rebuild"

.PHONY: all debug clean run rebuild help