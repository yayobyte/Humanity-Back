/**
* Scholarship.js
*
* @description :: scholarship table
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

  attributes: {
    'id' : {
      type: 'integer',
      primaryKey: true,
      autoIncrement : true,
      unique : true,
      columnName: 'id_scholarship'
    },
    'name' : {
      type: 'string',
      required : true,
      unique : true
    }
  }
};
