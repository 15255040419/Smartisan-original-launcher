.class public La/a/f/c;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/AppCompatDrawableManager;

.field public c:I

.field public d:La/a/f/r;

.field public e:La/a/f/r;

.field public f:La/a/f/r;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, La/a/f/c;->c:I

    .line 3
    iput-object p1, p0, La/a/f/c;->a:Landroid/view/View;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iput-object p1, p0, La/a/f/c;->b:Landroidx/appcompat/widget/AppCompatDrawableManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 27
    iget-object v0, p0, La/a/f/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, La/a/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0, v0}, La/a/f/c;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v1, p0, La/a/f/c;->e:La/a/f/r;

    if-eqz v1, :cond_1

    .line 31
    iget-object v2, p0, La/a/f/c;->a:Landroid/view/View;

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 33
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/graphics/drawable/Drawable;La/a/f/r;[I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, La/a/f/c;->d:La/a/f/r;

    if-eqz v1, :cond_2

    .line 35
    iget-object v2, p0, La/a/f/c;->a:Landroid/view/View;

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/graphics/drawable/Drawable;La/a/f/r;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 17
    iput p1, p0, La/a/f/c;->c:I

    .line 18
    iget-object v0, p0, La/a/f/c;->b:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/f/c;->a:Landroid/view/View;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, La/a/f/c;->a(Landroid/content/res/ColorStateList;)V

    .line 21
    invoke-virtual {p0}, La/a/f/c;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, La/a/f/c;->d:La/a/f/r;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, La/a/f/r;

    invoke-direct {v0}, La/a/f/r;-><init>()V

    iput-object v0, p0, La/a/f/c;->d:La/a/f/r;

    .line 40
    :cond_0
    iget-object v0, p0, La/a/f/c;->d:La/a/f/r;

    iput-object p1, v0, La/a/f/r;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v0, La/a/f/r;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, La/a/f/c;->d:La/a/f/r;

    .line 43
    :goto_0
    invoke-virtual {p0}, La/a/f/c;->a()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 22
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, La/a/f/r;

    invoke-direct {v0}, La/a/f/r;-><init>()V

    iput-object v0, p0, La/a/f/c;->e:La/a/f/r;

    .line 24
    :cond_0
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    iput-object p1, v0, La/a/f/r;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, v0, La/a/f/r;->c:Z

    .line 26
    invoke-virtual {p0}, La/a/f/c;->a()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, La/a/f/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, La/a/f/t;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)La/a/f/t;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, La/a/f/t;->g(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 3
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, La/a/f/c;->c:I

    .line 4
    iget-object p2, p0, La/a/f/c;->b:Landroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v1, p0, La/a/f/c;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, La/a/f/c;->c:I

    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, La/a/f/c;->a(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, La/a/f/t;->g(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, La/a/f/c;->a:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 9
    invoke-virtual {p1, v1}, La/a/f/t;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 10
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, La/a/f/t;->g(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, La/a/f/c;->a:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    .line 13
    invoke-virtual {p1, v1, v0}, La/a/f/t;->d(II)I

    move-result v0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, La/a/f/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-virtual {p1}, La/a/f/t;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, La/a/f/t;->a()V

    throw p2
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 44
    iget-object v0, p0, La/a/f/c;->f:La/a/f/r;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, La/a/f/r;

    invoke-direct {v0}, La/a/f/r;-><init>()V

    iput-object v0, p0, La/a/f/c;->f:La/a/f/r;

    .line 46
    :cond_0
    iget-object v0, p0, La/a/f/c;->f:La/a/f/r;

    .line 47
    invoke-virtual {v0}, La/a/f/r;->a()V

    .line 48
    iget-object v1, p0, La/a/f/c;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 49
    iput-boolean v2, v0, La/a/f/r;->d:Z

    .line 50
    iput-object v1, v0, La/a/f/r;->a:Landroid/content/res/ColorStateList;

    .line 51
    :cond_1
    iget-object v1, p0, La/a/f/c;->a:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->g(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    iput-boolean v2, v0, La/a/f/r;->c:Z

    .line 53
    iput-object v1, v0, La/a/f/r;->b:Landroid/graphics/PorterDuff$Mode;

    .line 54
    :cond_2
    iget-boolean v1, v0, La/a/f/r;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, La/a/f/r;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 55
    :cond_4
    :goto_0
    iget-object v1, p0, La/a/f/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a(Landroid/graphics/drawable/Drawable;La/a/f/r;[I)V

    return v2
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 9
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/a/f/r;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 4
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, La/a/f/r;

    invoke-direct {v0}, La/a/f/r;-><init>()V

    iput-object v0, p0, La/a/f/c;->e:La/a/f/r;

    .line 6
    :cond_0
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    iput-object p1, v0, La/a/f/r;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, La/a/f/r;->d:Z

    .line 8
    invoke-virtual {p0}, La/a/f/c;->a()V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, La/a/f/c;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, La/a/f/c;->a(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, La/a/f/c;->a()V

    return-void
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/c;->e:La/a/f/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/a/f/r;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    .line 2
    iget-object v0, p0, La/a/f/c;->d:La/a/f/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method
