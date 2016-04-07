/**
* Country.js
*
* @description :: Country table
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {
    'id' : {
      type: 'integer',
      primaryKey: true,
      autoIncrement : true,
      unique : true,
      columnName: 'id_country'
    },
    'name' : {
      type: 'string',
      required : true,
      unique : true
    },
    'nationality' : {
      type : 'string',
      required : true,
      unique : true
    }
  }
};

