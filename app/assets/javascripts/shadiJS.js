var ShadiJS = (function () {
  var shadi = {};
  shadi.Model = {
    all: function(callback) {
      var self = this;
      var url = this.url + '.json';
      var data = this.data || {};
      $.get(url, data, function(data) {
        $(self).trigger('updated', [data]);
        if (callback) callback();
      });
      return this;
    },

    get: function(id, callback) {
      var self = this;
      var url = this.url + '/' + id + '.json';
      $.get(url, function(data) {
        $(self).trigger('updated', [data]);
        if (callback) callback();
      });
      return this;
    }
  }
  return shadi;
}());

