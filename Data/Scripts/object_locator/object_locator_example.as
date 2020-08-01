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
