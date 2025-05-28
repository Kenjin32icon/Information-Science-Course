[[Web design Course outline]]
### Weeks 7-9: HTML Formatting, Elements, and Attributes audio:
![[Note Narration Audio/HTML_Formatting,_Elements,_Attributes_-_Jan_29_2025_11:13.mp3]]


### Weeks 7-9: HTML Formatting, Elements, and Attributes:

**I. Core Concepts**

- **HTML as a Markup Language:** HTML is a language that uses tags to structure and format content on web pages. It is not a programming language, but rather a way to annotate text with instructions for how it should be displayed.
- **Tags and Elements:**
    - HTML uses **tags**, enclosed in angle brackets (`<` and `>`), to indicate how content should be treated. Most tags come in pairs: an opening tag (e.g., `<b>`) and a closing tag (e.g., `</b>`).
    - An **HTML element** consists of the opening tag, the content, and the closing tag.
- **Nesting:** HTML elements can be nested inside one another. This creates a hierarchical structure that is essential for organizing content. For example, a paragraph tag `<p>` can be nested within a `<div>` tag.
- **Attributes:** HTML tags can have attributes that provide additional information about the element. Attributes are specified within the opening tag, in the form of a name-value pair. For example, `<p id="my-paragraph">` has an attribute "id" with a value of "my-paragraph".

**II. HTML Formatting**

- **Text Formatting Tags:** HTML provides several tags to format text.
    - `<b>` makes text bold.
    - `<i>` makes text italicized.
    - `<u>` underlines text.
    - `<em>` emphasizes text, often displayed as italics.
    - `<strong>` indicates important text, often displayed as bold.
    - `<mark>` highlights text, often with yellow.
    - `<small>` makes text smaller.
    - `<sub>` displays subscript text.
    - `<ins>` displays inserted text.
    - `<dfn>` indicates a special term, often displayed as italics.
    - `<code>` displays text as computer code.
    - `<cite>` is used to cite a reference, often displayed as italics.
- **Headings:**
    - HTML uses heading tags (`<h1>` to `<h6>`) to structure content. `<h1>` is the most important heading, and `<h6>` is the least important.
    - Headings create a document outline and are important for search engine indexing.
- **Paragraphs and Line Breaks:**
    - `<p>` tag is used for paragraphs of text.
    - `<br>` tag creates a line break within a paragraph.
    - `<pre>` tag is used to display preformatted text, where spaces and line breaks are preserved.
- **Horizontal Rules:**
    - `<hr>` tag inserts a horizontal line to separate content.
- **Grouping Content:**
    - `<div>` and `<span>` tags are used to group elements together, creating sections and subsections.

**III. HTML Elements**

- **Structural Elements:** These elements define the basic structure of an HTML document:
    - `<!DOCTYPE>` declaration specifies the HTML version being used.
    - `<html>` is the root element that contains all other elements except the `<!DOCTYPE>` tag.
    - `<head>` contains meta-information about the document, such as the title.
        - `<title>` specifies the document's title, which appears in the browser's title bar.
    - `<body>` contains the main content of the document.
- **Text Elements:** Elements for formatting text are described in the "HTML Formatting" section above.
- **List Elements:**
    - `<ul>` creates an unordered (bulleted) list.
        - `<li>` is used for list items in unordered and ordered lists.
    - `<ol>` creates an ordered (numbered) list.
        - The `type` attribute can be used to specify the numbering style (e.g., `type="1"` for numbers, `type="a"` for lowercase letters, `type="i"` for lowercase roman numerals).
        - The `start` attribute can be used to specify the starting number for the list.
    - `<dl>` creates a definition list.
        - `<dt>` is used for terms in a definition list.
        - `<dd>` is used for the definitions in a definition list.
- **Other Notable Elements**
    - `<address>` specifies contact information.
    - `<article>` represents a self-contained composition in a document, page, application, or site and intended to be independently distributable or reusable.
    - `<aside>` represents a portion of a document whose content is only indirectly related to the document’s main content.
    - `<footer>` represents a footer for a document or section.
    - `<header>` represents a header for a document or section.
    - `<main>` represents the main content of the body of a document.
    - `<nav>` represents a section of a page that links to other pages or to parts within the page.
    - `<summary>` specifies a summary, caption, or legend for a given `<details>`.

**IV. HTML Attributes**

- **Core Attributes:** These attributes are common to most HTML elements:
    - `id`: Specifies a unique identifier for an element. This allows for selection of specific elements in CSS or Javascript.
    - `class`: Specifies one or more class names for an element, used to apply styles.
    - `style`: Specifies inline CSS styles for an element.
    - `title`: Provides a user-defined "pop-up" title for the element.
- **Internationalization Attributes:**
    - `xml:lang`: Indicates the language of the content of an element.
- **Language Attributes**:
    - `lang` indicates the language of the enclosed content.
- **Specific Attributes:** Some tags may have additional attributes which are unique to them such as:
    - The `align` attribute of the `<h1>` to `<h6>` tags, specifies the alignment of the heading.
    - The `manifest` and `xmlns` attributes of the `<html>` tag.
    - The `type` attribute of the `<ol>` tag which specifies the type of numbering used in an ordered list.
    - The `start` attribute of the `<ol>` tag which specifies the starting value of an ordered list.
- **Event Attributes:** HTML elements can also have event attributes, which are triggered by user actions such as mouse clicks or hovering.

**V. Linking**

- **Anchors:** The `<a>` tag is used to create links to other pages or locations.
    - The `href` attribute specifies the URL of the linked resource.
    - Links can be made to sections within the same page using the `#` symbol with a location name defined using the `name` attribute of the `<a>` tag.
    - Links can also target specific windows using the `target` attribute.
- **Email Links:**
    - The `mailto:` URI scheme is used to create email links.
    - It's possible to specify a default subject and body for the email using the `subject` and `body` parameters.

**VI. Meta Information**

- **Meta Tags:** The `<meta>` tag provides metadata about the HTML document.
    - It can be used to specify the character set, keywords, document description, and revision date.
    - `charset` attribute specifies the character set.
- **Base Tag:** The `<base>` tag specifies the base URL for all relative URLs in a document.

**VII. Comments**

- **HTML Comments:** Comments in HTML are used to explain code or add notes.
    - Comments are enclosed within `<!--` and `-->` tags and are ignored by the browser.

**VIII. Style Sheets and HTML**

- **Style Sheets:** Style sheets (often using CSS) are used to control the presentation and formatting of HTML content.
- **Consistent Formatting:** Style sheets ensure consistent look and feel across multiple pages.
- **Maintainability:** Style sheets allow for easier updating and maintenance of website designs.
- **CSS Rules:** CSS rules are used to target specific elements using selectors such as tag names, ids and classes.

**IX. Key Takeaways**

- HTML is a foundational technology for creating web content by marking up text with tags.
- Understanding the structure of HTML documents, including the head and body, is essential for writing valid HTML.
- HTML offers a wide range of tags to format text, create headings, lists, links, and other common elements.
- Attributes enhance HTML elements with additional characteristics.
- Comments in HTML help with code maintainability.
- Style sheets (CSS) should be used to manage the appearance of web pages, making sites consistent and easier to maintain.

These detailed notes should provide a strong basis for understanding HTML formatting, elements, and attributes, as indicated in the course outline.

