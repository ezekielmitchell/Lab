import json # JavaScript Object Notation
# use cases: config, storing data, api's

json_string = '''
{
    "students": [
        {
            "id": 1,
            "name": "Time",
            "age": 21,
            "full-time": true
        },
        {
            "id": 2,
            "name": "Ezekiel",
            "age": 26,
            "full-time": true
        }
    ]
}
'''

data = json.loads(json_string)
# print(data['students'][1])
data['test'] = True
new_json = json.dumps(data, indent=2, sort_keys=False)
print(new_json)