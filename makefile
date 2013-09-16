#this is a test makefile for compilation of programs
#nothing is here...yet
pyi = ${CURDIR}/Compilers/pyinstaller/pyinstaller.py -F
wqb = ${CURDIR}/Compilers/winqb64/qb64.exe -c #windows
lqb = ${CURDIR}/Compilers/linqb64/
windows:
	$(wqb) ${CURDIR}/src/QBASIC/COWSONG.BAS
	$(wqb) ${CURDIR}/src/QBASIC/1HEMAN.BAS

linux:
	#compile qb64
	cd ${CURDIR}/Compilers/linqb64
	bash setup_lnx.sh
	#compile QBASIC scripts
	./qb64
	cd ..
	cd ..
	#end compile
#only python scripts will compile for linux unless wine is installed
	$(lqb) src/QBASIC/COWSONG.BAS
	$(lqb) src/QBASIC/1HEMAN.BAS
mac:

