<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<p>Custom login page</p>
    <@l.login "/login"></@l.login>
<a href="/registration">Add new user</a>
</@c.page>
