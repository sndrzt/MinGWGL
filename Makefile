OS:=$(shell uname -s)

all:
ifeq ($(OS), Linux)
	@echo linux not supported, please try on windows MinGW-W64 environment.
endif

ifeq ($(OS), MINGW64_NT-10.0-19045)
	@echo MINGW64_NT-10.0-19045
	g++ -o sample.exe main.cpp -mwindows -I"include" -L"lib" -lfreeglut -lopengl32 -lglfw3dll
endif

clean:
	rm -rf sample.exe
test:
	./sample.exe

