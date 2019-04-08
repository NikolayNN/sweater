<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>

    <div>
        <@l.logout></@l.logout>
        <a href="/user">User List</a>
    </div>

    <div>
        <form method="post" action="/main">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="text" name="text" placeholder="Введите сообщение">
            <input type="text" name="tag" placeholder="Тег">
            <button type="submit">Добавить</button>
        </form>
    </div>

    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text" name="filter" placeholder="Тег">
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
        <div>
            <div>
                <b>${message.id}</b>
                <span>${message.text}</span>
                <i>${message.tag}</i>
                <strong>${message.authorName}</strong>
            </div>
        </div>
        <#else>
        No message
    </#list>
</@c.page>
