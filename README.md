# munder
Automating the translation of a web store contents.

## How to use

To extract product descriptions from xml:
```grep -o "<description>.*</description>" munder.xml | sed -n 's/.*<description>\([^<]*\)<\/description>.*/\1/p' > descriptions.txt```

To put translations one after another separated by new line:
```paste -d '\n' descriptions.txt translations.txt > description_translate.txt```


