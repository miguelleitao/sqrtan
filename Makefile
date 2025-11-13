
# sqrtan demonstration Makefile
#

WORKDIR=workdir

default:
	@echo use:
	@echo "    make target"
	@echo "         target: { makefile | autotools | cmake }"

${WORKDIR}:
	mkdir -p ${WORKDIR}

.PRECIOUS: ${WORKDIR}/sqrtan.c

src0:	${WORKDIR}
	cp -p src/sqrtan_0.c ${WORKDIR}/sqrtan.c
	cp -p src/Makefile_1 ${WORKDIR}/Makefile

src1:	${WORKDIR}
	cp -p src/sqrtan_3.c ${WORKDIR}/sqrtan.c

config.h: clear src1
	cp -p src/Makefile_2 ${WORKDIR}/Makefile
	cp -p src/config.h ${WORKDIR}

autotools: clear src1
	cp -p autotools/* ${WORKDIR}
	mv ${WORKDIR}/configure.ac ${WORKDIR}/.configure.ac.ok

cmake: clear src1
	cp -p cmake/* ${WORKDIR}

push: clear
	git add .
	git commit -m "update"
	echo "Only registered project colaborators can push updates..."
	git push

clear:
	rm -rf ${WORKDIR}
