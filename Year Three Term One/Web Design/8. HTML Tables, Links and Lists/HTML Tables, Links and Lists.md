[[Web design Course outline]]

### Weeks 9 - 10: HTML Tables, Links and Lists audio:- 

![[Note Narration Audio/HTML_Tables,_Links_and_Lists_-_Jan_29_2025_11:30.mp3]]

### Weeks 9 - 10: HTML Tables, Links and Lists

### I. HTML Tables

**A. Basic Structure:**

- HTML tables are used to organize data into rows and columns. The fundamental tags for creating a table are:
    - **`<table>`**: This tag defines the beginning and end of the table.
    - **`<tr>`**: This tag defines a table row.
    - **`<td>`**: This tag defines a standard table cell within a row.
    - **`<th>`**: This tag defines a table header cell, often displayed in bold.
- Example of a basic table structure:
    
    ```
    <table>
      <tr>
        <th>Header 1</th>
        <th>Header 2</th>
      </tr>
      <tr>
        <td>Data 1</td>
        <td>Data 2</td>
      </tr>
    </table>
    ```
    

**B. Table Enhancements:**

- **`<caption>`**: This tag adds a caption to the table, usually displayed above it.
- **Attributes**
    - **`border`**: Specifies the border width of the table.
    - **`width` and `height`**: Specify the width and height of the table.
    - **`align`**: Specifies the alignment of the table or table content.
- **`colspan` and `rowspan`**: These attributes allow table cells to span multiple columns or rows, respectively.
- **Styling**: Tables can be styled using CSS for borders, colors, and layout. The `style` attribute can be used to specify the width of the table.
- Tables can also be used for page layouts.

**C. Table Usage:**

- Tables can be used to present data in a structured format.
- Tables can also be used to organize content on a page in fixed or flexible layouts.
    - **Fixed Layout**: Uses pixel measurements to set the width of table columns.
    - **Flexible Layout**: Uses percentage measurements, which allows the table to adapt to different screen sizes.

### II. HTML Links

**A. Basic Structure:**

- The `<a>` tag is used to create hyperlinks, which allow users to navigate between web pages.
    
- The `href` attribute specifies the destination URL.
    
    ```
    <a href="https://www.example.com">Visit Example</a>
    ```
    
- The text between the opening and closing `<a>` tags becomes the clickable link. **B. Types of Links:**
    
- **Absolute URLs**: Full web addresses, e.g., `https://www.example.com/page.html`.
    
- **Relative URLs**: Paths relative to the current page, e.g., `page.html` or `folder/page.html`.
    
- **Email Links**: Create links that open the user's email client using `mailto:` in the `href` attribute.
    
    ```
    <a href="mailto:test@example.com">Email Us</a>
    ```
    
- **Links to Sections within a Document**:
    
    - Use the `name` attribute within an `<a>` tag to define a location in a document: `<a name="section_name"></a>`.
    - Use `#section_name` in the `href` attribute to link to that location: `<a href="#section_name">Go to Section</a>`.
    - If the location is in another document, include the filename in the URL like so: `<a href="URL#section_name">link</a>`.

**C. Link Enhancements:**

- **`target` attribute**:
    - Specifies where the linked page should open.
    - `_blank`: Opens the link in a new window or tab.
- **Styling Links**:
    - Links can be styled using CSS to change their color, underline, and other appearance attributes.
    - The `BODY` tag can have attributes such as `BGCOLOR`, `TEXT`, `LINK`, `VLINK`, and `ALINK` to define the overall color scheme for links.
        - `LINK` sets the color of the link
        - `VLINK` sets the color of a visited link.
        - `ALINK` sets the color of an active link.

### III. HTML Lists

**A. Unordered Lists:**

- The `<ul>` tag defines an unordered (bulleted) list.
- The `<li>` tag defines each list item.
    
    ```
    <ul>
        <li>Item 1</li>
        <li>Item 2</li>
    </ul>
    ```
    
- The `type` attribute can be used to specify the bullet style (e.g., `square`, `circle`, `disc`).

**B. Ordered Lists:**

- The `<ol>` tag defines an ordered (numbered) list.
- The `<li>` tag defines each list item.
    
    ```
    <ol>
      <li>First item</li>
      <li>Second item</li>
    </ol>
    ```
    
- The `type` attribute specifies the numbering style:
    - `1`: Numbers (default).
    - `A`: Uppercase letters.
    - `a`: Lowercase letters.
    - `I`: Uppercase Roman numerals.
    - `i`: Lowercase Roman numerals.
- The `start` attribute specifies the starting number of an ordered list.

**C. Definition Lists:**

- The `<dl>` tag defines a definition list.
- The `<dt>` tag defines a term.
- The `<dd>` tag defines the term's description.
    
    ```
    <dl>
        <dt>Term 1</dt>
        <dd>Description 1</dd>
        <dt>Term 2</dt>
        <dd>Description 2</dd>
    </dl>
    ```
    

**D. Nested Lists:**

- Lists can be nested within each other to create hierarchical structures.
    
    ```
    <ul>
      <li>Item 1
        <ol>
          <li>Sub-item 1</li>
          <li>Sub-item 2</li>
        </ol>
      </li>
       <li>Item 2</li>
    </ul>
    ```
    

### IV. Additional Notes

- **HTML Comments**:
    - Comments are added to HTML code using `<!-- ... -->`.
    - They are not displayed in the browser but are visible in the source code.
    - Comments can explain code or provide notes for developers.
- **HTML Structure**:
    - A standard HTML document includes `<html>`, `<head>`, `<title>`, and `<body>` tags.
    - The `<head>` contains meta-information like the title and links to stylesheets.
    - The `<body>` contains the content of the page that is displayed.
- **HTML Tags**: HTML uses tags enclosed in angled brackets `< >`.
    - Most tags have a start tag (e.g., `<p>`) and an end tag (e.g., `</p>`).

These notes should provide a detailed understanding of HTML Tables, Links, and Lists as covered in the sources, especially for weeks 9-10 of your course.


