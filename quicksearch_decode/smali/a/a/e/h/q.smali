.class public La/a/e/h/q;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public B:Landroidx/appcompat/view/menu/MenuBuilder;

.field public C:La/a/e/h/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;La/a/e/h/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 3
    iput-object p3, p0, La/a/e/h/q;->C:La/a/e/h/i;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public a(La/a/e/h/i;)Z
    .locals 1

    .line 4
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(La/a/e/h/i;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(La/a/e/h/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->b(La/a/e/h/i;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, La/a/e/h/q;->C:La/a/e/h/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/e/h/i;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->C:La/a/e/h/i;

    return-object v0
.end method

.method public m()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->m()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->o()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->p()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->q()Z

    move-result v0

    return v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->d(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->e(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, La/a/e/h/q;->C:La/a/e/h/i;

    invoke-virtual {v0, p1}, La/a/e/h/i;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->C:La/a/e/h/i;

    invoke-virtual {v0, p1}, La/a/e/h/i;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method

.method public t()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/q;->B:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method
