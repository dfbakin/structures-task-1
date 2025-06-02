all:
	echo "Available targets: build, run, test, clean"

setup:
	mkdir -p build

build: setup
	g++ -std=c++20 -O3 -g -Iinclude src/point.cpp -o build/point

run: build
	build/point

test: setup
	g++ -std=c++20 -O3 -g -Iinclude src/point.cpp tests/test.cpp -o build/test_target
	build/test_target

clean:
	rm -rf build
