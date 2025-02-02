[[Web Design exam]]

### Exam questions
Here are the questions from your assignment along with their answers:

---

## SECTION A COMPULSORY (30 MARKS)

### QUESTION ONE

**a) Explain the following terms in relation to website design and development:**

- **HTML element** (2 marks)  
  An HTML element is a fundamental building block of a webpage, consisting of a start tag, content, and an end tag. For example, in the element `<p>This is a paragraph.</p>`, `<p>` is the start tag, `This is a paragraph.` is the content, and `</p>` is the end tag. HTML elements define the structure and layout of a webpage, allowing browsers to render text, images, links, and other content appropriately.

- **DNS (Domain Name Server)** (2 marks)  
  DNS, or Domain Name Server, is a system that translates human-readable domain names (like www.example.com) into IP addresses (like 192.0.2.1) that computers use to identify each other on the network. This process is essential for navigating the internet, as it allows users to access websites using easy-to-remember names instead of numerical IP addresses. DNS servers maintain a directory of domain names and their corresponding IP addresses, facilitating the connection between users and websites.

**b) Discuss any THREE factors you would consider when choosing a web host for your website** (6 marks)  
1. **Reliability and Uptime:** A good web host should guarantee high uptime (ideally 99.9% or higher) to ensure that your website is accessible to users at all times. Frequent downtimes can lead to loss of traffic and revenue.

2. **Customer Support:** Reliable customer support is crucial, especially if you encounter technical issues. Look for hosts that offer 24/7 support through various channels such as live chat, email, and phone.

3. **Scalability:** Choose a web host that allows for easy upgrades as your website grows. This includes options for increasing storage, bandwidth, and additional features without significant downtime or migration issues.

**c) Write down the structure of an HTML program code.** (6 marks)  
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Title</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to My Website</h1>
    </header>
    <main>
        <p>This is the main content of the webpage.</p>
    </main>
    <footer>
        <p>&copy; 2023 My Website</p>
    </footer>
</body>
</html>
```

**d) Discuss any THREE factors that may affect website download times.** (6 marks)  
1. **File Size:** Larger files, such as images, videos, and scripts, take longer to download. Optimizing file sizes through compression can significantly improve load times.

2. **Server Response Time:** The time it takes for the server to respond to a request can affect download times. Factors such as server location, server load, and the efficiency of the server's software can impact this.

3. **Network Speed:** The speed of the user's internet connection plays a crucial role in download times. Users with slower connections will experience longer load times, regardless of the website's optimization.

**e) Explain any FOUR properties of a good website.** (8 marks)  
1. **User -Friendly Navigation:** A good website should have a clear and intuitive navigation structure, allowing users to find information easily without confusion.

2. **Responsive Design:** The website should be accessible and functional across various devices and screen sizes, including desktops, tablets, and smartphones.

3. **Fast Load Times:** A good website should load quickly to enhance user experience and reduce bounce rates. This can be achieved through optimization techniques.

4. **High-Quality Content:** The content should be relevant, engaging, and well-organized. It should provide value to the user and be updated regularly to keep it fresh and informative.

---

## SECTION B: ANSWER ANY TWO QUESTIONS (EACH 20 MARKS)

### QUESTION TWO

**a) Explain any THREE functions of the header tag in HTML programming.** (6 marks)  
1. **Defines Document Structure:** The `<header>` tag is used to define the header section of a webpage, which typically contains introductory content or navigational links.

2. **SEO Benefits:** Search engines use the header tag to understand the structure of the webpage, which can improve search engine optimization (SEO) by highlighting important content.

3. **Accessibility:** The header tag helps screen readers and other assistive technologies identify the main sections of a webpage, improving accessibility for users with disabilities.

**b) Distinguish between client-side and server-side scripting.** (4 marks) Client-side scripting refers to code that is executed on the user's browser, allowing for dynamic content updates without needing to communicate with the server. This includes languages like JavaScript, which can manipulate the Document Object Model (DOM) and respond to user interactions. In contrast, server-side scripting is executed on the web server, generating dynamic content before it is sent to the user's browser. Languages such as PHP, Python, and Ruby are commonly used for server-side scripting, allowing for database interactions and complex processing before delivering the final output to the client.

**c) Explain any FIVE properties of a good website.** (10 marks)  
1. **Accessibility:** A good website should be accessible to all users, including those with disabilities. This involves adhering to web accessibility standards and ensuring that content is usable with assistive technologies.

2. **Consistent Design:** Consistency in design elements such as colors, fonts, and layout across all pages helps create a cohesive user experience and reinforces brand identity.

3. **Clear Call-to-Action (CTA):** Effective websites include clear and compelling CTAs that guide users towards desired actions, such as signing up for a newsletter or making a purchase.

4. **Security:** A good website should implement security measures, such as HTTPS, to protect user data and build trust with visitors, especially when handling sensitive information.

5. **Search Engine Optimization (SEO):** A well-optimized website should follow SEO best practices to improve visibility in search engine results, making it easier for users to find the site through organic search.

### QUESTION THREE 
a) Write an HTML program code that will display the table below.  (10 marks) 

#### DEPARTMENT OF ILS GRADUATING CLASS OF STUDENTS

| COURSE    | YEAR   | NUMBER | MODE OF STUDY |
| --------- | ------ | ------ | ------------- |
| AIIQ4001  | YEAR 4 | 30     | Regular       |
| BTECH4001 | YEAR 4 | 15     | Evening       |
| DIP3001   | YEAR 3 | 8      | Regular       |

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department of ILS Graduating Class of Students</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>DEPARTMENT OF ILS GRADUATING CLASS OF STUDENTS</h1>
    <table>
        <tr>
            <th>COURSE</th>
            <th>YEAR</th>
            <th>NUMBER</th>
            <th>MODE OF STUDY</th>
        </tr>
        <tr>
            <td>AIIQ4001</td>
            <td>YEAR 4</td>
            <td>30</td>
            <td>Regular</td>
        </tr>
        <tr>
            <td>BTECH4001</td>
            <td>YEAR 4</td>
            <td>15</td>
            <td>Evening</td>
        </tr>
        <tr>
            <td>DIP3001</td>
            <td>YEAR 3</td>
            <td>8</td>
            <td>Regular</td>
        </tr>
    </table>
</body>
</html>
```

**b) Describe any FIVE security vulnerabilities in web design.** (10 marks)  
1. **Cross-Site Scripting (XSS):** This vulnerability allows attackers to inject malicious scripts into web pages viewed by other users, potentially stealing sensitive information or hijacking user sessions.

2. **SQL Injection:** Attackers can exploit vulnerabilities in web applications that interact with databases by injecting malicious SQL queries, allowing unauthorized access to data or manipulation of the database.

3. **Cross-Site Request Forgery (CSRF):** This attack tricks users into executing unwanted actions on a web application in which they are authenticated, potentially compromising their account without their knowledge.

4. **Insecure Direct Object References:** This vulnerability occurs when an application exposes a reference to an internal object, allowing attackers to access or manipulate data they should not have access to.

5. **Insufficient Authentication and Session Management:** Weak authentication mechanisms can lead to unauthorized access, while poor session management can allow attackers to hijack user sessions and impersonate legitimate users.

![[Note Narration Audio/exam_question_-_Feb_02_2025_12:22.mp3]]