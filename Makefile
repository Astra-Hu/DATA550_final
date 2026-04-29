.PHONY: report report-windows

IMAGE = astrahu/data550-final
REPORT = Adult_ASD_report.Rmd

report:
	mkdir -p report
	docker run --rm \
		-v "$$(pwd)/report":/home/rstudio/project/report \
		$(IMAGE) \
		bash -c "Rscript -e \"rmarkdown::render('$(REPORT)', output_file = 'Adult_ASD_report.html', output_dir = 'report')\""

report-windows:
	mkdir -p report
	docker run --rm \
		-v "/$$(pwd)/report":/home/rstudio/project/report \
		$(IMAGE) \
		bash -c "Rscript -e \"rmarkdown::render('$(REPORT)', output_file = 'Adult_ASD_report.html', output_dir = 'report')\""
		
clean:
	rm -rf report