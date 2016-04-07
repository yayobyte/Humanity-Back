/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var fs = require('fs');
module.exports = {
  generatePdfCertification: function (req, res) {
    // TODO : Create a body validation service
    var media, filename, filePath;
    if (req.body) {
      if (req.body.userId) {
        UserService.getByDocumentNumber(req.body.userId, function (err, user) {
          if (!err) {
            if (user) {
              media = GeneratePdf.generateCertificationDocDefinition(user);
              filename = GeneratePdf.generateDoc(media);
              filePath = sails.config.paths.pdf + filename + '.pdf';
              console.log('New file created: ' + filePath);
              res.send({
                "status": "ok",
                "tempFileId": filename
              });
            } else {
              res.badRequest("The user does not exist");
            }
          } else {
            res.serverError(err);
          }
        });
      } else {
        res.badRequest("No 'userId' was sent");
      }
    } else {
      res.badRequest('No body was sent');
    }
  },
  generatePdfSeveranceCertification : function (req,res){
    var media, filename, filePath;
    // TODO : Create a body validation service
    if (req.body) {
      var subject = (req.body.subject) ? req.body.subject : 'Subject';
      var amount = (req.body.amount) ? req.body.amount : 'Amount';
      if (req.body.userId) {
        UserService.getByDocumentNumber(req.body.userId, function (err, user) {
          if (!err) {
            if (user) {
              media = GeneratePdf.generateSeveranceDocDefinition(user, subject, amount);
              filename = GeneratePdf.generateDoc(media);
              filePath = sails.config.paths.pdf + filename + '.pdf';
              console.log('New file created: ' + filePath);
              res.send({
                "status": "ok",
                "tempFileId": filename
              });
            } else {
              res.badRequest("The user does not exist");
            }
          } else {
            res.serverError(err);
          }
        });
      }else{
        res.badRequest("No userId was sent");
      }
    }else{
      res.badRequest('No body (subject, amount, userId) was sent');
    }
  },
  downloadPdf : function (req,res) {
    var filename = req.params.file;
    var filePath = sails.config.paths.pdf + filename + '.pdf';
    console.log("Download requested: " + filePath);
    if (filename) {
      fs.exists(filePath, function(exists) {
        if (exists) {
          var readStream = fs.createReadStream(filePath);

          readStream.on('open', function () {
            res.attachment(filePath);
            readStream.pipe(res);
          });
          readStream.on('error', function (err) {
            res.negotiate(err);
          });
        } else {
          res.badRequest("That file id does not exist");
        }
      });
    }else{
      res.badRequest([{
        "status": "bad request",
        "message" : "No file id was sent, it should be: /user/downloadcertificate/:file"
      }]);
    }
  }

};

