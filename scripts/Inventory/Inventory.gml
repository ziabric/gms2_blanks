function Inventory() constructor
{
	data_ = [];
	static add = function(object)
	{
		array_push(data_, object)
	};
	static deleteByObject = function(object)
	{
		for (var i = 0; i < array_length(data_); i += 1)
		{
			if ( object == data_[i] )
			{
				array_delete(data_, i, 1)
				return true
			}
		}
		return false
	};
	static clear = function()
	{
		array_delete(data_, 0, array_length(data_))
	};
	static getAllWeight = function()
	{
		var output = 0;
		for (var i = 0; i < array_length(data_); i += 1)
		{
			output += data_[i].weight_
		}
		return output
	};
}