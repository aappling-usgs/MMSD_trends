# Makefile for entire project; uses phase-specific makefiles within the build/ directory
all:
	make 5_merge/doc/data_checks.pdf.s3 6_model
	@echo "Finished building project"

include build/6_model.mak

clean_out:
	rm -f */log/*.log
	rm -f */log/*.yaml
	rm -f */doc/*.pdf
	rm -f */doc/*.csv
	rm -f */doc/*.s3
	rm -f */doc/*.loc
	rm -f */out/*.rds
	rm -f */out/*.s3
	rm -f */out/*.loc

clean_raw:
	rm -f 1_get_raw_data/out/*.xlsx