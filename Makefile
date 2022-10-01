
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

src0:
	cp -p src/sqrtan_0.c ${WORKDIR}/sqrtan.c
	cp -p src/Makefile_1 ${WORKDIR}/Makefile

src1:
	cp -p src/sqrtan_3.c ${WORKDIR}/sqrtan.c


makefile: clear ${WORKDIR} src1
	cp -p src/Makefile_2 ${WORKDIR}/Makefile
	cp -p src/config.h ${WORKDIR}

autotools: clear ${WORKDIR} src1
	cp -p autotools/* ${WORKDIR}

cmake: clear ${WORKDIR} src1
	cp -p cmake/* ${WORKDIR}

push: clear
	git add .
	git commit -m "update"
	git push

clear:
	rm -rf ${WORKDIR}/*
