TARGET = app

BUILD_DIR = build

all: debug

debug:
	@mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake -DCMAKE_BUILD_TYPE=Debug ..
	$(MAKE) -C $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

run: debug
	./$(BUILD_DIR)/$(TARGET)

.PHONY: all debug clean run