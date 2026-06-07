.class public Lsmartisan/widget/PasswordEditText$c;
.super La/i/a/a;
.source "PasswordEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/PasswordEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic o:Lsmartisan/widget/PasswordEditText;


# direct methods
.method public constructor <init>(Lsmartisan/widget/PasswordEditText;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    .line 2
    invoke-direct {p0, p2}, La/i/a/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p2}, Lsmartisan/widget/PasswordEditText;->d(Lsmartisan/widget/PasswordEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public a(ILa/g/h/n/c;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$c;->d()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, La/g/h/n/c;->b(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->d(Lsmartisan/widget/PasswordEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, La/g/h/n/c;->c(Landroid/graphics/Rect;)V

    :cond_0
    const/16 p1, 0x10

    .line 10
    invoke-virtual {p2, p1}, La/g/h/n/c;->a(I)V

    return-void
.end method

.method public a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/PasswordEditText$c;->d()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 2

    const/16 p1, 0x10

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->e(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$b;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$b;->d()V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->e(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$b;

    move-result-object p1

    invoke-virtual {p1}, Lsmartisan/widget/PasswordEditText$b;->e()V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->f(Lsmartisan/widget/PasswordEditText;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    new-instance p2, Lsmartisan/widget/PasswordEditText$c$a;

    invoke-direct {p2, p0}, Lsmartisan/widget/PasswordEditText$c$a;-><init>(Lsmartisan/widget/PasswordEditText$c;)V

    invoke-static {p1, p2}, Lsmartisan/widget/PasswordEditText;->a(Lsmartisan/widget/PasswordEditText;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 16
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->f(Lsmartisan/widget/PasswordEditText;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object p3, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p3}, Lsmartisan/widget/PasswordEditText;->e(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$b;

    move-result-object p3

    invoke-virtual {p3}, Lsmartisan/widget/PasswordEditText$b;->a()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->g(Lsmartisan/widget/PasswordEditText;)V

    .line 18
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->h(Lsmartisan/widget/PasswordEditText;)Lsmartisan/widget/PasswordEditText$c;

    move-result-object p1

    invoke-virtual {p1}, La/i/a/a;->c()V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {p1}, Lsmartisan/widget/PasswordEditText;->g(Lsmartisan/widget/PasswordEditText;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisan/widget/PasswordEditText;->a(Lsmartisan/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lsmartisan/widget/R$string;->hide_password:I

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$string;->show_password:I

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/PasswordEditText$c;->o:Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
