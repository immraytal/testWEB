<html>
<head>
    <title>Home</title>
</head>

    <body>
    <#if users?has_content>
    <ul>
        <#list users as user>
            <li>${user.name} ${user.password} </li>
        </#list>
    </ul>
        <#else >
        <p>Haven't users</p>
    </#if>
    </body>
</html>