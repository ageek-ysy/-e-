/**
 * FileName: CssJsTag
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午4:03
 * Description:
 */

package cn.itlaobing.eshop.web.filter.tags;

import org.sitemesh.SiteMeshContext;
import org.sitemesh.content.ContentProperty;
import org.sitemesh.content.tagrules.TagRuleBundle;
import org.sitemesh.content.tagrules.html.ExportTagToContentRule;
import org.sitemesh.tagprocessor.State;

public class CssJsTag implements TagRuleBundle {
    @Override
    public void install(State defaultState, ContentProperty contentProperty, SiteMeshContext siteMeshContext) {
        defaultState.addRule("js",new ExportTagToContentRule(siteMeshContext,contentProperty.getChild("js"),false));
        defaultState.addRule("css",new ExportTagToContentRule(siteMeshContext,contentProperty.getChild("css"),false));
    }

    @Override
    public void cleanUp(State defaultState, ContentProperty contentProperty, SiteMeshContext siteMeshContext) {

    }
}
