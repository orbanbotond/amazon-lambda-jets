'use strict';

exports.handler = function(event, context, callback) {
    var message = 'hi from node ' + process.version;
    var body = {'message': message};
    var response = {
      statusCode: "200",
      headers: {
          'Content-Type': 'application/json',
      },
      body: JSON.stringify(body)
    };
    callback(null, response);
};