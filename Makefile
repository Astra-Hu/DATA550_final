RMD = Adult_ASD_report.Rmd
OUT = output/Adult_ASD_report.html

all: $(OUT)

$(OUT): $(RMD)
	mkdir -p output
	Rscript -e "rmarkdown::render('$(RMD)', output_file='Adult_ASD_report.html', output_dir='output')"

clean:
	rm -rf output