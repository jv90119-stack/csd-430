/**
JOSE VELAZQUEZ
MODULE 10.2 ASSIGNMENT
DATE: 08/02/2026
This is the GreetingTag class that extends SimpleTagSupport to create a custom JSP tag.
It takes a name attribute and displays a welcome message. If the name is null or blank,
it defaults to "Guest".
*/


package com.example.tags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class GreetingTag extends SimpleTagSupport {

    private String name;

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void doTag() throws JspException, IOException {
        String displayName = name == null || name.isBlank()
                ? "Guest"
                : name;

        getJspContext().getOut()
                .write("<p>Welcome, " + displayName + "!</p>");
    }
}