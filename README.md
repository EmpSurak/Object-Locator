Object Locator
===============

A small library to locate objects for [Overgrowth](https://www.wolfire.com/overgrowth).
It is still work in progress, breaking API changes in the future are likely.

## Example

```cpp
#include "object_locator/object_locator.as"

ObjectLocator locator;

array<Object@> GetObjects(){
    return locator.LocateByScriptParams(function(_params){
        if (!_params.HasParam("Name")){
            return false;
        }
        return ("foo" == _params.GetString("Name"));
    });
}
```