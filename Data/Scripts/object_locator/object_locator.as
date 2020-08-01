funcdef bool OBJECT_LOCATOR_SCRIPT_PARAMS(ScriptParams@);

class ObjectLocator {
    ObjectLocator(){}
    
    array<Object@> LocateByScriptParams(OBJECT_LOCATOR_SCRIPT_PARAMS @_callback){
        array<Object@> result;
        array<int> @object_ids = GetObjectIDs();
        int num_objects = object_ids.length();
        
        for(int i = 0; i < num_objects; ++i){
            Object @obj = ReadObjectFromID(object_ids[i]);
            ScriptParams@ obj_params = obj.GetScriptParams();
            
            if (_callback(obj_params)){
                result.push_back(obj);
            }
        }
        
        return result;
    }
}
