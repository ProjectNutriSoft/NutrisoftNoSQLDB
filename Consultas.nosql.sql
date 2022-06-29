// 1. buscar receta por nombre
db.Receta.find({
    nombre: 'hamburguesa'
})

// 2. buscar alimentos 'Chatarra'

db.Alimento.find({
    id_tipo_alimento: 2
})

// 3. Recetas con duracion menor a 800
db.Receta.find({
    duracion: {
        $lt: 800
    }
})

// 4. Tipos de alimento
db.TipoAlimento.find()

// 5. Informacion nutricional con calorias mayores a 50

db.InformacionNutricional.find({
    calorias: {
        $gte: 50
    }
})

// 6. Recetas que solo usan 2 ingredientes

db.Receta.find({
    ingredientes: {
        $size: 2
    }
})

// 7. Alimentos que empiezen por h

db.Alimento.find({
    nombre: {
        $regex: /^h.*/
    }
})

// 8. InformacionNutricional con calorias menores a 200 y proteinas mayores a 8

db.InformacionNutricional.find({
    calorias: {
        $lt: 200
    },
    proteinas: {
        $gt: 8
    }
})

// 9. Receta que contenga pan y carne

db.Receta.find({
    ingredientes: ['pan', 'carne']
})