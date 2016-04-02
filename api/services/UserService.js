/**
 * @description :: Middleware service for consuming User Model
 *
 */
module.exports = {
  getByDocumentNumber : function (userId,next) {
    var seniorityId = 0;
    User.find({documentNumber:userId}).exec(function (err, user){
      var seniorityId = user[0].seniority;
      if (err) {
        return res.negotiate(err);
      }
      Seniority.find({id : seniorityId}).exec(function (err, seniority){
        if (err) {
          return res.negotiate(err);
        }
        user[0].seniority = seniority[0].name;
        next(user);

      });

    });

  }
};
