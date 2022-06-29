db.TipoAlimento.insertMany([
    {
        _id: 1,
        nombre: 'Chatarra'
    },
    {
        _id: 2,
        nombre: 'Saludable'
    },
    {
        _id: 3,
        nombre: 'Fitness'
    }
])

db.InformacionNutricional.insertMany([{
    calorias: 278.000001,
    proteinas: 29.6700001,
    carbohidratos: 6.3700001,
    grasas: 14.1100001,
    peso_ref: 125.000001,
    _id: 1
},{
    calorias: 306.000001,
    proteinas: 16.8800001,
    carbohidratos: 32.6500001,
    grasas: 12.200001,
    peso_ref: 252.000001,
    _id: 2
},{
    calorias: 125.000001,
    proteinas: 20.9100001,
    carbohidratos: 6.700001,
    grasas: 1.4400001,
    peso_ref: 186.000001,
    _id: 3
}])

db.Alimento.insertMany([
    {
        id_tipo_alimento: 1,
        id_informacion_nutricional: 1,
        nombre: 'hamburguesa'
    },
    {
        id_tipo_alimento: 2,
        id_informacion_nutricional: 3,
        nombre: 'Estofado de Pollo'
    },
    {
        id_tipo_alimento:2,
        id_informacion_nutricional: 3,
        nombre: 'Ceviche'
    }
])

db.Receta.insertMany([
    {
        nombre: 'hamburguesa',
        duracion: 120.00001,
        pasos: 'poner un pan luego una carne y luego otro pan',
        url: 'https://www.youtube.com/watch?v=mCdA4bJAGGk',
        ingredientes:['pan', 'carne']
    },
    {
        nombre: 'Estofado de Pollo',
        duracion: 2700.00001,
        pasos: 'pon pollo zanahoria y papa en agua herbida y espera',
        url: 'https://www.youtube.com/watch?v=mCdA4bJAGGk',
        ingredientes:['pollo', 'zanahoria', 'papa', 'agua']
    },
    {
        nombre: 'Ceviche',
        duracion: 1800.00001,
        pasos: 'lucha con el pez quemalo con limon y ponle las ensaladas que quieras',
        url: 'https://www.youtube.com/watch?v=mCdA4bJAGGk',
        ingredientes:['pezcado', 'limon', 'lechuga', 'cebolla', 'choclo']
    }
])

