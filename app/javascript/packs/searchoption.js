
document.addEventListener("turbolinks:load", function() {

   $input = $("#task_search")

  var options = {
  	
  	// data: ["meeting","buy phone","buy car","song","maths","buy vegg"]
  	url: function(phrase) {
      return "autocomplete.json?search=" + phrase;
    },
    getValue: "todo",
    
    list: {
		match: {
			enabled: true
		}
	}
    
   
  };

  $input.easyAutocomplete(options);
});