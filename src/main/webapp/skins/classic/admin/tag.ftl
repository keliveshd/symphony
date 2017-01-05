<#include "macro-admin.ftl">
<@admin "tags">
<div class="content">
    <div class="module">
        <div class="module-header">
            <h2>${unmodifiableLabel}</h2>
        </div>
        <div class="module-panel form fn-clear">
            <label for="oId">Id</label>
            <input type="text" id="oId" value="${tag.oId}" readonly="readonly" />

            <label for="tagReferenceCount">${refCountLabel}</label>
            <input type="text" id="tagReferenceCount" name="tagReferenceCount" value="${tag.tagReferenceCount}" readonly="readonly" />

            <label for="tagCommentCount">${commentCountLabel}</label>
            <input type="text" id="tagCommentCount" name="tagCommentCount" value="${tag.tagCommentCount}" readonly="readonly" />

            <label for="tagFollowerCount">${followerCountLabel}</label>
            <input type="text" id="tagFollowerCount" name="tagFollowerCount" value="${tag.tagFollowerCount}" />
        </div>
    </div>
    <#if permissions["tagUpdateTagBasic"].permissionGrant>
    <div class="module">
        <div class="module-header">
            <h2>${modifiableLabel}</h2>
        </div>
        <div class="module-panel form fn-clear">
            <form action="${servePath}/admin/tag/${tag.oId}" method="POST">
                <label for="tagTitle">${tagLabel}${updateCaseOnlyLabel}</label>
                <input type="text" id="tagTitle" name="tagTitle" value="${tag.tagTitle}" />

                <label for="tagURI">URI</label>
                <input type="text" id="tagURI" name="tagURI" value="${tag.tagURI}" />

                <label for="tagDescription">${descriptionLabel}</label>
                <textarea rows="5" id="tagDescription" name="tagDescription">${tag.tagDescription}</textarea>

                <label for="tagIconPath">${iconPathLabel}</label>
                <input type="text" id="tagIconPath" name="tagIconPath" value="${tag.tagIconPath}" />

                <label>${tagStatusLabel}</label>
                <select id="tagStatus" name="tagStatus">
                    <option value="0"<#if 0 == tag.tagStatus> selected</#if>>${validLabel}</option>
                    <option value="1"<#if 1 == tag.tagStatus> selected</#if>>${banLabel}</option>
                </select>

                <label for="tagGoodCnt">${goodCntLabel}</label>
                <input type="text" id="tagGoodCnt" name="tagGoodCnt" value="${tag.tagGoodCnt}" />

                <label for="tagBadCnt">${badCntLabel}</label>
                <input type="text" id="tagBadCnt" name="tagBadCnt" value="${tag.tagBadCnt}" />

                <label for="seoTitle">${seoTitleLabel}</label>
                <input type="text" id="seoTitle" name="tagSeoTitle" value="${tag.tagSeoTitle}" />

                <label for="seoKeywords">${seoKeywordsLabel}</label>
                <input type="text" id="seoKeywords" name="tagSeoKeywords" value="${tag.tagSeoKeywords}" />

                <label for="seoDesc">${seoDescLabel}</label>
                <input type="text" id="seoDesc" name="tagSeoDesc" value="${tag.tagSeoDesc}" />

                <label for="tagCSS">CSS</label>
                <textarea rows="20" id="tagCSS" name="tagCSS">${tag.tagCSS}</textarea>

                <label for="tagIndexSquared">${tagIndexSquared} </label>
                    <select id="tagIndexSquared" name="tagIndexSquared">
                    <option value="0"<#if tag.tagIndexSquared?string == "0" > selected</#if>>无</option>
                    <option value="1"<#if tag.tagIndexSquared?string == "1" > selected</#if>>左上</option>
                    <option value="2"<#if tag.tagIndexSquared?string == "2" > selected</#if>>上</option>
                    <option value="3"<#if tag.tagIndexSquared?string == "3" > selected</#if>>右上</option>
                    <option value="4"<#if tag.tagIndexSquared?string == "4" > selected</#if>>左</option>
                    <option value="5"<#if tag.tagIndexSquared?string == "5" > selected</#if>>中</option>
                    <option value="6"<#if tag.tagIndexSquared?string == "6" > selected</#if>>右</option>
                    <option value="7"<#if tag.tagIndexSquared?string == "7" > selected</#if>>左下</option>
                    <option value="8"<#if tag.tagIndexSquared?string == "8" > selected</#if>>中下</option>
                    <option value="9"<#if tag.tagIndexSquared?string == "9" > selected</#if>>右下</option>
                </select>

                <br/><br/>
                <button type="submit" class="green fn-right">${submitLabel}</button>
            </form>
        </div>
    </div>
    </#if>
</div>
</@admin>