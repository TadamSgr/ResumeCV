

# R Packages

```{r rpkgs}
pkgsearch::ps("Seeger",size = 100) %>%
  filter(purrr::map_lgl(package_data, ~ grepl("Trevor A. Seeger", .x$Author, fixed = TRUE))) %>%
  arrange(desc(downloads_last_month)) %>%
  brief_entries(
    what = title,
    when = lubridate::year(date),
    with = description
  )
```



```{r}
# library(dplyr)
# knitr::write_bib(c("vitae", "tibble"), "packages.bib")
# 
# bibliography_entries("packages.bib") %>%
#   arrange(desc(author$family), issued)
```

