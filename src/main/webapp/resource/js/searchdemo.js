var options = {
	valueNames: [
		'name',
		'dob',
		'qual',
		'ex',
		'jobi',
		'state',
		'country',
		{ data: ['exp']}
	],
	page: 6,
	pagination: true
};
var userList = new List('users', options);

function resetList(){
	userList.search();
	userList.filter();
	userList.update();
	$(".filter-all").prop('checked', true);
	$('.filter').prop('checked', false);
	$('.search').val('');
	//console.log('Reset Successfully!');
};
  
function updateList(){
  var values_exp = $("input[name=exp]:checked").val();
	var values_address = $("input[name=address]:checked").val();
	console.log(values_exp, values_address);

	userList.filter(function (item) {
		var expFilter = false;
		var addressFilter = false;
		
		if(values_exp == "all")
		{ 
			expFilter = true;
		} else {
			expFilter = item.values().exp == values_exp;
			
		}
		if(values_address == null)
		{ 
			addressFilter = true;
		} else {
			addressFilter = item.values().address.indexOf(values_address) >= 0;
		}
		return addressFilter && expFilter
	});
	userList.update();
	//console.log('Filtered: ' + values_gender);
}
                               
$(function(){
  //updateList();
  $("input[name=exp]").change(updateList);
	$('input[name=address]').change(updateList);
	
	userList.on('updated', function (list) {
		if (list.matchingItems.length > 0) {
			$('.no-result').hide()
		} else {
			$('.no-result').show()
		}
	});
});