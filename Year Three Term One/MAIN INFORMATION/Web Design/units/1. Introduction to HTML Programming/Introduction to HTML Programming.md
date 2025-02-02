[[Web design Course outline]]
### Week 1: Introduction to HTML Programming Audio:- 
![[Note Narration Audio/Introduction_to_HTML_Programming_-_Jan_28_2025_12:12.mp3]]

### Week 1: Introduction to HTML Programming

**I. What is HTML?**

- **HTML (HyperText Markup Language)** is the most widely used language on the Web for developing web pages.
- It is a **markup language**, which means it uses tags to format text and other content.
- HTML was developed with the intent of defining the structure of documents, such as headings, paragraphs and lists.
- Now it is used to format web pages with various tags.

**II. Key Concepts of HTML**

- **Tags:** HTML uses tags, which are enclosed in angle brackets `< >`, to format content.
    - Most tags have a corresponding end tag, denoted with a `/` character (e.g., `<p>` and `</p>`).
    - Tags can provide meaning to text (e.g. `<h1>` for top level heading).
    - Tags can also give formatting information (e.g. `<i>` for italics).
    - Tags can provide additional information (e.g. `<img>` for images).
- **Elements:** An HTML element consists of a start tag, content, and an end tag. Some elements can be nested within other elements.
- **Attributes:** Attributes provide additional information about HTML elements. They are included within the start tag.
    - Examples of attributes include `id` (a unique identifier), `title` (a "pop-up" title), `class` (associates an element with a style sheet), and `type` (specifies the type of list).

**III. HTML Document Structure**

- A typical HTML document has a specific structure:
    - **`<!DOCTYPE html>`**: This declaration defines the document type and helps the browser display the page correctly. It should be the first line of an HTML document.
    - **`<html>`**: The root element that encloses the entire HTML document.
    - **`<head>`**: Contains meta-information about the HTML document, such as the document's title, links to stylesheets, and other metadata.
        - **`<title>`**: Specifies the title of the HTML document, which is displayed in the browser's title bar.
    - **`<body>`**: Contains the visible content of the HTML document.
        - Tags like `<h1>` (heading), `<p>` (paragraph), `<div>` (grouping content), `<span>` (grouping content), `<a>` (links), `<img>` (images) are within the body.

**IV. Basic HTML Tags**

- **Headings:** `<h1>` to `<h6>` tags are used for headings of different sizes, with `<h1>` being the largest.
- **Paragraphs:** `<p>` tag is used to define a paragraph.
- **Line Breaks:** `<br>` tag forces a line break within a paragraph.
- **Bold and Italic:** `<b>` tag is used for bold text and `<i>` tag is used for italic text.
- **Preformatted Text:** `<pre>` tag is used for preformatted text, which preserves spaces and line breaks.
- **Horizontal Rule:** `<hr>` tag creates a horizontal line.
- **Images:** `<img>` tag is used to embed images.
- **Links:** `<a>` tag is used to create hyperlinks.

**V. HTML Lists**

- **Unordered Lists:** `<ul>` tag is used for unordered (bulleted) lists, and `<li>` tags are used for list items.
    - The `type` attribute can be used to change the style of the bullet (e.g., `type="square"`).
- **Ordered Lists:** `<ol>` tag is used for ordered (numbered) lists, and `<li>` tags are used for list items.
    - The `type` attribute can be used to change the numbering style (e.g., `type="i"` for lowercase roman numerals).
- **Description Lists:** `<dl>` tag is used for description lists, `<dt>` tag is used for the term and `<dd>` tag for the definition.

**VI. Comments**

- HTML comments are placed between `<!--` and `-->` tags.
- They are not displayed by the browser and are used to explain sections of code.

**VII. Hypertext and Hyperlinks**

- **Hypertext:** Text containing links to other documents or parts of the same document. It allows non-sequential reading of documents.
- **Hyperlinks:** Links embedded in a document that allow the reader to jump to other parts of the document or other documents.
- **Anchors:** The visual representation of a link. The `<a>` tag is used to create anchors.

**VIII. Setting Up Your Environment**

- You'll need a **text editor** (like Notepad++, Edit Plus, or Notepad) to write HTML code.
- You'll also need a **web browser** (like Chrome, Firefox, or Internet Explorer) to view your HTML pages.

**IX. Versions of HTML**

- "HTML 2.0" was the first standard HTML specification, published in 1995.
- "HTML 4.01" was published in late 1999.
- HTML5, an extension of HTML 4.01, was published in 2012.

**X. The Role of the Web Browser**

- Web browsers interpret HTML code and format the page for display.
- Browsers are HTML readers and can interpret HTML in different ways.

**XI. Basic HTML Document Example**

- A basic HTML document looks like this:
    
    ```
    <!DOCTYPE html>
    <html>
    <head>
    <title>This is document title</title>
    </head>
    <body>
    <h1>This is a heading</h1>
    <p>Document content goes here.....</p>
    </body>
    </html>
    ```
    

**XII. Additional Notes**

- HTML was originally intended for sharing scientific information between researchers.
- The World Wide Web Consortium (W3C) recommends using lowercase tags, starting with HTML 4.
- HTML is not case sensitive.

These notes cover the essential aspects of HTML programming suitable for an introductory week. They should give a basic understanding of the language, its structure, and how to create basic web pages.





