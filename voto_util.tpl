estados_map
<script src="https://unpkg.com/@tabler/core@latest/dist/js/tabler.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/@tabler/core@latest/dist/css/tabler.min.css">
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
    integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
    crossorigin="" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
    integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
    crossorigin=""></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"
    integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

<style>
    .container,
    .container-lg,
    .container-md,
    .container-sm,
    .container-xl,
    .container-xxl {
        max-width: 1800px;
    }
</style>


<div class="page-wrapper">
    <div class="container-xl">
        <!-- Page title -->
        <div class="page-header d-print-none">
            <div class="row align-items-center">
                <div class="col">
                    <!-- Page pre-title -->
                    <div class="page-pretitle">
                        <!-- Download SVG icon from http://tabler-icons.io/i/rocket -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                            stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                            stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <path
                                d="M4 13a8 8 0 0 1 7 7a6 6 0 0 0 3 -5a9 9 0 0 0 6 -8a3 3 0 0 0 -3 -3a9 9 0 0 0 -8 6a6 6 0 0 0 -5 3" />
                            <path d="M7 14a6 6 0 0 0 -3 6a6 6 0 0 0 6 -3" />
                            <circle cx="15" cy="9" r="1" />
                        </svg> Caracol Pacheco
                    </div>
                    <h2 class="page-title">
                        Voto-Útil
                    </h2>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row row-deck row-cards">




                <div class="col-12">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Tendencia por partido político</h3>
                                    <div id="chart-diputados"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Mapa de diputaciones </h3>
                                    <div id="mapid" style="height: 600px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Estadísticas</h3>


                                    <div class="mb-3">
                                        <div class="row g-2">
                                            <div class="col-5">
                                                <label class="form-label">Estado</label>

                                                <select class="form-select" name="estados" id="estados"
                                                    selected="Seleccione un estado"></select>
                                            </div>
                                            <div class="col-4">
                                                <label class="form-label">Distrito</label>
                                                <select class="form-select" name="distrito" id="distrito" disabled
                                                    selected="Seleccione un distrito"></select>
                                            </div>
                                        </div>
                                    </div>
                                    <br><br>

                                    <div id="tablita" class="row row-cards">
                                        <div class="col-md-6 col-lg-4">
                                            <div class="table-responsive">
                                                <table class="table table-vcenter card-table table-striped">
                                                    <tbody id="info_cand">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-8">
                                            <div id="chart-pie" style="min-height: 600px;"></div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <footer class="footer footer-transparent d-print-none">
        <div class="container">
            <div class="row text-center align-items-center flex-row-reverse">
                <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                    <ul class="list-inline list-inline-dots mb-0">
                        <li class="list-inline-item">
                            Licencia open source
                        </li>
                        <li class="list-inline-item">
                            <a href="" class="link-secondary" rel="noopener">v1.0.0-beta1</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>


<script>
    var estados_raw = {{ caracol.estados_data }};
    var cat_distrito = {{ caracol.estados_seldis }};
    var cat_estados = {{ caracol.estados_selesdo }};
    var estado_sel = 1;
    var distrito_sel = 1;
    var $select = $('#estados');
    var $select_dis = $('#distrito');
    $('#tablita').hide();
    
    function findDistrito(candidatura) {
        return candidatura.id_estado == estado_sel && candidatura.id_distrito == distrito_sel;
    }

    var candidato = estados_raw.find(findDistrito);

    function crearGrafica(){
        candidato = estados_raw.find(findDistrito);

        $('#tablita').show();
        info_cand = $("#info_cand");
        info_cand.empty();
        info_cand.append('<tr><td>Diputado</td><td>' + candidato.diputado + '</td></tr>');
        info_cand.append('<tr><td>Distrito</td><td>' + candidato.nombre_distrito + '</td></tr>');
        info_cand.append('<tr><td>Estado</td><td>' + candidato.nombre_estado + '</td></tr>');
        info_cand.append('<tr><td>Coalición</td><td>' + candidato.coalicion + '</td></tr>');
        var options = {
            series: [
                candidato.morena,
                candidato.pan,
                candidato.pri,
                candidato.pvem,
                candidato.prd,
                candidato.movimiento_ciudadano,
                candidato.pt,
                candidato.encuentro_social,
                candidato.fsm,
                candidato.rsp,
                candidato.nueva_alianza,
                candidato.independiente,
                candidato.no_sabe
            ],
            chart: {
                type: "donut",
                fontFamily: 'inherit',
                height: 600,
                sparkline: {
                    enabled: true
                },
                animations: {
                    enabled: false
                },
            },
            fill: {
                opacity: 1,
            },
            labels: ["Morena","PAN","PRI","PVEM","PRD","MC","PT","ES","FSM","RSP","NA","Independiente","No Sabe"],
            colors: ['#7d1a27', '#02579c', '#ec3922', '#9fcf67', '#ffd202', '#ff7e00', '#e8132e', '#662680', '#e576ab', '#c92139', '#4b21ca', '#a0ca21', '#caca21'],
            grid: {
                strokeDashArray: 4,
            },
            legend: {
                show: true,
                position: 'bottom',
                offsetY: 12,
                markers: {
                    width: 10,
                    height: 10,
                    radius: 100,
                },
                itemMargin: {
                    horizontal: 8,
                    vertical: 8
                },
            },
            tooltip: {
                fillSeriesColor: false
            }
        };
        var chart = new ApexCharts(document.querySelector("#chart-pie"), options);
        chart.render();

    }

    $.each(cat_estados, function (id, name) {
        $select.append('<option value=' + name.id_estado + '>' + name.nombre_estado + '</option>');
    });

    $select.val("Seleccione un estado");
    $select_dis.val("Seleccione un distrito");

    $('#estados').on('change', function () {
        estado_sel = this.value;
        $select_dis.prop('disabled', false);
        $select_dis.val("1");
        $select_dis.empty();
        $.each(cat_distrito, function (id, name) {
            if (estado_sel == name.id_estado) {
                $select_dis.append('<option value=' + name.id_distrito + '>' + ('0000' + name.id_distrito).slice(-4) + '</option>');
            }
        });
        distrito_sel = $select_dis.val()
        crearGrafica();
    });

    $('#distrito').on('change', function () {
        distrito_sel = this.value;
        crearGrafica();
    });


</script>

<script>
    var diputados_map = {{ caracol.diputados_graph | tojson }};
    var options = {
        series: diputados_map,
        chart: {
            type: 'bar',
            height: 350
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '55%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
        },
        xaxis: {
            categories: ['voto-util.app', 'oraculus', 'financiero-2021', 'massive caller-2021'],
        },
        fill: {
            opacity: 1
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return val + "%"
                }
            }
        },
        colors: ['#7d1a27', '#02579c', '#ec3922', '#9fcf67', '#ffd202', '#ff7e00', '#e8132e', '#662680', '#e576ab', '#c92139', '#4b21ca', '#a0ca21', '#caca21'],
        labels: ["Morena","PAN","PRI","PVEM","PRD","MC","PT","ES","FSM","RSP","NA","Independiente","No Sabe"]
    };

    var chart = new ApexCharts(document.querySelector("#chart-diputados"), options);
    chart.render();

</script>

<script>

    var mymap = L.map('mapid', {
        minZoom: 5,
        maxZoom: 8
    }).setView([23.634501, -102.552784], 5);
    var southWest = L.latLng(13.642429, -117.671362),
        northEast = L.latLng(60.101371, -89.764426);
    var bounds = L.latLngBounds(southWest, northEast);

    mymap.setMaxBounds(bounds);
    mymap.on('drag', function () {
        mymap.panInsideBounds(bounds, { animate: false });
    });


    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWNydXowNjA5IiwiYSI6ImNrbjB1enkzeDBybGMybm5uaTUzdGFvODYifQ.T_vS24hIkLMqg0BHGpqMhA', {
        maxZoom: 18,
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
            'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1
    }).addTo(mymap);

    /* var popup = L.popup();
     function onMapClick(e) {
         popup
             .setLatLng(e.latlng)
             .setContent("You clicked the map at " + e.latlng.toString())
             .openOn(mymap);
     }
 
     mymap.on('click', onMapClick);
 */
    geojson = {{ caracol.estados_map }};

    function findMinMax(arr) {
        let min = arr[0].valor, max = arr[0].valor;
        let index = 0;
        for (let i = 1, len = arr.length; i < len; i++) {
            let v = arr[i].valor;
            min = (v < min) ? v : min;
            index = (v > max) ? i : index;
            max = (v > max) ? v : max;
        }
        return arr[index];
    }

    function getColor(properties) {
        partidos = []
        coalicion_morena = properties.Morena + properties.PT + properties.ES + properties.PVEM

        if (properties.name == 'CAMPACHE' || properties.name == 'OAXACA' || properties.name == 'BAJA CALIFORNIA' || properties.name == 'BAJA CALIFORNIA SUR' || properties.name == 'COLIMA' ||
            properties.name == 'TLAXCALA' || properties.name == 'ZACATECAS' || properties.name == 'MICHOACÁN' ||
            properties.name == 'NAYARIT' || properties.name == 'SAN LUIS POTOSÍ' || properties.name == 'SONORA' || properties.name == 'SINALOA') {
            coalicion_va_por_mexico = properties.PAN + properties.PRI + properties.PRD
            partidos.push({ 'name': 'va_por_mexico', 'valor': coalicion_va_por_mexico });
        }

        else if (properties.name == 'MORELOS' || properties.name == 'VERACRUZ' || properties.name == 'GUERRERO' || properties.name == 'NUEVO LEÓN') {
            coalicion_va_por_mexico = properties.PRI + properties.PRD
            partidos.push({ 'name': 'va_por_mexico', 'valor': coalicion_va_por_mexico });
            partidos.push({ 'name': 'pan', 'valor': properties.PAN });
        }

        else if (properties.name == 'AGUASCALIENTES' || properties.name == 'CHIHUAHUA') {
            coalicion_va_por_mexico = properties.PAN + properties.PRD
            partidos.push({ 'name': 'va_por_mexico', 'valor': coalicion_va_por_mexico });
            partidos.push({ 'name': 'pri', 'valor': properties.PRI });
        }

        else {
            partidos.push({ 'name': 'pri', 'valor': properties.PRI });
            partidos.push({ 'name': 'pan', 'valor': properties.PAN });
            partidos.push({ 'name': 'prd', 'valor': properties.PRD });
        }

        partidos.push({ 'name': 'juntos_haremos_historia', 'valor': coalicion_morena });
        partidos.push({ 'name': 'mc', 'valor': properties.MC });
        partidos.push({ 'name': 'fsm', 'valor': properties.FSM });
        partidos.push({ 'name': 'rsp', 'valor': properties.RSP });
        partidos.push({ 'name': 'NO SABE', 'valor': properties.Nosabe });
        partidos.push({ 'name': 'INDEPENDIENTE', 'valor': properties.Independiente });

        ganador = findMinMax(partidos);
        return ganador.name == 'juntos_haremos_historia' ? '#7d1a27' :
            ganador.name == 'va_por_mexico' ? '#02579c' :
                ganador.name == 'pri' ? '#ec3922' :
                    ganador.name == 'pan' ? '#02579c' :
                        ganador.name == 'prd' ? '#ffd202' :
                            ganador.name == 'fsm' ? '#FC4E2A' :
                                ganador.name == 'rsp' ? '#FD8D3C' :
                                    ganador.name == 'NO SABE' ? '#FEB24C' :
                                        ganador.name == 'INDEPENDIENTE' ? '#FED976' :
                                            '#FFEDA0';
    }

    function style(feature) {
        return {
            fillColor: getColor(feature.properties),
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3',
            fillOpacity: 0.7
        };
    }
    L.geoJson(geojson, {
        style: style,
        onEachFeature: function (feature, layer) {
            //layer.bindPopup(feature.properties.name);
            layer.bindPopup(
                '<div class="card-body border-bottom py-3">' +

                '<h3 class="card-title">' + feature.properties.name + '</h3>' +
                '<div class="card-subtitle">' + feature.properties.diputaciones + ' diputaciones</div>' +

                '<table class="table table-vcenter card-table table-striped">' +
                '<caption style="caption-side:top">Promedio de votación</caption><tbody>' +
                '<tr class="unchanged"><th>Morena</th><td>' + feature.properties.Morena + '</td></tr>' +
                '<tr class="unchanged"><th>PAN</th><td>' + feature.properties.PAN + '</td></tr>' +
                '<tr class="unchanged"><th>PRI</th><td>' + feature.properties.PRI + '</td></tr>' +
                '<tr class="unchanged"><th>PT</th><td>' + feature.properties.PT + '</td></tr>' +
                '<tr class="unchanged"><th>PRD</th><td>' + feature.properties.PRD + '</td></tr>' +
                '<tr class="unchanged"><th>MC</th><td>' + feature.properties.MC + '</td></tr>' +
                '<tr class="unchanged"><th>ES</th><td>' + feature.properties.ES + '</td></tr>' +
                '<tr class="unchanged"><th>FSM</th><td>' + feature.properties.FSM + '</td></tr>' +
                '<tr class="unchanged"><th>PVEM</th><td>' + feature.properties.PVEM + '</td></tr>' +
                '<tr class="unchanged"><th>RSP</th><td>' + feature.properties.RSP + '</td></tr>' +
                '<tr class="unchanged"><th>Independiente</th><td>' + feature.properties.Independiente + '</td></tr>' +
                '<tr class="unchanged"><th>No sabe</th><td>' + feature.properties.Nosabe + '</td></tr>' +
                '</tbody></table>' +
                '</div>'
            );
        }
    }).addTo(mymap);

</script>
