/**
 * @description :: Middleware service for consuming User Model
 *
 */
module.exports = {
  getByDocumentNumber : function (userId,next) {
    User.find({documentNumber:userId})
      .populate('afp')
      .populate('documentType')
      .populate('birthPlace')
      .populate('nationality')
      .populate('maritalStatus')
      .populate('scholarship')
      .populate('rh')
      .populate('seniority')
      .populate('project')
      .populate('eps')
      .exec(function (err, user){
        next(err, user.shift());
      });
  }
};
