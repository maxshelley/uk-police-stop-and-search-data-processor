# UK Police Stop And Search Data Processor

This code was created to make the quantities stop and search data provided by the UK Police easier to study. It combines the multiple CSV files they provide into a single CSV, with their location appended as an additional field.

This script was requested by Dr. Sara Grace as part of her work and is open-sourced here in case it's useful to anyone else.

You can find the UK police stop and search data at [https://data.police.uk/data](https://data.police.uk/data).

### Running the script

You will need Ruby installed to run this script.

The UK Police data is available, by default, in a folder structure that includes the date i.e. `2018-01`, then the location `2018-01-avon-and-somerset-stop-and-search.csv`. This would make the full path

```
  2018-01/2018-01-avon-and-somerset-stop-and-search.csv
```

Place this script in the parent directory (alongside all the date folders) and run

```
  ruby script.rb
```

It should produce some debugging output while running.

Be aware that if combining a large volume of stop and search data, the row count of the output CSV may exceed the maximum row count for Excel and would need to be viewed in other software.
