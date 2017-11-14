/**
 * FileName: SiteMeshFilter
 * Author:   Ageek-姚树友
 * Date:     17-11-13 上午9:40
 * Description:
 */

package cn.itlaobing.eshop.web.filter;

import cn.itlaobing.eshop.web.filter.tags.CssJsTag;
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class SiteMeshFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        //WEB-INF/views/layout/application.jsp
        builder.addDecoratorPath("/**","/WEB-INF/views/layout/application.jsp");
        builder.addExcludedPath("/asserts/**");
        builder.addTagRuleBundle(new CssJsTag());
    }
}
