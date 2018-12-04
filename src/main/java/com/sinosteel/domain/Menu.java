package com.sinosteel.domain;

import com.alibaba.fastjson.annotation.JSONField;
import com.sinosteel.framework.helpers.hierarchy.domain.Hierarchy;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "TBL_SYS_MENU")
public class Menu extends Hierarchy<Menu> {
    private static final long serialVersionUID = -2328400315682798977L;

    @Column(name = "MENU_PATH")
    private String menuPath;

    @Column(name = "MENU_ICON")
    private String menuIcon;

    @ApiModelProperty(hidden = true)
    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "MENU_ID", foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private List<Function> functions;

    @ManyToOne
    @JoinColumn(name = "MODULE_ID", foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    @JSONField(serialize = false)
    private Module module;

    public String getMenuPath() {
        return menuPath;
    }

    public void setMenuPath(String menuPath) {
        this.menuPath = menuPath;
    }

    public String getMenuIcon() {
        return menuIcon;
    }

    public void setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon;
    }

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }

    public List<Function> getFunctions() {
        return functions;
    }

    public void setFunctions(List<Function> functions) {
        this.functions = functions;
    }
}
