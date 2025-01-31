/*
    El acceso público a cantidades gigantes de datos recolectados por gobiernos, 
    corporaciones, organizaciones e individuos está cambiando nuestra cultura, desde 
    la manera en que socializamos hasta cómo pensamos ideas intangibles como la 
    privacidad. Estos datos son muy frecuentemente accesados a través de estructuras
    de software llamadas APIs.
    
    Portal de datos abiertos del Partido de General Pueyrredón
    https://datos.mardelplata.gob.ar/
*/

let callesMdp;

function preload() {
    callesMdp = loadJSON("callejero.geojson");
    // https://datos.mardelplata.gob.ar/sites/default/files/callejero.geojson
}

function setup() {
    createCanvas(400, 400);

    // Imprimi los nombres de las primeras cinco calles almacenadas en el archivo
    for (let i = 0; i < 5; i++) {
        print(callesMdp.features[i].properties.nom_comple);
    }
}

function draw() {
    background(220);
}