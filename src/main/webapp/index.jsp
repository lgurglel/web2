<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Лабораторная №2</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>


<header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1>Степанов Денис</h1>
                <h2>Вариант 15918</h2>
            </div>
        </div>
    </div>
</header>

<section class="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 text-center">
                <div class="neo-select graphic-box text-center">
                    <div class="svg-wrapper">
                        <svg width="300" height="300" class="svg-graph" xmlns="http://www.w3.org/2000/svg">

                            <!--            Линии оси-->

                            <line class="axis" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
                            <line class="axis" x1="150" x2="150" y1="0" y2="300" stroke="black"></line>
                            <polygon points="150,0 144,15 156,15" stroke="black"></polygon>
                            <polygon points="300,150 285,156 285,144" stroke="black"></polygon>

                            <line class="coor-line" x1="200" x2="200" y1="155" y2="145" stroke="black"></line>
                            <line class="coor-line" x1="250" x2="250" y1="155" y2="145" stroke="black"></line>

                            <line class="coor-line" x1="50" x2="50" y1="155" y2="145" stroke="black"></line>
                            <line class="coor-line" x1="100" x2="100" y1="155" y2="145" stroke="black"></line>

                            <line class="coor-line" x1="145" x2="155" y1="100" y2="100" stroke="black"></line>
                            <line class="coor-line" x1="145" x2="155" y1="50" y2="50" stroke="black"></line>

                            <line class="coor-line" x1="145" x2="155" y1="200" y2="200" stroke="black"></line>
                            <line class="coor-line" x1="145" x2="155" y1="250" y2="250" stroke="black"></line>

                            <text class="coor-text" x="195" y="140">R/2</text>
                            <text class="coor-text" x="248" y="140">R</text>

                            <text class="coor-text" x="40" y="140">-R</text>
                            <text class="coor-text" x="90" y="140">-R/2</text>

                            <text class="coor-text" x="160" y="105">R/2</text>
                            <text class="coor-text" x="160" y="55">R</text>

                            <text class="coor-text" x="160" y="205">-R/2</text>
                            <text class="coor-text" x="160" y="255">-R</text>

                            <%--прямоугольник--%>
                            <polygon class="svg-figure rectangle-figure" points="250,150 150,150 150, 100, 250,100"
                                     fill="blue" fill-opacity="0.3" stroke="blue"></polygon>

                            <!--круг-->
                            <path class="svg-figure circle-figure" d="M 150 250 A 100 100, 90, 0, 0, 250 150 L 150 150 Z"
                                  fill="green" fill-opacity="0.3" stroke="green"></path>

                            <%--треугольник--%>
                            <polygon class="svg-figure triangle-figure" points="50,150 150,200 150,150"
                                     fill="yellow" fill-opacity="0.3" stroke="yellow"></polygon>
                            <jsp:include page="dots.jsp"/>

                        </svg>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 text-center">
                <p>Выберите R:</p>

                <div class="row">
                    <div class="col-12 text-center">
                        <select class="select-label btn btn-secondary" name="r-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                </div>


                <p>Выберите X:</p>

                <div class="row">
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="-2" autocomplete="off"> -2
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="-1.5" autocomplete="off"> -1.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="-1" autocomplete="off"> -1
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="-0.5" autocomplete="off"> -0.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="0" autocomplete="off"> 0
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="0.5" autocomplete="off"> 0.5
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="1" autocomplete="off"> 1
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="1.5" autocomplete="off"> 1.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" name="options" class="checkbox" id="2" autocomplete="off"> 2
                        </label>
                    </div>
                </div>


                <p>Введите Y:</p>
                <input data-rule="input-y" type="text" class="neo-select form-control" id="input-y" placeholder="от -3 до 5" maxlength="10">

            </div>


            <div class="col-lg-4 text-center">
                <div class="table-wrapper neo-select text-center">
                    <div class="output" id="output">

                        <jsp:include page="table.jsp"/>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center my-4">
                <button type="button" class="neo-submit" id="check-btn">Проверить</button>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>



