# Keyword_Identification

Keyword Identification is a Python library that receives a JSON file with multiple references and returns a JSON with the keywords for each reference

## input JSON example

```
{ 
    "references": [
        {
            "title": "Title here",
            "abstract": "Abstract here"
        },
        {
            "title": "Title 2 here",
            "abstract": "Abstract 2 "
        }
    ]
}
```

## output JSON example
```
[
	["keyword 1", "keyword 2"],
	["keyword 3", "keyword 4"]
]
```


## Usage example

```
python keyword_identification.py test.json > keywords.json
```


## License
[MIT](https://choosealicense.com/licenses/mit/)