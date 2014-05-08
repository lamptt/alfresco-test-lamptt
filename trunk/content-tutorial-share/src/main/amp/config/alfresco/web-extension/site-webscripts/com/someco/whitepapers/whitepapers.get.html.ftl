<#assign datetimeformat="EEE, dd MMM yyyy HH:mm:ss zzz">
<html>
    <body>
        <h3>Whitepapers</h3>
        <p>Foo: ${foo}</p>
        <table>
            <#list whitepapers as child>
                <tr>
                    <td><b>Name</b></td>
        <td>${child.name}</td>
                </tr>
                <tr>
                    <td><b>Title</b></td>
        <td>${child.title}</td>
                </tr>
                <tr>
                    <td><b>Link</b></td>
        <td><a href="${url.context}${child.link}?guest=true">${url.context}${child.link}</a></td>
                </tr>
                <tr>
                    <td><b>Type</b></td>
        <td>${child.type}</td>
                </tr>
                <tr>
                    <td><b>Size</b></td>
        <td>${child.size}</td>
                </tr>
                <tr>
                    <td><b>Id</b></td>
        <td>${child.id}</td>
                </tr>
                <tr>
                    <td><b>Description</b></td>
                    <td><p>${child.description}</p>
                    </td>
                </tr>
                <tr>
                    <td><b>Pub Date</b></td>
        <td>${child.pubDate}</td>
                </tr>
                <tr>
                    <td><b><a href="${url.serviceContext}/someco/rating.html?id=${child.id}&guest=true">Ratings</a></b></td>
                    <td>
                        <table>
                            <tr>
                                <td><b>Average</b></td>
                <td>${child.rating.average!"0"}</td>
                            </tr>
                            <tr>
                                <td><b>Count</b></td>
                <td>${child.rating.count!"0"}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <#if !(child.id == whitepapers?last.id)>
                    <tr>
            <td colspan="2" bgcolor="999999">&nbsp;</td>
        </tr>
                </#if>
            </#list>
        </table>
    </body>
</html>
