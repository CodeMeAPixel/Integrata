FC = gfortran
SRC = src/input_utils.f90 src/menu.f90 src/simpson.f90 src/trapezoidal.f90 src/integrata.f90
MAIN = app/main.f90
EXE = integrata.exe

all:
	$(FC) -o $(EXE) $(SRC) $(MAIN)

run: all
	./$(EXE)


# Run both legacy and comprehensive integration tests
test: test_simpson test_integration

test_simpson:
	$(FC) -o test_simpson.exe test/test_simpson.f90 $(SRC)
	./test_simpson.exe

test_integration:
	$(FC) -o test_integration.exe test/test_integration.f90 $(SRC)
	./test_integration.exe

clean:
	del /Q *.exe *.mod 2>NUL || true
