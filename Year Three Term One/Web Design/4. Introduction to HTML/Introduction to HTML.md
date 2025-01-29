[[Web design Course outline]]

### Week 4: Introduction to HTML audio:- 
![[Note Narration Audio/Introduction_to_HTML_-_Jan_28_2025_12:52.mp3]]


### Week 4: Introduction to HTML

**I. What is HTML?**

- **Definition**: HTML, which stands for **Hyper Text Markup Language**, is the most widely used language on the Web for developing web pages. It is a **markup language** used to specify the structure and links within a hypertext document.
- **Purpose**: HTML was originally developed to define the **structure of documents**, such as headings, paragraphs, and lists, to facilitate the sharing of scientific information. Now it is widely used to format web pages.
- **Functionality**: HTML uses **special formatting commands** placed in the text to describe how the final version should appear. Web browsers interpret the HTML code to format the page for display.

**II. History and Versions of HTML**

- **Creation**: HTML was created by **Tim Berners-Lee** in late 1991.
- **HTML 2.0:** The first standard HTML specification was **HTML 2.0**, published in 1995.
- **HTML 4.01**: A major version of HTML, **HTML 4.01**, was published in late 1999.
- **HTML5**: The current version, **HTML5**, is an extension of HTML 4.01 and was published in 2012.

**III. Basic HTML Document Structure**

- **Structural Tags**: A correct HTML document must include structural tags:
    - **`<html>`**: This tag is the **outermost element** and acts as a container for all other HTML elements, except for the `<!DOCTYPE>` tag. It tells the browser that the whole document is written in HTML.
    - **`<head>`**: This tag represents the **document's header** and can contain other HTML tags like `<title>` and `<link>`. It holds information about the document itself.
    - **`<title>`**: The `<title>` tag is used inside the `<head>` tag to **mention the document title**, which appears in the browser's title bar.
    - **`<body>`**: This tag represents the **document's body**, where content is displayed. It contains other HTML tags like `<h1>`, `<div>`, and `<p>`.
- **Document Declaration**: The `<!DOCTYPE html>` declaration defines the document type as HTML5 and helps the browser display a web page correctly. This declaration should be placed before the `<html>` tag.
- **Standard Structure**: A typical HTML document follows this structure:
    
    ```
    <!DOCTYPE html>
    <html>
    <head>
    <title>Document Title</title>
    </head>
    <body>
    Document content goes here
    </body>
    </html>
    ```
    
- **Single Body Tag**: An HTML document should only have **one `<body>` tag**.
- **Nesting**: HTML elements can be nested within each other.

**IV. HTML Tags and Elements**

- **Tags**: HTML markup consists of **tags**, which appear inside angled brackets `<` and `>`.
- **Start and End Tags**: Most HTML tags have a corresponding end tag, which is specified by the name of the tag preceded by the `/` character, such as `</tag>`. For example, `<b>` is the start tag for bold text, and `</b>` is the end tag.
- **Elements**: An HTML element typically consists of a start tag, some content, and an end tag. For example, `<p>This is a paragraph.</p>` is an HTML element.
- **Lowercase Tags**: The World Wide Web Consortium (W3C) recommends using **lowercase tags** starting from HTML 4.
- **Basic Tags**: Some basic HTML tags include:
    - **Paragraph**: `<p>` represents a paragraph.
    - **Line Break**: `<br>` forces a line break within the same paragraph.
    - **Headings**: `<h1>` to `<h6>` represent headings of different sizes, where `<h1>` is the largest.
    - **Bold Text**: `<b>` makes text bold.
    - **Italic Text**: `<i>` makes text italic.
    - **Preformatted Text**: `<pre>` is used for code with fixed-width font and significant spaces.
    - **Images**: `<img>` is used to embed images.
    - **Hyperlinks**: `<a href="...">` creates hyperlinks to other web pages.
    - **Horizontal Line**: `<hr>` creates a horizontal line.
    - **Meta Tags**: `<meta>` provides metadata about the HTML document, including the character set.
- **HTML5 Tags**: Newer HTML5 tags include:
    - **Content Definition**: `<article>`, `<section>`, `<header>`, `<footer>`, `<summary>`, `<aside>`, `<details>`, `<mark>`, `<figcaption>`, `<figure>`.
    - **Navigation**: `<nav>`, `<menuitem>`.
    - **Drawing**: `<svg>` for Scalable Vector Graphics and `<canvas>` for JavaScript drawing.
    - **Media**: `<video>` and `<audio>` for timed media playback.

**V. HTML Formatting**

- **Text Formatting**: HTML provides tags to format text:
    - **Bold Text**: Text within `<b>...</b>` tags is displayed in bold.
    - **Italic Text**: Text within `<i>...</i>` tags is displayed in italics.
    - **Underlined Text**: Text within `<u>...</u>` tags is displayed with an underline.
    - **Small Text**: Text within `<small>...</small>` tags is displayed in a smaller typeface.
    - **Marked Text**: Text within `<mark>...</mark>` tags is marked with yellow.
    - **Strong Text**: Text within `<strong>...</strong>` tags is displayed as important text.
- **Phrase Tags**: HTML includes phrase tags to indicate the meaning of the enclosed text:
    - `<em>`: Indicates emphasized text.
    - `<strong>`: Indicates important text.
    - `<cite>`: Indicates the title of a work.
    - `<code>`: Indicates computer code text.
    - `<dfn>`: Indicates a definition.
    - `<abbr>`: Indicates an abbreviation.
    - `<bdi>`: Indicates bi-directional isolation.
- **Grouping Content**:
    - `<div>` and `<span>` elements allow you to group elements to create sections or subsections.

**VI. Lists in HTML**

- **Unordered Lists**: `<ul>` tag defines an unordered list, using bullets.
    - List items are defined using the `<li>` tag.
- **Ordered Lists**: `<ol>` tag defines an ordered list, using numbers or letters.
    - List items are defined using the `<li>` tag.
    - The `type` attribute can be used to specify the type of numbering: `1` (numbers), `A` (uppercase letters), `a` (lowercase letters), `I` (uppercase roman numerals), `i` (lowercase roman numerals).
- **Definition Lists**: `<dl>` tag defines a definition list.
    - `<dt>` tag defines a term.
    - `<dd>` tag defines the term definition.

**VII. HTML Attributes**

- **Definition:** Attributes provide additional information about HTML elements.
- **Core Attributes**:
    - `id`: Specifies a unique id for an element.
    - `class`: Associates an element with a style sheet.
    - `title`: Specifies a pop-up tooltip for the element.
    - `style`: Defines an inline style.
    - `hidden`: Specifies if an element should be visible or not.
- **Internationalization Attributes**:
    - `lang`: Indicates the language being used for the enclosed content.
    - `xml:lang`: Specifies the language of an element.

**VIII. Hyperlinks and Anchors**

- **Creating Links**: The `<a>` tag creates a hyperlink to another file or location.
- **`href` Attribute**: The `href` attribute specifies the URL of the link.
- **Relative URLs**: Links can use relative URLs to link to other files within the same website.
- **Linking to Sections**: Links can also jump to specific sections within a document by using the `#` character followed by the `id` of the element.

**IX. Comments in HTML**

- **Purpose:** Comments are used to leave notes in the HTML source file, which are not displayed in the browser.
- **Syntax:** An HTML comment is given as `<!--- text in the comment --->`.

**X. Practical Considerations**

- **Text Editors**: HTML documents can be created using any text editor, such as Notepad, Notepad++, or Edit plus.
- **Browser as Formatter**: Web browsers act as HTML readers and format the HTML according to the tags.

These notes provide a detailed overview of the key topics covered in Week 4: Introduction to HTML, including the basic structure of HTML documents, common HTML tags, text formatting, lists, attributes, hyperlinks, and comments. They draw from the provided sources to offer a comprehensive understanding of HTML fundamentals.

