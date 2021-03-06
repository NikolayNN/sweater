<#import "parts/common.ftl" as c>

<@c.page>
    User Editor
    <form action="/user" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="hidden" value="${user.id}" name="userId">
        <input type="text" name="username" value="${user.username}">
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox"
                            name="${role}"
                            ${user.roles?seq_contains(role)?string("checed", "")} >
                    ${role}
                </label>
            </div>
        </#list>

        <button type="submit">Save</button>
    </form>
</@c.page>
