/**
* BirthPlace.js
*
* @description :: birthplace table
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
  tableName: 'birth_place',
  attributes: {
    'id' : {
      type: 'integer',
      primaryKey: true,
      autoIncrement : true,
      unique : true,
      columnName: 'id_birth_place'
    },
    'name' : {
      type : "string",
      required : true,
      unique : true
    }
  }
};

