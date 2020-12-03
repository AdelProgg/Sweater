<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" value="${filter!}" placeholder="Search by tag" class = "form-control"/>
            <button type="submit" class = "btn btn-primary ml-2">Search</button>
        </form>
    </div>
    <div>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            Add new message
        </a>
    </div>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data" >
                <div class="form-group">
                    <input  class = "form-control" type="text" name="text" placeholder="Введите сообщения"/>
                </div>
                <div class="form-group">
                    <input  class = "form-control" type="text" name="tag" placeholder="Тэг"/>
                </div>
                <div class="form-group">
                    <div class = "custom-file">
                        <input  type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button class = "btn btn-primary" type="submit">Добавить</button>
            </form>
        </div>
    </div>
    <div class="card-columns">
        <#list messages as message>
            <div class="card my-3">
                <div>
                    <div>
                        <#if message.filename??>
                            <img src="/img/result.jpg" class="card-img-top" width="200px" height="200px">
                        </#if>
                    </div>
                    <div class="m-2">
                        <span>${message.text}</span>
                        <i>${message.tag}</i>
                    </div>
                    <div class="card-footer text-muted">
                        ${message.authorName}
                    </div>

                </div>
            </div>
        <#else > No message
        </#list>
    </div>
</@c.page>