// var app = window.app = {};
// app.Tasks = function() {
//   this._input = $('#Tasks-search-txt');
//   this._initAutocomplete();
// };

// app.Tasks.prototype = {

// };

// _initAutocomplete: function() {
//   this._input
//     .autocomplete({
//       source: '/tasks',
//       appendTo: '#tasks-search-results',
//       select: $.proxy(this._select, this)
//     })
//     .autocomplete('instance')._renderItem = $.proxy(this._render, this);
// }
// _select: function(e, ui) {
//   this._input.val(ui.item.todo + ' - ' + ui.item.category);
//   return false;
// }
// _render: function(ul, item) {
//   var markup = [
  
//     '<span class="todo">' + item.todo + '</span>',
//     '<span class="category">' + item.category + '</span>',
 
//   ];
//   return $('<li>')
//     .append(markup.join(''))
//     .appendTo(ul);
// }
