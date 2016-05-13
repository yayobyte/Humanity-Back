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
  },
  insertDataFromExcel : function () {
    var excel = require('excel-stream');
    var fs = require('fs');
    var fileName = 'downloads/excel/humanity_database.xlsx';
    var data = '';
    fs.exists(fileName, function () {
      var readStream = fs.createReadStream(fileName)
        .pipe(excel())
        .on('data', function (chunk) {
          insertIntoDataBase(chunk);
        });
    });

    function insertIntoDataBase (data) {
      if ( typeof data['NOMBRE'] == 'string') {
        var newUser = {
          'status': data['ESTADO EMPLEADO'],
          'documentType': data['TIPO DOCUMENTO'],
          'documentNumber': data['ID'],
          'name': capitalizeFirstLetter(data['NOMBRE'].toLowerCase()),
          'firstLastName': capitalizeFirstLetter(data['PRIMER APELLIDO'].toLowerCase()),
          'secondLastName': capitalizeFirstLetter(data['SEGUNDO APELLIDO'].toLowerCase()),
          'address': data['DOMICILIO'],
          'birthday': new Date(data['FECHA DE NACIMIENTO']),
          'age': data['EDAD'],
          'birthPlace': data['LUGAR DE NACIMIENTO (Municipio)'],
          'nationality': data['NACIONALIDAD'],
          'nOfChildren': data['HIJOS'],
          'maritalStatus': data['ESTADO CIVIL'],
          'scholarship': data['ESCOLARIDAD'],
          'rh': data['RH'],
          'peopleInCharge': data['OTRAS PERSONAS A CARGO'],
          'socialStratum': data['ESTRATO SOCIAL'],
          'skype': data['SKYPE'],
          'personalEmail': data['CORREO PERSONAL'],
          'cellphone': data['CELULAR'],
          'contactName': data['Persona de contacto'],
          'contactPhone': data['Tel contacto'],
          'seniority': data['CARGO'],
          'hiredTime': new Date(data['INGRESO']),
          'salary': data['SALARIO'],
          'corporateEmail': data['CORREO CORPORATIVO'],
          'project': 14,
          'skill': [],
          'afp': data['FONDO PENSIONES'],
          'eps': data['FONDO SALUD'],
          'fc': data['FONDO CESANTIAS']
        };
        console.log(newUser);


        User.create(newUser).exec(function (err, result) {
          if (err) {
            sails.log.debug('Some error occurred ' + err );
            return false;
          }
          sails.log.debug('Success', JSON.stringify(result));
          return true;
        });
      }

      function capitalizeFirstLetter(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
      }

    }
  }
};
