* Download and compile [EDF2ASCII](https://www.teuniz.net/edf2ascii/)
* Get data from patient
* Start time is found in 



```
for f in `ls *BBB.edf`; do ~/workspace/EDF/edf2ascii $f; cat ${f%%.*}_annotations.txt | grep -i leak > ${f%%.*}_leak.txt; sed -i 's/,Leak://g' ${f%%.*}_leak.txt ; done

```

