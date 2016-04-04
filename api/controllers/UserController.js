/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var fs = require('fs');
module.exports = {
  generatePdf : function (req,res) {
    var media, filename, filePath, userFound;
    var userId = (req.params.userid) ? req.params.userid : undefined;
    UserService.getByDocumentNumber(userId,function (user) {
      media = GeneratePdf.createMedia(user);
      filename = GeneratePdf.generateDoc(media);
      filePath = sails.config.paths.pdf + filename + '.pdf';
      console.log('New file created: ' + filePath);
      res.send({
        "status" : "ok",
        "tempFileId" : filename
      });
    });

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
      res.badRequest({
        "status": "bad request",
        "message" : "No file id was sent, it should be: /user/downloadcertificate/:file"
      });
    }

  }

};

