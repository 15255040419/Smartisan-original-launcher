.class public Lsmartisan/widget/QuickDeleteEditText$a;
.super La/i/a/a;
.source "QuickDeleteEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/QuickDeleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic o:Lsmartisan/widget/QuickDeleteEditText;


# direct methods
.method public constructor <init>(Lsmartisan/widget/QuickDeleteEditText;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    .line 2
    invoke-direct {p0, p2}, La/i/a/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p2}, Lsmartisan/widget/QuickDeleteEditText;->a(Lsmartisan/widget/QuickDeleteEditText;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p2}, Lsmartisan/widget/QuickDeleteEditText;->b(Lsmartisan/widget/QuickDeleteEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-lt p1, p2, :cond_0

    const/16 p1, 0x100

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public a(ILa/g/h/n/c;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/QuickDeleteEditText$a;->d()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, La/g/h/n/c;->b(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p1}, Lsmartisan/widget/QuickDeleteEditText;->b(Lsmartisan/widget/QuickDeleteEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, La/g/h/n/c;->c(Landroid/graphics/Rect;)V

    const/16 p1, 0x10

    .line 10
    invoke-virtual {p2, p1}, La/g/h/n/c;->a(I)V

    return-void
.end method

.method public a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/QuickDeleteEditText$a;->d()Ljava/lang/CharSequence;

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

    .line 5
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {v0}, Lsmartisan/widget/QuickDeleteEditText;->a(Lsmartisan/widget/QuickDeleteEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-static {p1}, Lsmartisan/widget/QuickDeleteEditText;->c(Lsmartisan/widget/QuickDeleteEditText;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickDeleteEditText$a;->o:Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->quick_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
