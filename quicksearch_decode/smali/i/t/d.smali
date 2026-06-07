.class public Li/t/d;
.super Ljava/lang/Object;
.source "ShadowDrawableHelper.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/t/d;->c:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lsmartisan/widget/R$styleable;->SmtShadow:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lsmartisan/widget/R$styleable;->SmtShadow_smt_shadow_enabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Li/t/d;->a:Z

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->SmtShadow_smt_shadow_project:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Li/t/d;->b:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Li/t/d;->a:Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Li/t/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Li/t/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/t/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Li/t/c;

    invoke-virtual {v0}, Li/t/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Li/t/d;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Li/t/c;

    iget-boolean p2, p0, Li/t/d;->b:Z

    invoke-virtual {p1, p2}, Li/t/c;->a(Z)V

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Li/t/d;->a:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Li/t/c;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Li/t/d;->c:Landroid/view/View;

    iget-boolean v2, p0, Li/t/d;->b:Z

    invoke-static {v0, p1, p2, v2}, Li/t/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;IZ)Li/t/c;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Li/t/d;->b:Z

    return-void
.end method
