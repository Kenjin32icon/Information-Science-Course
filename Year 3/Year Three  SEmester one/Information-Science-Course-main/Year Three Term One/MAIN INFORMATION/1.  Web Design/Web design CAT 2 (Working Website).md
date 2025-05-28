SourceURL:file:///home/kenjin/Documents/web design/Web design Cat 2: HOME DECOR.docx

Web design Cat 2: HOME DECOR

**Course**: Web design

**Group Members****:-** **Admission Numbe****r**

 1. Lewis Kariuki- AIIM/00477/2021

 2. Beatrice Kambo - AIIM/00761/2022

 3. Lucy Wanjeri - AIIM/00753/2022

  

HOME DECOR WEBSITE SCREENSHOTS

- Image 1
 ![](file:////tmp/wps-kenjin/ksohtml/wpsvjOdmz.jpg)

- Image 2

![](file:////tmp/wps-kenjin/ksohtml/wps2sdQhm.jpg) 

- Image 3

![](file:////tmp/wps-kenjin/ksohtml/wpsLnfQcs.jpg) 

HOME DECOR HTML/INTERNAL CSS CODE

```html

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Web Design Cat 2 & home decor</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        :root {

            --background-color: #000; /* Black background */

            --text-color: #f5f5f5; /* Light text color */

            --button-color: #d4af37; /* Gold color */

            --footer-background: #333; /* Dark gray for footer */

            --primary-color: #c0c0c0; /* Silver color */

            --hover-color: #b8860b; /* Darker gold for hover effects */

        }

        * {

            text-decoration: none;

            padding: 0;

            margin: 0;

            box-sizing: border-box;

            font-family: "Inter", sans-serif;

        }

        body {

            background: linear-gradient(135deg, #C0C0C0, #000, #808080); /* Gradient background */

            color: var(--text-color);

        }

        /* Header styles */

        .header {

            height: 100vh;

            display: flex;

            flex-direction: column;

            justify-content: center;

            align-items: center; /* Center content horizontally */

            padding: 20px; /* Add padding */

            box-shadow: inset 0 0 100px rgba(0, 0, 0, 0.8); /* Dark shadow for depth */

        }

        /* Overlay for text readability */

        .overlay {

            text-align: center; /* Center text */

            color: #FFD700; /* Gold color for text */

        }

        /* Content styles */

        .content {

            background-color: rgba(0, 0, 0, 0.8); /* Darker background for content */

            padding: 40px;

            border-radius: 20px;

            box-shadow: 0 0 20px rgba(255, 215, 0, 0.5); /* Gold shadow for depth */

            margin: 20px 0; /* Margin for spacing */

            text-align: left; /* Align text to the left */

        }

        h1 {

            font-size: 4em; /* Large header text */

            margin: 0;

        }

        h2 {

            font-size: 2.5em; /* Enlarged subheader */

            margin-bottom: 10px;

            color: #FFD700; /* Gold color for subheaders */

        }

        p {

            font-size: 1.5em; /* Enlarged paragraph text */

            margin: 5px 0;

            color: #C0C0C0; /* Silver color for paragraph text */

        }

        /* Next section button */

        .next-section-button {

            padding: 15px 30px;

            background-color: rgba(255, 215, 0, 0.7); /* Semi-transparent gold background */

            color: #000; /* Black text for contrast */

            text-decoration: none;

            font-weight: bold;

            font-size: 1.5em; /* Enlarged button text */

            border-radius: 5px; /* Rounded corners */

            transition: transform 0.3s ease, background-color 0.3s ease; /* Transition effects */

            margin-top: 40px; /* Increased space above button */

        }

        .next-section-button:hover {

            background-color: rgba(255, 215, 0, 1); /* Change background color on hover */

            transform: scale(1.1); /* Enlarge the button on hover */

        }

        /* Styles for the second section */

        #next-section {

            padding: 20px; /* Add some padding for spacing */

        }

        .navbar {

            padding: 0 15px;

            background-color: var(--footer-background);

            box-shadow: 0 2px 10px rgba(255, 255, 255, 0.1);

        }

        .navdiv {

            display: flex;

            align-items: center;

            justify-content: space-between;

        }

        .navlinks {

            background-color: rgba(255, 255, 255, 0.1);

            border-radius: 99px;

            display: flex;

            align-items: center;

            height: 59px;

            padding: 0 20px;

        }

        .navlinks ul {

            display: flex;

            gap: 20px;

        }

        .navlinks ul li {

            list-style: none;

        }

        .navlinks ul li a {

            font-size: 16px;

            color: var(--text-color);

            transition: color 0.3s;

        }

        .navlinks ul li a:hover {

            color: var(--hover-color);

        }

        .content {

            width: 90%;

            margin: auto;

            margin-top: 40px;

        }

        button {

            color: var(--text-color);

            font-size: 20px;

            border-radius: 10px;

            padding: 10px 20px;

            border: none;

            background-color: var(--button-color);

            cursor: pointer;

            transition: background-color 0.3s;

        }

        button:hover {

            background-color: var(--hover-color);

        }

        .description h1 {

            font-family: "Italianno", cursive;

            font-size: 70px;

            font-weight: 400;

            color: var(--button-color);

        }

        .section1 {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-top: 50px;

            flex-wrap: wrap; /* Allow wrapping on smaller screens */

        }

        .description {

            width: 500px;

        }

        .section2 {

            margin: 60px auto 100px;

        }

        .items {

            display: flex;

            gap: 40px;

            flex-wrap: wrap;

            justify-content: center;

        }

        .item {

            width: 380px;

            height: 321px;

            text-align: center;

            transition: transform 0.3s;

            background-color: var(--primary-color);

            border-radius: 15px;

            overflow: hidden;

            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);

        }

        .item:hover {

            transform: scale(1.05);

        }

        .item h3 {

            font-size: 20px;

            margin-top: 10px;

            color: var(--text-color);

        }

        .item img {

            width: 100%;

            height: 100%;

            object-fit: cover;

            border-radius: 15px 15px 0 0;

        }

        .section2 h1 {

            text-align: center;

            margin-bottom: 20px;

            font-family: "Comfortaa", sans-serif;

            color: var(--button-color);

        }

        .footer {

            background-color: var(--footer-background);

            width: 100%;

            display: flex;

            justify-content: center;

        }

        .footercontent {

            display: flex;

            gap: 57px;

            margin: 40px 0;

        }

        .options ul {

            list-style-type: none;

        }

        .subscribe {

            background-color: var(--primary-color);

            width: 374px;

            border-radius: 99px;

            display: flex;

            justify-content: space-between;

            margin-top: 27px;

        }

        .subscribe input {

            border: none;

            padding: 10px;

            background-color: transparent;

            color: var(--text-color);

        }

        .subscribe-btn {

            border-radius: 0 25px 25px 0;

            border: none;

            background-color: var(--button-color);

            color: var(--text-color);

            cursor: pointer;

        }

        /* Responsive Styles */

        @media (max-width: 768px) {

            .description {

                width: 100%; /* Full width on smaller screens */

                text-align: center; /* Center text */

            }

            .section1 {

                flex-direction: column; /* Stack elements vertically */

                align-items: center; /* Center items */

            }

            .item {

                width: 90%; /* Full width for items on smaller screens */

                max-width: 300px; /* Limit max width */

            }

            .footercontent {

                flex-direction: column; /* Stack footer items */

                align-items: center; /* Center footer items */

            }

        }

        @media (max-width: 480px) {

            .description h1 {

                font-size: 40px; /* Smaller heading on very small screens */

            }

            button {

                font-size: 16px; /* Smaller button text */

            }

        }

    </style>

</head>

<body>

    <div class="header">

        <div class="overlay">

            <h1>WEB DESIGN cat 2</h1>

        </div>

        <div class="content">

            <h2>Group Members:</h2>

            <p>1. Lewis Kariuki<br>- AIIM/00477/2021</p>

            <p>2. Beatrice Kambo <br>- AIIM/00761/2022</p>

            <p>3. Lucy Wanjeri <br>- AIIM/00753/2022</p>

        </div>

        <a href="#next-section" class="next-section-button">Click here to go to our:- Home Decor Page</a>

    </div>

    <div id="next-section">

        <header>

            <nav class="navbar">

                <div class="navdiv">

                    <div class="logo">

                        <img src="https://i.pinimg.com/236x/64/6e/8f/646e8f9d632f2feaed09834b920eda7f.jpg" alt="Home Decor Logo">

                    </div>

                    <div class="navlinks">

                        <ul>

                            <li><a href="#">Home</a></li>

                            <li><a href="#">Store</a></li>

                            <li><a href="#">Services</a></li>

                            <li><a href="#">Cart</a></li>

                        </ul>

                    </div>

                    <div>

                        <button type="button">Sign In</button>

                    </div>

                </div>

            </nav>

        </header>

        <main class="content">

            <section class="section1">

                <div class="description">

                    <h1>Discover Our Collection</h1>

                    <p>Our curated collection of furniture, home accessories, and decor pieces are designed to inspire and help you create a space that you will love to live in.</p>

                    <button type="button">

                        <span>Explore Now</span>

                        <i class="fa-solid fa-angle-right"></i>

                    </button>

                </div>

                <div class="image">

                    <img src="https://i.pinimg.com/236x/77/3e/c4/773ec427b917d56bafe44f996bf78cd8.jpg" alt="Nordic Vase">

                </div>

            </section>

            <section class="section2">

                <h1>Featured Collections</h1>

                <div class="items">

                    <div class="item">

                        <img src="https://i.pinimg.com/236x/64/5c/6f/645c6f9eda32e4f7f5192dc350208b39.jpg" alt="3D Wall Decor">

                        <h3>3D Wall Decor</h3>

                    </div>

                    <div class="item">

                        <img src="https://i.pinimg.com/236x/c5/7a/9f/c57a9fde392aad81913e7c83ee7de058.jpg" alt="Black and White Shelf">

                        <h3>Black and White Shelf</h3>

                    </div>

                    <div class="item">

                        <img src="https://i.pinimg.com/236x/11/a9/91/11a991cf23f4ca0e860485542bb7aa78.jpg" alt="Floating Shelves">

                        <h3>Floating Shelves</h3>

                    </div>

                </div>

            </section>

        </main>

        <footer class="footer">

            <div class="footercontent">

                <div class="footer-item">

                    <div class="footer-logo">

                        <img src="https://via.placeholder.com/100" alt="Home Decor Logo">

                    </div>

                    <div class="socials">

                        <i class="fa-brands fa-whatsapp"></i>

                        <i class="fa-brands fa-instagram"></i>

                        <i class="fa-brands fa-x-twitter"></i>

                        <i class="fa-brands fa-facebook"></i>

                    </div>

                </div>

                <div class="footer-item">

                    <div class="item-title">

                        <h3>Quick Links</h3>

                    </div>

                    <div class="options">

                        <ul>

                            <li><a href="#">Shop</a></li>

                            <li><a href="#">Categories</a></li>

                            <li><a href="#">Inventory</a></li>

                            <li><a href="#">Offers & Discounts</a></li>

                        </ul>

                    </div>

                </div>

                <div class="footer-item">

                    <div class="item-title">

                        <h3>Contacts</h3>

                    </div>

                    <div class="options">

                        <ul>

                            <li>Phone1: <a href="tel:0746668098">0746668098</a></li>

                            <li>Phone2: <a href="tel:0722890506">0722890506</a></li>

                            <li>Email: <a href="mailto:homedecor@yahooo.com">homedecor@yahooo.com</a></li>

                            <li>Address1: NairobiCBD, Nairobi</li>

                            <li>Address2: Technical University of Kenya</li>

                        </ul>

                    </div>

                </div>

                <div class="footer-item">

                    <div class="item-title">

                        <h3>Newsletter Subscription</h3>

                    </div>

                    <div class="subscribe">

                        <input type="email" placeholder="Enter your email" required>

                        <button class="subscribe-btn" type="button">Subscribe</button>

                    </div>

                </div>

            </div>

        </footer>

    </div>

</body>

</html>

```