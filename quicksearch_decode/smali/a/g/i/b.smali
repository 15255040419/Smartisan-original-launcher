.class public final La/g/i/b;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z


# direct methods
.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    sget-boolean v0, La/g/i/b;->b:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 12
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, La/g/i/b;->a:Ljava/lang/reflect/Field;

    .line 13
    sget-object v2, La/g/i/b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    .line 14
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    sput-boolean v0, La/g/i/b;->b:Z

    .line 16
    :cond_1
    sget-object v0, La/g/i/b;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 17
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    .line 18
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    sput-object v2, La/g/i/b;->a:Ljava/lang/reflect/Field;

    :cond_2
    return-object v2
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Landroidx/core/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method
