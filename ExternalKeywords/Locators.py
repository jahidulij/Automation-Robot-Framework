import json
import jsonpath


def read_locator_from_json(locatorName):
    f = open("C:/Users/Asus/workspace_python/robot_framework_udemy/JsonFiles/Elements.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorName)
    return value[0]
