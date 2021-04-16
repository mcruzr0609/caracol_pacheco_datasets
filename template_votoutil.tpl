<script src="https://unpkg.com/@tabler/core@latest/dist/js/tabler.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/@tabler/core@latest/dist/css/tabler.min.css">
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script src="//cdn.amcharts.com/lib/4/core.js"></script>
<script src="//cdn.amcharts.com/lib/4/charts.js"></script>
<script src="//cdn.amcharts.com/lib/4/plugins/wordCloud.js"></script>
<script src="//cdn.amcharts.com/lib/4/themes/animated.js"></script>

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
                            <div class="text-muted mb-3">
                                <!-- Download SVG icon from http://tabler-icons.io/i/brand-twitter -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path
                                        d="M22 4.01c-1 .49 -1.98 .689 -3 .99c-1.121 -1.265 -2.783 -1.335 -4.38 -.737s-2.643 2.06 -2.62 3.737v1c-3.245 .083 -6.135 -1.395 -8 -4c0 0 -4.182 7.433 4 11c-1.872 1.247 -3.739 2.088 -6 2c3.308 1.803 6.913 2.423 10.034 1.517c3.58 -1.04 6.522 -3.723 7.651 -7.742a13.84 13.84 0 0 0 .497 -3.753c-.002 -.249 1.51 -2.772 1.818 -4.013z" />
                                </svg> Tweets
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.usuarios}}</div>
                            <div class="text-muted mb-3">
                                <!-- Download SVG icon from http://tabler-icons.io/i/users -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <circle cx="9" cy="7" r="4" />
                                    <path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                                    <path d="M16 3.13a4 4 0 0 1 0 7.75" />
                                    <path d="M21 21v-2a4 4 0 0 0 -3 -3.85" />
                                </svg> Usuarios
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.comentarios}}</div>
                            <div class="text-muted mb-3">
                                <!-- Download SVG icon from http://tabler-icons.io/i/message-circle -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
                                    <line x1="12" y1="12" x2="12" y2="12.01" />
                                    <line x1="8" y1="12" x2="8" y2="12.01" />
                                    <line x1="16" y1="12" x2="16" y2="12.01" />
                                </svg> Reply
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.likes}}</div>
                            <div class="text-muted mb-3">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path
                                        d="M19.5 13.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                                </svg> Likes
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-2">
                    <div class="card">
                        <div class="card-body p-2 text-center">
                            <div class="h1 m-0">{{ caracol.retweets}}</div>
                            <div class="text-muted mb-3"> <svg xmlns="http://www.w3.org/2000/svg" class="icon"
                                    width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                    fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M4 12v-3a3 3 0 0 1 3 -3h13m-3 -3l3 3l-3 3" />
                                    <path d="M20 12v3a3 3 0 0 1 -3 3h-13m3 3l-3 -3l3 -3" />
                                </svg> Retweets</div>
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

                <!--Tops likazos-->
                <div class="col-12">
                    <div class="card">
                        <ul class="nav nav-tabs" data-bs-toggle="tabs">
                            <li class="nav-item">
                                <a href="#tabs-replys" class="nav-link active" data-bs-toggle="tab">Replys</a>
                            </li>
                            <li class="nav-item">
                                <a href="#tabs-likes" class="nav-link" data-bs-toggle="tab">Likes</a>
                            </li>
                            <li class="nav-item">
                                <a href="#tabs-retweets" class="nav-link" data-bs-toggle="tab">Retweets</a>
                            </li>
                        </ul>
                        <div class="card-body" style="height: calc(24rem + 10px); overflow:hidden; overflow-y:scroll;">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="tabs-replys">
                                    <h3 class="card-title">Top de replys</h3>
                                    <div class="card-table table-responsive">
                                        <table class="table table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Usuario</th>
                                                    <th>Comentario</th>
                                                    <th>Reply</th>
                                                    <th>Likes</th>
                                                    <th>Retweets</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {% for key,value in caracol.top_replys.iterrows() %}
                                                <tr>
                                                    <td class="w-1">
                                                        <span class="avatar avatar-sm"
                                                            style="background-image: url(data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ8NDQ0NFREWFhURFRUYHSggGBomGxUVITEhJSkrLi4uFx8/ODMsNygtLisBCgoKDg0OFxAQFS0dHR0rLS0tLS0tLS0tKysrKysrLS0rLSstLSstKy0tLS0rLSstLS0tNy0tKys3Kys3LS0rLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEBAQADAQEAAAAAAAAAAAAAAQYCBAUDB//EADwQAQACAQIDBQMIBwkAAAAAAAABAgMEEQUSUQYhIjFBYXFyEzJCUoGRodEUM0OxweHwI1Nic4KSorLx/8QAGgEBAQEAAwEAAAAAAAAAAAAAAAEFAgMEBv/EACQRAQACAgIDAAEFAQAAAAAAAAABAgMRBEESITEFEyIyQlFh/9oADAMBAAIRAxEAPwD1n0T5ZQQAAFBAAAAUEAAAAAAAAAABQQAAAA7BRUAAEAAABQQFBAUEABQQFAABAUEABQQAAA7UVBAAAABQAQAAFBAAUEAAAABQAAQAAAAFO1RUEAAAAAAAAFBF3oEV9MOC+SeXHS156ViZcLZK0+y7KYr2+Q9PD2c1du+aVp8VoiXntzKQ9FeDe319J7MaqP7ufZzOMc2suU8C8OhquGajD35MVoj60RzV++HdXkUt26L8bJXp03fDomJhT1CIoIAAAAKAACHYAAoIAACggKCKCCpM6+uURM+oaLg/ZqbxGTU71rPfGOO60+/oz+RzP61aXG4O/wB1mp0+mx4qxXHStK9Ijb/1m3yWt9lqUxVr8h9dnB2aNj30pMdXKJcZjfTxuKdncObe2OIxZPPeI8Np9sPVh5Vq/ZeLPw629wx+t0eTBeaZKzW3pPpaOsNXFlrePTHy4bUn2+Dt06UAAAAAAAAOxVREUBQQAAFBAFFiOnf0jq42mKxtyis2n02HZ3gUYojNmrvlnvrSfLH7feyeTyptOobHF4kREWloXhlomyKuwGwGwbTYHV4joMeppNMke2tvpUt1h3Yss4526M2GMkaYHiOhvpsk47x7a29LV6w2sOX9SNsHPhnHPt1Xd9dAbFBAAAAADsBAVQQAFBAAUEBp+ynCObbU5I7o/VVmPOfr/kzOXyP6w1eFxv7S1bM219KIoAKACbAgrocX4bXVYppPdeO/Hf1i35O/BmmkvNyMMZYfn2bFbHa1LxtaszEw3K2i1fKGBek1tqXBz269e/QAACggAB2GyggoIAAAAoJsj3Lv8F4fOpzVp9CPFknpWPzefkZv06vTxsM3tp+g0pFYiKxERERERHlEdGHubTMy+hrWK6iHNxclEUAAAAEBJFZrtdwzmr+k0jxUjbJEetev2NHh5tftll87BuPKIZJqwx9alAAAUEAAAVBFAAAAAUEJlYjfxu+zeg+QwRMx/aZdr26xHpDD5OXys3+Jh8aRPb13ln29qjjvawCgAAAAAgOGSkWrNbRvFomJj2OVZ1O0vXyrp+dcW0U6fPfF6RO9J61ny/r2N3Bk86w+d5GLwtMOm73nAAAUEAOxVEAQAAAUEXY9DgWj+X1FKzHhr47/AAx6PLycnhR6uLj87v0FhzO5fRRGlQUAFEUAAAAEBJI/07Z3tjoufFXPEeLFO1vgn+b38LJq2mdz8W48oY5r7Y2lVEQUAEAOw2UAEAAAAAka/shpeXFfNMd+S3LX4Y/myObk3Om3+PxajyaGHgaSgoigAu4gCgAAgIkq+WpwxkpfHbyvW1Z+12Ut42iYdeSnlSYl+a5sU473pPnS1qz9kvoMdotTb5rJWa3mHzc3CAFABAU7EUAEAACFFRSImZiI9docbzqFpG5fo2hwRixY8cfRpEfb6sDNPlbb6Xj18aRD77uufruhyiUFBRAFA3BRDcDcEFAQJ9sP2s03yeqm0eWWsX/1eU/uhs8O3lXTC5tNXmXivbDPhRUAABTsN1RBRAAAAIHf4Jg+U1WGvpzc0+6O95+TbVJeni08rw3zC2+jj5oFUFiQXdBQUQABQAQAEFZztnh3xYsnrS/LPut/OIaHBvqdMz8jTcbZFrMVQQAAA7DZUUVEAAFURB7vZDHvnvafoY5298zs8PNnVdNH8fG7bbBkNuAUBVDdByiUF3AEUDcEAABJkV5naLHz6TNH1Y5498TEvVxp1kh5OZG8csE3OnzvxQQAAAAQVRBQQFBAn60/Yyndnt8EMznz7hr/AI6PUtKzGqAqgKAoLugu4LuBuBuCbgm4JKjr6+vNhzV648kf8ZdmKdWh0543SX5y+gr8h81b7I5OIgAAp2IoAIAACgitT2N+Zm+Ov7pZfP8AsNf8b/GWiZrUUADcFUIFAXcDcADcAAEB89T+ryf5d/8ArLsx/wAodeX+MvzaH0Ff4w+Yt/KRXEBQQA7FVEFEAAABekafsdbw549d6T+DK58e4bP46fUw0e7Nai7gbgoACqoAAAAAAAj46y22LLM+UY7z+EuzF7vDqzTqkvziG/T5D5q32Vc3FEAAA7BQBUEBQACSHu9kMu2XJT61N/ul4OdX1tpfj7atpq2R02gFBQNwUAAAFVQAAREHQ45l5NLmn1mnL9szt/F6ONG7w83KtqksE3oh87P0EAAUEOwAUEAAABZHe4Jn+S1OK3lE25Z909zzcmnlSXq4t/G8N2wZjT6GJ3AKAAAoG4KBuCgAAAgPA7X59sWPH63vzT8NY/OXv4VPe2d+Qv8At0ybXmfbEAAAADtQQUEAAAFNBE9PNLRuNOVbamJb7hupjNhx5PWa7T8UebA5FfGz6Tj38qRLsumXfKgAAAKgAgoAKCgiwSxHaPVfK6m0R83HHyce+PP8f3NriU8abYHMyed9Q8t63iFBABQRVEQUVBAAAAAaDsrreW9sFp7r+Knx9PthnczDuNw1OBn1+2WpZTZj4AAAAKgAgoAKCh9dHjGtjT4bX38U+GkdbT/W70cbHN7vNyssY6aYKZ37575neZ9st2I1GofPTPuZRycYVBAAAU7VBAAAAFBABXKl5rMWrO0xMTE+sS43rExqVx2ms7brhOvjU4ov9OO69eluvuYefFNLPouNmjJV3XnekJhNgooCAKgoGwKLpxtaIiZnuiImZnpC1jc+nG1oiGI47xH9Iy+H9VTup7etm3xsPjDA5efztp5j1vGIKCAAAoqbCAKCAoICgAgrt8N119Pki9e+PK9fS1ejpz4ovHt38fNOK3/G40mqpmpGTHO8T98T0n2sTJjmk6lv4ssXj0+zrdoACoAKCgH1Z9Q47rGp9OO9RuWX7RcY5t8GG3h/aXj1/wAMNTi8b+0snl8vc6hnWjHplT7kAAAAAAF6BxBQAAFABACRVkdvh3EMmnvzUneJ+fSfm2h582GMkPTgzzjlsOHcTxaiPBO1/pY7T4o/Nk5cFqS2sPIreHeed6RAD0oAAS4ZstaVm17RWseczO0OVazadQ4XyRWvuWV4zx+cm+PBvWnla/lNvZHSGpx+JFfdmTyeZNv21eC98Rpm739HJBAABQQFBDtelE0gAKCAoAIAAoIrlS81mLVma2jyms7TDjakW+rS81+Pa0XabLTauavysfWjw3j+EvDl4cT8aGHnWj1Z7Wm4/pb/ALTknpeNvx8njtxbw99OXSXepqsVvm5Mc+69XVOK0dO6M1J7c5z0+vT/AHVcf07T05TlrHbq5+LabH87NT3Vnmn8HZXj2n46rcnHXt5Ws7U0juw0m0+lr+Gv3er1Y+FPbyZOfr48DWa/LnnfLebdK+VY90Pfjw1rHqGblz3vLru2HSKiAAAAAAAL2vQiAKCAAAoAIAAorj7E2NLtOU0ROjlTxhy85g5Twj/D9S3+nKREQk2lYhU2uyoGhAAAUEBQQAFOxAAAAAAAUEABQAQAAAAAAAAAFBAUDYEAAOwVBFAAAAAAAUEBQQAAAAFBAAUAEABQQAABRRERQFBAAAAAJABZABAAAAAAAAAAAWASQUEBVEEf/9k=)"></span>
                                                    </td>
                                                    <td class="text-nowrap text-muted">
                                                        <a href="{{value['link']}}" target="_blank"> {{
                                                            value['username'] }} <br>
                                                            {{ value['name'] }}</a>
                                                    </td>
                                                    <td class="td-text-nowrap">
                                                        {{ value['tweet'] }}
                                                    </td>
                                                    <td class="text-nowrap text-success">
                                                        <!-- Download SVG icon from http://tabler-icons.io/i/message-circle -->
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
                                                            <line x1="12" y1="12" x2="12" y2="12.01" />
                                                            <line x1="8" y1="12" x2="8" y2="12.01" />
                                                            <line x1="16" y1="12" x2="16" y2="12.01" />
                                                        </svg> {{ value['replies_count'] | int }}
                                                    </td>
                                                    <td class="text-nowrap text-muted"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path
                                                                d="M19.5 13.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                                                        </svg> {{ value['likes_count'] | int}}</td>
                                                    <td class="text-nowrap text-muted"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M4 12v-3a3 3 0 0 1 3 -3h13m-3 -3l3 3l-3 3" />
                                                            <path d="M20 12v3a3 3 0 0 1 -3 3h-13m3 3l-3 -3l3 -3" />
                                                        </svg> {{ value['retweets_count'] | int }}
                                                    </td>
                                                </tr>
                                                {% endfor %}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tabs-likes">
                                    <h3 class="card-title">Top de likes</h3>
                                    <div class="card-table table-responsive">
                                        <table class="table table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Usuario</th>
                                                    <th>Comentario</th>
                                                    <th>Reply</th>
                                                    <th>Likes</th>
                                                    <th>Retweets</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {% for key,value in caracol.top_likes.iterrows() %}
                                                <tr>
                                                    <td class="w-1">
                                                        <span class="avatar avatar-sm"
                                                            style="background-image: url(data:image/jpeg;base64,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)"></span>
                                                    </td>
                                                    <td class="text-nowrap text-muted">
                                                        <a href="{{value['link']}}" target="_blank"> {{
                                                            value['username'] }} <br>
                                                            {{ value['name'] }}</a>
                                                    </td>
                                                    <td class="td-text-nowrap">
                                                        {{ value['tweet'] }}
                                                    </td>
                                                    <td class="text-nowrap text-muted">
                                                        <!-- Download SVG icon from http://tabler-icons.io/i/message-circle -->
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
                                                            <line x1="12" y1="12" x2="12" y2="12.01" />
                                                            <line x1="8" y1="12" x2="8" y2="12.01" />
                                                            <line x1="16" y1="12" x2="16" y2="12.01" />
                                                        </svg> {{ value['replies_count'] | int }}
                                                    </td>
                                                    <td class="text-nowrap text-success"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path
                                                                d="M19.5 13.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                                                        </svg> {{ value['likes_count'] | int}}</td>
                                                    <td class="text-nowrap text-muted"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M4 12v-3a3 3 0 0 1 3 -3h13m-3 -3l3 3l-3 3" />
                                                            <path d="M20 12v3a3 3 0 0 1 -3 3h-13m3 3l-3 -3l3 -3" />
                                                        </svg> {{ value['retweets_count'] | int }}
                                                    </td>
                                                </tr>
                                                {% endfor %}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tabs-retweets">
                                    <h3 class="card-title">Top de retweets</h3>
                                    <div class="card-table table-responsive">
                                        <table class="table table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Usuario</th>
                                                    <th>Comentario</th>
                                                    <th>Reply</th>
                                                    <th>Likes</th>
                                                    <th>Retweets</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {% for key,value in caracol.top_retweets.iterrows() %}
                                                <tr>
                                                    <td class="w-1">
                                                        <span class="avatar avatar-sm"
                                                            style="background-image: url(data:image/jpeg;base64,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)"></span>
                                                    </td>
                                                    <td class="text-nowrap text-muted">
                                                        <a href="{{value['link']}}" target="_blank"> {{
                                                            value['username'] }} <br>
                                                            {{ value['name'] }}</a>
                                                    </td>
                                                    <td class="td-text-nowrap">
                                                        {{ value['tweet'] }}
                                                    </td>
                                                    <td class="text-nowrap text-muted">
                                                        <!-- Download SVG icon from http://tabler-icons.io/i/message-circle -->
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M3 20l1.3 -3.9a9 8 0 1 1 3.4 2.9l-4.7 1" />
                                                            <line x1="12" y1="12" x2="12" y2="12.01" />
                                                            <line x1="8" y1="12" x2="8" y2="12.01" />
                                                            <line x1="16" y1="12" x2="16" y2="12.01" />
                                                        </svg> {{ value['replies_count'] | int }}
                                                    </td>
                                                    <td class="text-nowrap text-muted"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path
                                                                d="M19.5 13.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
                                                        </svg> {{ value['likes_count'] | int}}</td>
                                                    <td class="text-nowrap text-success"> <svg
                                                            xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                            <path d="M4 12v-3a3 3 0 0 1 3 -3h13m-3 -3l3 3l-3 3" />
                                                            <path d="M20 12v3a3 3 0 0 1 -3 3h-13m3 3l-3 -3l3 -3" />
                                                        </svg> {{ value['retweets_count'] | int }}
                                                    </td>
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

                <!-- Tops-->
                <div class="col-lg-4">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-header">
                                    <h3 class="card-title">Top de usuarios mencionados</h3>
                                </div>
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <div class="row g-3">
                                        {% for key,value in caracol.top_mentions.items() %}
                                        <div class="col-6">
                                            <div class="row g-3 align-items-center">
                                                <a href="#" class="col-auto">
                                                    <span class="avatar"
                                                        style="background-image: url(data:image/jpeg;base64,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)">
                                                    </span>
                                                </a>
                                                <div class="col text-truncate">
                                                    <a href="https://twitter.com/{{key}}" target="_blank"
                                                        class="text-body d-block text-truncate">@{{ key }}</a>
                                                    <small class="text-muted text-truncate mt-n1">{{ value }}</small>
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

                <div class="col-lg-4">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-header">
                                    <h3 class="card-title">Top de usuarios con más tweets creados</h3>
                                </div>
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <div class="row g-3">
                                        {% for key,value in caracol.top_bot_machinegun.iterrows() %}
                                        <div class="col-6">
                                            <div class="row g-3 align-items-center">
                                                <a href="#" class="col-auto">
                                                    <span class="avatar"
                                                        style="background-image: url(data:image/jpeg;base64,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)">
                                                    </span>
                                                </a>
                                                <div class="col text-truncate">
                                                    <a href="https://twitter.com/{{key}}" target="_blank"
                                                        class="text-body d-block text-truncate">@{{ key }}</a>
                                                    <small class="text-muted text-truncate mt-n1">{{ value['text_count']
                                                        | int }}</small>
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

                <div class="col-lg-4">
                    <div class="row row-cards">
                        <div class="col-12">
                            <div class="card" style="height: calc(24rem + 10px)">
                                <div class="card-header">
                                    <h3 class="card-title">Top de hashtags</h3>
                                </div>
                                <div class="card-body card-body-scrollable card-body-scrollable-shadow">
                                    <div class="row g-3">
                                        {% for key,value in caracol.top_hashtags.items() %}
                                        <div class="col-6">
                                            <div class="row g-3 align-items-center">
                                                <div class="col text-truncate">
                                                    <a href="https://twitter.com/hashtag/{{key}}" target="_blank"
                                                        class="text-body d-block text-truncate">#{{ key }}</a>
                                                    <small class="text-muted text-truncate mt-n1">{{ value }}</small>
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


                <!--Noticias-->
                <div class="col-md-8">
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
                                                    <span class="avatar" style="font-size:6px">{{item.newspaper}}</span>
                                                </div>
                                                <div class="col">
                                                    <div class="text-truncate">
                                                        <a href="{{item.link}}"
                                                            target="_blank"><strong>{{item.title}}</strong></a>
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

                <!-- Generos-->
                <div class="col-lg-6 col-xl-4">
                    <div class="card">
                        <div class="card-body" style="position: relative;">
                            <h3 class="card-title">Genero de usuarios</h3>
                            <br>
                            <div id="chart-gender-pie" style="min-height: 201.9px;"></div>
                        </div>
                    </div>
                </div>

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

    var likes_raw = JSON.parse({{ caracol.likes_graph | tojson }});
    var likes_map = likes_raw.index.map(function (e, i) {
        return [e, likes_raw.data[i]];
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
            },
            {
                name: "Likes",
                data: likes_map
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
        colors: ["#206bc4", "#79a6dc", "#bfe399", "#bfe3ef"],
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

<script>
    var gender_raw = JSON.parse({{ caracol.gender_graph | tojson }});
    for (let step = 0; step < gender_raw.index.length; step++) {
        if (gender_raw.index[step] == 'm') gender_raw.index[step] = 'Hombre'
        else if (gender_raw.index[step] == 'f') gender_raw.index[step] = 'Mujer'
        else gender_raw.index[step] = 'Desconocido'
    }

    var options = {
        series: gender_raw.data,
        chart: {
            type: "donut",
            fontFamily: 'inherit',
            height: 300,
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
        labels: gender_raw.index,
        grid: {
            strokeDashArray: 4,
        },
        colors: ["#206bc4", "#79a6dc", "#d2e1f3", "#e9ecf1"],
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

    var chart = new ApexCharts(document.querySelector("#chart-gender-pie"), options);
    chart.render();
</script>

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
