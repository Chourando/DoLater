/// Destroys a Do Later operation, thus preventing it from ever firing
/// 
/// @return N/A (0)
/// @param operationStruct   Operation to delete, as returned by a Do Later function

function do_later_delete(_struct)
{
    with(_struct)
    {
        if (variable_struct_exists(self, "list"))
        {
            var _index = ds_list_find_index(list, _struct);
            if (_index >= 0)
            {
                deleted = true;
                ds_list_delete(list, _index);
            }
        }
        else if (variable_struct_exists(self, "signal"))
        {
            var _list = global.__do_later_signal_map[? signal];
            if (_list != undefined)
            {
                var _index = ds_list_find_index(_list, _struct);
                if (_index >= 0)
                {
                    deleted = true;
                    ds_list_delete(_list, _index);
                }
            }
        }
    }
}