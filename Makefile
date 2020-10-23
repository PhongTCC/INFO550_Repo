# rule for making report  
## report: use cleaned summary data to make a report
report: data/EU_summary.csv R/makereport.Rmd figures/fig1.png install
	Rscript -e "rmarkdown::render('R/makereport.Rmd', output_file = '../reports/report.html', quiet = TRUE)"

# rule for cleaning data
## data/EU_summary.csv: use raw data to make cleaned summary data
data/EU_summary.csv: R/cleandata.R raw_data/EU.dummy.csv R/makereport.Rmd install
	chmod +x $< && \
	Rscript R/cleandata.R

# rule for making fig1
## figures/fig1.png: use summary data to make a line plot figure
figures/fig1.png: data/EU_summary.csv install
	chmod +x $< && \
	Rscript R/makefig1.R

# rule for installing packages
## install: install the necessary packages for R
install: R/installpackages.R
	chmod +x $< && \
	Rscript R/installpackages.R

# makes the help code
# help: provides helpful documentation for make file
help:
	@echo "BELOW IS HELFUL DOCUMENTATION FOR MAKE FILE"
	@echo "report: use cleaned summary data to make a report"
	@echo "data/EU_summary.csv: use raw data to make cleaned summary data"
	@echo "figures/fig1.png: use summary data to make a line plot figure"
	@echo "install: R/installpackages.R"
	@echo "help: provides helpful documentation for make file"



