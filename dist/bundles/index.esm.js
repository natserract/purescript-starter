// Generated by purs bundle 0.14.5
var PS = {};
(function(exports) {

  exports.log = function (s) {
    return function () {
      console.log(s);
    };
  };
})(PS["Effect.Console"] = PS["Effect.Console"] || {});
(function($PS) {
  $PS["Effect.Console"] = $PS["Effect.Console"] || {};
  var exports = $PS["Effect.Console"];
  var $foreign = $PS["Effect.Console"];
  exports["log"] = $foreign.log;
})(PS);
(function($PS) {
  $PS["Main"] = $PS["Main"] || {};
  var exports = $PS["Main"];
  var Effect_Console = $PS["Effect.Console"];                
  var main = Effect_Console.log("Hello Alfin");
  exports["main"] = main;
})(PS);
PS["Main"].main();
//# sourceMappingURL=index.esm.js.map
