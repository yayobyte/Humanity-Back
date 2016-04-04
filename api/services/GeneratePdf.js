/**
 * @description :: Service to create a Pdf
 *                https://github.com/bpampuch/pdfmake
 *
 */

/** createMedia
 * @description :: Doc definition for labor certificate
*/
module.exports = {
  createMedia : function (user) {
    var position, salary, userName, userDocumentId, hiredDate;
    var imgPath = sails.config.paths.images;
    var month = {1: "Enero" , 2 : "Febrero" , 3: "Marzo" , 4 : "Abril", 5: "Mayo", 6 : "Junio",
      7 : "Julio", 8 : "Agosto", 9: "Septiembre", 10: "Octubre", 11 : "Noviembre", 12 : "Diciembre"}
    var leftColumn = 160;
    var today = new Date ();
    if (user[0]) {
      position = user[0].seniority ;
      salary = user[0].salary.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,") ;
      userName = (user[0].name + ' ' + user[0].firstLastName + ' ' +user[0].secondLastName).toUpperCase() ;
      userDocumentId = user[0].documentNumber;
      hiredDate = user[0].hiredTime.getDate() + ' de ' + month[user[0].hiredTime.getMonth() + 1] + ' de ' + user[0].hiredTime.getFullYear();
    }else{
      position = "Position";
      salary = "Salary" ;
      userName = "User" ;
      userDocumentId = "Document";
      hiredDate = "Date";
    }
    var docDefinition = {
      content: [
        {
          image: imgPath + 'logo.png',
          width: 150,
          alignment: 'right',
          margin: [0, 20]
        },
        {
          text: "Certificación Laboral",
          alignment: 'right',
          fontSize : 10
        },
        {
          text: today.getDate() + ' de ' + month[today.getMonth() + 1] + ' de ' + today.getFullYear(),
          alignment: 'right',
          fontSize: 10,
          bold : true
        },
        {
          text: "Medellín Colombia",
          alignment: 'right',
          fontSize: 10
        },
        {
          text: "A QUIEN INTERESE",
          margin: [0,20,0,0],
          bold: true,
          alignment : "center"
        },
        {
          text : "Por medio de la presente, certificamos que el señor "+ userName +" identificado con Cédula de Ciudadanía No "
          + userDocumentId + ", " + "trabajó en nuestra Compañía desde el " + hiredDate+ "."
        },
        {
          columns : [
            {
              text: 'CARGO: ',
              margin : [0,20,0,0],
              bold : true,
              width : leftColumn
            },{
              text : position,
              margin : [0,20,0,0]
            }
          ]

        },
        {
          columns : [
            {
              text: 'TIPO DE CONTRATO: ',
              margin : [0,20,0,0],
              bold : true,
              width : leftColumn
            },{
              text : 'Tiempo completo – Término indefinido',
              margin : [0,20,0,0]
            }
          ]

        },
        {
          columns : [
            {
              text: 'SALARIO BASICO: ',
              margin : [0,20,0,0],
              bold : true,
              width : leftColumn
            },{
              text : 'COP $ '+ salary + ' (mensual)',
              margin : [0,20,0,0]
            }
          ]

        },
        {
          columns: [
            {
              width: 160,
              text: [
                'BENEFICIOS: '
              ],
              bold : true
            },
            {
              width: '*',
              ul: [
                'Health Insurance (medicina Prepagada) 100% cubierta al empleado, según Plan Salud Colectivo Suramericana.',
                'Life Insurance según cobertura de vida grupo Suramericana.',
                'Sports allowance por COP $ 117.700 mensuales para Sports del empleado.',
                'Child Care Gift Card por COP $ 117.000 mensuales para hijos de nuestro empleado.',
                'Education allowance hasta por COP $ 856.000 en temas relacionados con su posición dentro de la Compañía.',
                'Performance Bonus, según política de Compensación & Beneficios de nuestra Compañía.'
              ]
            }
          ],
          margin : [0,20,0,0]
        },
        {
          text : 'Cordial Saludo,',
          margin : [0,30,0,0]
        },
        {
          image: imgPath + 'signature.png',
          width: 110,
          alignment: 'left'
        },
        {
          text : 'Ximena Tarazona',
          bold : true,
          fontSize : 13
        },
        {
          text : 'Human Resources',
          fontSize : 10
        },
        {
          text: [
            'Medellín: ',
            { text: 'Cra 38 # 10 - 36', bold: false, color: "black" }
          ],
          margin : [0,20,0,0],
          bold : true,
          color: "red",
          fontSize : 8
        },
        {
          text: [
            'Tel: ',
            { text: '+57 (4) 2686786', bold: false, color: "black" }
          ],
          bold : true,
          color: "red",
          fontSize : 8
        },
        {
          text: [
            'Mobile: ',
            { text: '+57 (300) 3054080', bold: false, color: "black" }
          ],
          bold : true,
          color: "red",
          fontSize : 8
        },
        {
          text: [
            'Skype ID: ',
            { text: 'ximena.tc4 ', bold: false, color: "black" }
          ],
          bold : true,
          color: "red",
          fontSize : 8
        },
        {
          image: imgPath + 'logo.png',
          width : 110
        },
        {
          text : [
            'Follow us on ',
            { text: 'www.velocitypartners.net', decoration: 'underline' }
          ],
          fontSize : 8
        },
        {
          text : '"Delivering exceptional value through a lean and agile nearshore execution model"',
          margin : [0,5,0,0],
          italics: true,
          fontSize : 8
        }
      ]

    };
    return docDefinition;

  },

  /**
   * @param docDefinition object describing the document
   * @description : generates a pdf based don the docDefinition see createMedia action for reference
   *                path is configured on /config/paths.js
   */
  generateDoc : function (docDefinition) {

    var fontsPath = sails.config.paths.fonts;
    var fonts = {
      Roboto: {
        normal: fontsPath + 'Roboto-Regular.ttf',
        bold: fontsPath + 'Roboto-Medium.ttf',
        italics: fontsPath + 'Roboto-Italic.ttf',
        bolditalics: fontsPath + 'Roboto-Italic.ttf'
      }
    };
    var PdfPrinter = require('../vendor/pdfmake/printer');
    var printer = new PdfPrinter(fonts);
    var fs = require('fs');

    var doc = '';
    var now = new Date();
    var pdfDoc = printer.createPdfKitDocument(docDefinition);
    var objDate = new Date();
    var strDate =  objDate.getFullYear() + '' + objDate.getMonth() + '' + objDate.getDay()+ '' + objDate.getHours() + objDate.getMinutes() + objDate.getSeconds();
    try {
      doc = fs.createWriteStream(sails.config.paths.pdf + strDate + '.pdf');
      pdfDoc.pipe(doc);
      pdfDoc.end();
      console.log('PDF created Time Spent: ' + new Date()-now);
    } catch (err) {
      throw err;
    }
    return   strDate;

  }

}
