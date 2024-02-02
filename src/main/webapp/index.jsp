<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ihsan's Random Images Generator WOW!</title>
    <style>
        img {
            max-width: 100%;
            height: auto;
            width: 500px; /* Set the desired width */
            border: 1px solid #ddd; /* Add a border for better visibility */
            margin-bottom: 10px;
        }

        button {
            padding: 10px;
            cursor: pointer;
        }
    </style>
    <script>
        function generateRandomImage() {
            // Reload the page to generate a new random image
            location.reload(true);
        }
    </script>
</head>
<body>
    <h1>Ihsan's Random Images Generator WOW!</h1>

    <%-- Java code to generate random image URLs --%>
    <% 
        String[] imageUrls = {
            "https://cdn.pixabay.com/photo/2016/11/13/12/52/kuala-lumpur-1820944_1280.jpg",
            "https://cdn.pixabay.com/photo/2013/08/09/05/58/kuala-lumpur-170985_640.jpg",
            "https://img.veenaworld.com/wp-content/uploads/2023/09/10-Fantastic-Places-To-Visit-in-Kuala-Lumpur.jpg",
            // Add more image URLs as needed
        };

        Random random = new Random();
        int randomIndex = random.nextInt(imageUrls.length);
        String randomImageUrl = imageUrls[randomIndex];
    %>

    <%-- Display the random image with CSS styling --%>
    <img src="<%= randomImageUrl %>" alt="Random Image">

    <br>
    
    <%-- Button to generate a new random image --%>
    <button onclick="generateRandomImage()">Generate New Random Image</button>

</body>
</html>
