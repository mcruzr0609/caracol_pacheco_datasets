<script src="https://unpkg.com/@tabler/core@latest/dist/js/tabler.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/@tabler/core@latest/dist/css/tabler.min.css">
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script src="//cdn.amcharts.com/lib/4/core.js"></script>
<script src="//cdn.amcharts.com/lib/4/charts.js"></script>
<script src="//cdn.amcharts.com/lib/4/plugins/wordCloud.js"></script>
<script src="//cdn.amcharts.com/lib/4/themes/animated.js"></script>

<style>
.container, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    max-width: 1700px;
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
                        Caracol Pacheco
                    </div>
                    <h2 class="page-title">
                        #{{ caracol.trend}}
                    </h2>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row row-deck row-cards">
                <div class="col-sm-6 col-lg-3">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.tweets}}</div>
                            <div class="text-muted mb-3">Tweets</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.usuarios}}</div>
                            <div class="text-muted mb-3">Usuarios</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.comentarios}}</div>
                            <div class="text-muted mb-3">Reply</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.likes}}</div>
                            <div class="text-muted mb-3">Likes</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.retweets}}</div>
                            <div class="text-muted mb-3">Retweets</div>
                        </div>
                    </div>
                </div>



                <div class="col-12">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Comportamiento temporal de la tendencia</h3>
                                    <div id="chart-mentions"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Palabras más frecuentes</h3>
                                    <div id="charfreq-words"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body" style="position: relative;">
                                    <h3 class="card-title">Hashtags más frecuentes</h3>
                                    <div id="charfreq-hashtags"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-lg-6">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <h3 class="card-title">Top de usuarios mencionados</h3>
                                    <div class="card-table table-responsive">
                                        <table class="table table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Usuario</th>
                                                    <th>Menciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {% for key,value in caracol.top_mentions.items() %}
                                                <tr>
                                                    <td class="w-1">
                                                        <span class="avatar avatar-sm"
                                                            style="background-image: url(data:image/jpeg;base64,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)"></span>
                                                    </td>
                                                    <td class="td-truncate">
                                                        <div class="text-truncate">
                                                            {{ key }}
                                                        </div>
                                                    </td>
                                                    <td class="text-nowrap text-muted">{{ value }}</td>
                                                </tr>
                                                {% endfor %}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <h3 class="card-title">Top de hashtags</h3>
                                    <div class="card-table table-responsive">
                                        <table class="table table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th>Hashtag</th>
                                                    <th>Menciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {% for key,value in caracol.top_hashtags.items() %}
                                                <tr>
                                                    <td class="td-truncate">
                                                        <div class="text-truncate">
                                                            {{ key }}
                                                        </div>
                                                    </td>
                                                    <td class="text-nowrap text-muted">{{ value }}</td>
                                                </tr>
                                                {% endfor %}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-12">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <h3 class="card-title">Noticias</h3>
                                    <div class="divide-y">

                                        {% for item in caracol.news%}
                                        <div>
                                            <div class="row">
                                                <div class="col-auto">
                                                    <span class="avatar"  style="font-size:6px">{{item.newspaper}}</span>
                                                </div>
                                                <div class="col">
                                                    <div class="text-truncate">
                                                        <a href="{{item.link}}" target="_blank"><strong>{{item.title}}</strong></a>
                                                    </div>
                                                    <div class="text-muted">{{item.abstract}}</div>
                                                </div>
                                                <div class="col-auto align-self-center">
                                                    <div class="badge bg-primary"></div>
                                                </div>
                                            </div>
                                        </div>
                                        {% endfor %}

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
    var tweets_raw = JSON.parse({{ caracol.tweets_graph | tojson }});
    var tweets_map = tweets_raw.index.map(function (e, i) {
        return [e, tweets_raw.data[i]];
    });

    var reply_raw = JSON.parse({{ caracol.reply_graph | tojson }});
    var reply_map = reply_raw.index.map(function (e, i) {
        return [e, reply_raw.data[i]];
    });

    var retweets_raw = JSON.parse({{ caracol.retweets_graph | tojson }});
    var retweets_map = retweets_raw.index.map(function (e, i) {
        return [e, retweets_raw.data[i]];
    });



    var options = {
        series: [
            {
                name: "Tweets",
                data: tweets_map
            },
            {
                name: "Reply",
                data: reply_map
            },
            {
                name: "Retweets",
                data: retweets_map
            }
        ],
        chart: {
            id: 'area-datetime',
            type: 'bar',
            height: 350,
            zoom: {
                autoScaleYaxis: true
            },
            stacked: true
        },
        dataLabels: {
            enabled: false
        },
        markers: {
            size: 0,
            style: 'hollow',
        },
        xaxis: {
            labels: {
                padding: 0,
            },
            tooltip: {
                enabled: false
            },
            axisBorder: {
                show: false,
            },
            type: 'datetime',
        },
        tooltip: {
            x: {
                format: 'dd MMM yyyy'
            }
        },
        fill: {
            opacity: 1
        },
        dataLabels: {
            enabled: false,
        },
        plotOptions: {
            bar: {
                columnWidth: '50%',
            }
        },
        colors: ["#206bc4", "#79a6dc", "#bfe399"],
        grid: {
            padding: {
                top: -20,
                right: 0,
                left: -4,
                bottom: -4
            },
            strokeDashArray: 4,
            xaxis: {
                lines: {
                    show: true
                }
            }
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart-mentions"), options);
    chart.render();

</script>

<style>
    #charfreq-words {
        width: 100%;
        height: 280px;
    }

    #charfreq-hashtags {
        width: 100%;
        height: 280px;
    }
</style>

<script>
    var cloudword_mentions_raw = JSON.parse({{ caracol.cloudword_mentions | tojson }});
    am4core.useTheme(am4themes_animated);
    var chart_words = am4core.create("charfreq-words", am4plugins_wordCloud.WordCloud);
    var series_words = chart_words.series.push(new am4plugins_wordCloud.WordCloudSeries());
    series_words.data = cloudword_mentions_raw;
    series_words.dataFields.word = "tag";
    series_words.dataFields.value = "weight";
    series_words.labels.template.tooltipText = "{tag}: {weight}";
    series_words.maxFontSize = am4core.percent(50);

    var hashtags_raw = JSON.parse({{ caracol.cloudword_hashtags | tojson }});
    am4core.useTheme(am4themes_animated);
    var chart_hashtags = am4core.create("charfreq-hashtags", am4plugins_wordCloud.WordCloud);
    var series_hashtags = chart_hashtags.series.push(new am4plugins_wordCloud.WordCloudSeries());
    series_hashtags.data = hashtags_raw;
    series_hashtags.dataFields.word = "tag";
    series_hashtags.dataFields.value = "weight";
    series_hashtags.labels.template.tooltipText = "{tag}: {weight}";
    series_hashtags.maxFontSize = am4core.percent(50);
</script>