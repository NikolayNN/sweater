<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <p>Custom login page</p>
    <p>Add new user</p>
    ${message}
    <@l.login "/registration"></@l.login>
</@c.page>
