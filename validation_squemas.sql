// tipo alimento

db.createCollection('TipoAlimento', {
    validator: {
        $jsonSchema:{
            bsonType: 'object',
            required: ['nombre'],
            properties:{
                'nombre': {
                    bsonType: 'string',
                    description: 'string necesario'
                }
            }
        }
    }
})

// InformacionNutricional

db.createCollection('InformacionNutricional', {
    validator: {
        $jsonSchema:{
            bsonType: 'object',
            required: ['calorias', 'proteinas', 'carbohidratos', 'grasas', 'peso_ref'],
            properties:{
                'calorias': {
                    bsonType: 'double',
                    description: 'double necesario, minimo 0',
                    minimum: 0.0
                },
                'proteinas': {
                    bsonType: 'double',
                    description: 'double necesario, minimo 0',
                    minimum: 0.0
                },
                'carbohidratos': {
                    bsonType: 'double',
                    description: 'double necesario, minimo 0',
                    minimum: 0.0
                },
                'grasas': {
                    bsonType: 'double',
                    description: 'double necesario, minimo 0',
                    minimum: 0.0
                },
                'peso_ref': {
                    bsonType: 'double',
                    description: 'double necesario, minimo 0',
                    minimum: 0.0
                }
            }
        }
    }
})

// Receta

db.createCollection
(
  "Receta",
  {
    validator:
    {
      $jsonSchema:
      {
        required: ["nombre", "duracion", "pasos", "url", 'ingrediente'],
        properties:
        {
          nombre:
          {
            bsonType: "string",
            description: "string necesario"
          },
          duracion:
          {
            bsonType: "double",
            description: "string necesario, minimo 0",
            minimum: 0
          },
          pasos:
          {
            bsonType: "string",
            description: "string necesario"
          },
          url:
          {
            bsonType: "string",
            description: "string necesario"
          },
          ingredientes: {
            bsonType: "array",
            minItems: 0,
            items: {
                bsonType: 'objectId',
                description: 'objectId necesario'
            }
          }
        }
      }
    }
  }
)

// Alimento

db.createCollection('Alimento', {
    validator: {
        $jsonSchema:{
            bsonType: 'object',
            required: ['id_tipo_alimento', 'id_informacion_nutricinal', 'id_receta', 'nombre'],
            properties:{
                'nombre': {
                    bsonType: 'string',
                    description: 'string necesario'
                },
                'id_tipo_alimento': {
                    bsonType: 'objectId',
                    description: 'objectId necesario'
                },
                'id_informacion_nutricinal': {
                    bsonType: 'objectId',
                    description: 'objectId necesario'
                },
                 'id_receta': {
                    bsonType: 'objectId',
                    description: 'objectId necesario'
                }
            }
        }
    }
})