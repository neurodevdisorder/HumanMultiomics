install.packages("workflowr")
library("workflowr")
# Configure Git (only need to do once per computer)
wflow_git_config(user.name = "neurodevdisorder", user.email = "neurodevdisorder@gmail.com",overwrite = TRUE)
# Start a new workflowr project
wflow_start("HumanMultiomics")
# Build the site
wflow_build()
# Customize your site!
#   1. Edit the R Markdown files in analysis/
#   2. Edit the theme and layout in analysis/_site.yml
#   3. Add new or copy existing R Markdown files to analysis/

wflow_view()
# Preview your changes
wflow_build()

wflow_status()

#Deploy the website
wflow_use_github("neurodevdisorder")

#Next, you need to send your files to GitHub. Push your files to GitHub with the function
#Using dry_run = TRUE previews what the function will do. Remove this argument to actually push to GitHub.
#Each time you make changes to your project, e.g. run wflow_publish(),
#you will need to run wflow_git_push() to send the changes to GitHub.
wflow_git_push(dry_run = TRUE)


#add a new analysis file
wflow_open("analysis/differential_expression_analysis.Rmd")

# Publish the site, i.e. version the source code and HTML results
wflow_publish("analysis/*", "Differential expression analysis")

wflow_open("analysis/KEGG.Rmd")

wflow_publish("analysis/*")

wflow_open("analysis/GABA_AMPA.Rmd")

wflow_open("analysis/GEDD.Rmd")

#wflow_open("analysis/WGCNA_hippo_genes.Rmd")

wflow_use_github("neurodevdisorder")

