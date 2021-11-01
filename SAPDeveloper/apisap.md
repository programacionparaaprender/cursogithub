

### CRUD SAP
https://help.sap.com/viewer/0eec0d68141541d1b07893a39944924e/2.0.00/en-US/469e20f56d6110148618da80690c499b.html


### repositorios
github.com/customer-stories/sap

### services layers
https://sap-samples.github.io/smb-summit-hackathon/b1sl.html

### peticiones al services layers
https://answers.sap.com/questions/12985881/service-layer-payments.html
GET https://<host>/b1s/v2/PurchaseInvoices?$select=DocEntry&$filter=DocNum eq 667

### crear nota de credito
en el DocumentLines:[
    {
        BaseType:13,
        BaseEntry:502,
        BaseLine:0
    }
]

### crear un campo por medio de services layers
crear un campo a traves de postman
https://IP:50000/b1s/v1/UserFieldsMD
{
    "Name": "INT_Migrado",
    "Type": "db_Alpha",
    "Size": 1,
    "Description": "[Serv.Int]¿Migrado?",
    "SubType": "st_None",
    "DefaultValue": "N",
    "TableName": "OCRD",
    "FieldID": 1,
    "EditSize": 1,
    "Mandatory": "tNO",
    "ValidValuesMD": [
        {
            "Value": "N",
            "Description": "NO"
        },
        {
            "Value": "Y",
            "Description": "SI"
        }
    ]
}
