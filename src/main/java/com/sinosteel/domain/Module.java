package com.sinosteel.domain;

import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

@Entity
@Table(name = "TBL_SYS_MODULE")
public class Module extends BaseEntity {
    private static final long serialVersionUID = 1274558803909260216L;

    @Column(name = "MODULE_PATH")
    private String modulePath;

    @Column(name = "MODULE_ICON")
    private String moduleIcon;

    @Transient
    @ApiModelProperty(hidden = true)
    private List<Menu> menus;

    public String getModulePath() {
        return modulePath;
    }

    public void setModulePath(String modulePath) {
        this.modulePath = modulePath;
    }

    public String getModuleIcon() {
        return moduleIcon;
    }

    public void setModuleIcon(String moduleIcon) {
        this.moduleIcon = moduleIcon;
    }

    public List<Menu> getMenus() {
        return menus;
    }

    public void setMenus(List<Menu> menus) {
        this.menus = menus;
    }
}
