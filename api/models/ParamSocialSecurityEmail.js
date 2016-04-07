/**
* ParamSocialSecurityEmail.js
*
* @description :: paramsocialsecurityemail table
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
  tableName: 'param_social_security_email',
  attributes: {
    'id' : {
      type: 'integer',
      primaryKey: true,
      autoIncrement : true,
      unique : true,
      columnName: 'id_param_ss_email'
    },
    'name' : {
      type: 'string',
      required : true,
      unique : true
    }

  }
};

