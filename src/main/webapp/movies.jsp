<%--
  Created by IntelliJ IDEA.
  User: sanus
  Date: 3/30/2025
  Time: 10:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="css/globals.css" />
  <link rel="stylesheet" href="css/style.css" />
  <style>

    a {
      all: unset;
      transition:  box-shadow 0.3s ease;
    }
    .navbar a:hover {
      color: gold;
    }

    .a:hover {
      background-color: gold;
      color: black;
      box-shadow: 0 0 20px rgba(253, 217, 106, 0.8);
    }
    .movie-container {
      width: 1250px;
      height: 100%;
      overflow: hidden;
      white-space: nowrap;
      display: flex;
      scroll-behavior: smooth;
      position: relative;
    }

    .movie-list, .trailer-list {
      display: flex;
      transition: transform 0.5s ease-in-out;
    }

    .scroll-btn {
      position: absolute;
      font-family: "Outfit-Bold", Helvetica;
      font-size: 15px;
      top: 50%;
      transform: translateY(-50%);
      background-color: rgba(0, 0, 0, 0.5);
      color: white;
      border: none;
      border-radius: 20px;
      padding: 10px 15px;
      cursor: pointer;
      z-index: 10;
    }

    .left {
      left: 0;
    }

    .right {
      right: 0;
    }

    .scroll-btn:hover {
      background-color: #f8ce35;
      color: black;
      transition: 0.2s ease-in-out;
    }


  </style>
  <script>
    let scrollPosition = 0;
    const scrollAmount = 200;

    function scrollMovies(direction) {
      const movieList = document.querySelector('.movie-list');
      const maxScroll = movieList.scrollWidth - movieList.clientWidth;

      scrollPosition += direction * scrollAmount;

      if (scrollPosition < 0) scrollPosition = 0;
      if (scrollPosition > maxScroll) scrollPosition = maxScroll;

      movieList.style.transform = `translateX(-${scrollPosition}px)`;
    }

    function scrollTrailers(direction) {
      const movieList = document.querySelector('.trailer-list');
      const maxScroll = movieList.scrollWidth - movieList.clientWidth;

      scrollPosition += direction * scrollAmount;

      if (scrollPosition < 0) scrollPosition = 0;
      if (scrollPosition > maxScroll) scrollPosition = maxScroll;

      movieList.style.transform = `translateX(-${scrollPosition}px)`;
    }


  </script>
  <title></title>
</head>

<body>
<div class="homepage">

  <div class="div">

    <div class="navbar">
      <div class="text-wrapper">MOVIES</div>
      <div class="text-wrapper-2"><a href="movies.jsp">HOME</a></div>
      <div class="text-wrapper-3"> <a href="selector.jsp">MOVIES</a></div>
      <div class="text-wrapper-4"><a href="buy.jsp">BUY TICKETS</a></div>
    </div>

    <div class="now-showing">

      <div class="text-wrapper-5">Now Showing</div>

      <button class="scroll-btn left" onclick="scrollMovies(-1)">&#9665; Prev</button>

      <div class="movie-container">

        <div class="movie-list">
          <div class="group">
            <img class="img" src="images/CA.jpg" />
            <div class="INFO-BUY-ca">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Captain America:<br />Brave New World</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-2">
            <img class="img" src="images/m17.jpg" />
            <div class="INFO-BUY">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Mickey 17</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-3">
            <img class="img" src="images/raani.jpg" />
            <div class="div-2">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Rani</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-4">
            <img class="img" src="images/moana.jpg" />
            <div class="div-2">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Moana 2</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-5">
            <div class="INFO-BUY-kasiwasi">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Kaasi Waasi</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="img" src="images/kasi.jpg" />
          </div>

          <div class="group-6">
            <div class="INFO-BUY-icecream">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Ice Cream</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="element" src="images/icecream.jpg" />
          </div>

          <div class="group-7">
            <div class="INFO-BUY-novocaine">
              <div class="title-date-hrs">
                <div class="text-wrapper-6">Novocaine</div>
                <div class="text-wrapper-7">2025</div>
                <div class="text-wrapper-8">1h 58m</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="overlap-group" onclick="window.location.href = 'buy.jsp';">
                  <div class="text-wrapper-9">BUY NOW</div>
                </button>
              </div>
              <div class="trailer">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="img" src="images/novocaine.jpg" />
          </div>
        </div>
      </div>

      <button class="scroll-btn right" onclick="scrollMovies(1)">Next &#9655;</button>

    </div>

    <div class="coming-soon">

      <div class="text-wrapper-11">Coming Soon</div>

      <button class="scroll-btn left" onclick="scrollTrailers(-1)">&#9665; Prev</button>

      <div class="movie-container">

        <div class="trailer-list">

          <div class="group-8">
            <img class="img" src="images/karatekid.jpg" />
            <div class="INFO-BUY-ca-2">
              <div class="title-date-hrs-2">
                <div class="text-wrapper-6">Karate Kid:<br />Legends</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="trailer-2">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-9">
            <img class="img" src="images/superman.jpg" />
            <div class="INFO-BUY-m">
              <div class="title-date-hrs-3">
                <div class="text-wrapper-6">Superman</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-10">
            <img class="img" src="images/dragon.jpg" />
            <div class="INFO-BUY-rani">
              <div class="title-date-hrs-4">
                <div class="text-wrapper-6">How to Train Your<br />Dragon</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-11">
            <img class="img" src="images/MI.jpg" />
            <div class="INFO-BUY-moana">
              <div class="title-date-hrs-5">
                <div class="mission-impossible">Mission Impossible<br />The Final Reckoning</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
          </div>

          <div class="group-12">
            <div class="INFO-BUY-kasiwasi-2">
              <div class="title-date-hrs-6">
                <div class="text-wrapper-6">F1</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="img" src="images/f1.jpg" />
          </div>

          <div class="group-13">
            <div class="INFO-BUY-icecream-2">
              <div class="title-date-hrs-7">
                <div class="text-wrapper-6">Fantastic Four:<br />First Steps</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="img" src="images/4.jpg" />
          </div>

          <div class="group-14">
            <div class="INFO-BUY-novocaine-2">
              <div class="title-date-hrs-8">
                <div class="text-wrapper-6">Snow White</div>
                <div class="text-wrapper-7">2025</div>
              </div>
              <div class="overlap-group-wrapper">
                <button class="div-wrapper" onclick="window.location.href = '404.jsp';">
                  <div class="text-wrapper-10">TRAILER</div>
                </button>
              </div>
            </div>
            <img class="img" src="images/snow.jpg" />
          </div>


        </div>

      </div>

      <button class="scroll-btn right" onclick="scrollTrailers(1)">Next &#9655;</button>

    </div>
  </div>
</div>
</body>

</html>
