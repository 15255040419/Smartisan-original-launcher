.class public abstract La/i/a/a;
.super La/g/h/a;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/i/a/a$c;
    }
.end annotation


# static fields
.field public static final n:Landroid/graphics/Rect;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:La/i/a/a$c;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, La/i/a/a;->n:Landroid/graphics/Rect;

    .line 2
    new-instance v0, La/i/a/a$a;

    invoke-direct {v0}, La/i/a/a$a;-><init>()V

    .line 3
    new-instance v0, La/i/a/a$b;

    invoke-direct {v0}, La/i/a/a$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La/g/h/a;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La/i/a/a;->e:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La/i/a/a;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, La/i/a/a;->g:[I

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, La/i/a/a;->k:I

    .line 7
    iput v0, p0, La/i/a/a;->l:I

    .line 8
    iput v0, p0, La/i/a/a;->m:I

    if-eqz p1, :cond_1

    .line 9
    iput-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(FF)I
.end method

.method public a(Landroid/view/View;)La/g/h/n/d;
    .locals 0

    .line 1
    iget-object p1, p0, La/i/a/a;->j:La/i/a/a$c;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, La/i/a/a$c;

    invoke-direct {p1, p0}, La/i/a/a$c;-><init>(La/i/a/a;)V

    iput-object p1, p0, La/i/a/a;->j:La/i/a/a$c;

    .line 3
    :cond_0
    iget-object p1, p0, La/i/a/a;->j:La/i/a/a$c;

    return-object p1
.end method

.method public final a(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2}, La/i/a/a;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, La/i/a/a;->c(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILa/g/h/n/c;)V
.end method

.method public abstract a(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public a(IZ)V
    .locals 0

    return-void
.end method

.method public a(La/g/h/n/c;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;La/g/h/n/c;)V
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, La/g/h/a;->a(Landroid/view/View;La/g/h/n/c;)V

    .line 13
    invoke-virtual {p0, p2}, La/i/a/a;->a(La/g/h/n/c;)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(I)Z
    .locals 1

    .line 22
    iget v0, p0, La/i/a/a;->k:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, La/i/a/a;->k:I

    .line 24
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 25
    invoke-virtual {p0, p1, v0}, La/i/a/a;->d(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(IILandroid/os/Bundle;)Z
.end method

.method public final a(ILandroid/os/Bundle;)Z
    .locals 1

    .line 14
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    iget-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 17
    :cond_1
    iget-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 18
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 19
    check-cast p1, Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4
    iget-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    .line 6
    :cond_1
    iget p1, p0, La/i/a/a;->m:I

    if-eq p1, v4, :cond_2

    .line 7
    invoke-virtual {p0, v4}, La/i/a/a;->h(I)V

    return v3

    :cond_2
    return v1

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, La/i/a/a;->a(FF)I

    move-result p1

    .line 9
    invoke-virtual {p0, p1}, La/i/a/a;->h(I)V

    if-eq p1, v4, :cond_4

    move v1, v3

    :cond_4
    :goto_0
    return v1
.end method

.method public final b()La/g/h/n/c;
    .locals 6

    .line 17
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {v0}, La/g/h/n/c;->g(Landroid/view/View;)La/g/h/n/c;

    move-result-object v0

    .line 18
    iget-object v1, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;La/g/h/n/c;)V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p0, v1}, La/i/a/a;->a(Ljava/util/List;)V

    .line 21
    invoke-virtual {v0}, La/g/h/n/c;->c()I

    move-result v2

    if-lez v2, :cond_1

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 25
    iget-object v4, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, La/g/h/n/c;->a(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 3
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1}, La/i/a/a;->e(I)La/g/h/n/c;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, La/g/h/n/c;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, La/g/h/n/c;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, La/g/h/n/c;->u()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 8
    invoke-virtual {v0}, La/g/h/n/c;->t()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9
    invoke-virtual {v0}, La/g/h/n/c;->p()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 10
    invoke-virtual {v0}, La/g/h/n/c;->n()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 11
    invoke-virtual {p0, p1, p2}, La/i/a/a;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 12
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v0}, La/g/h/n/c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {p2, v0, p1}, La/g/h/n/e;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 16
    iget-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La/g/h/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0, p2}, La/i/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 28
    iget v0, p0, La/i/a/a;->l:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 29
    iput v0, p0, La/i/a/a;->l:I

    .line 30
    invoke-virtual {p0, p1, v1}, La/i/a/a;->a(IZ)V

    const/16 v0, 0x8

    .line 31
    invoke-virtual {p0, p1, v0}, La/i/a/a;->d(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, La/i/a/a;->c(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    invoke-virtual {p0, p2, p3}, La/i/a/a;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final c(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 8
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method public final c()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, La/i/a/a;->c(II)V

    return-void
.end method

.method public final c(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 4
    invoke-virtual {p0, p1, v1}, La/i/a/a;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, La/g/h/n/b;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 6
    iget-object p2, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {v0, p2, p1}, La/g/h/j;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, La/i/a/a;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, La/i/a/a;->a(I)Z

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, La/i/a/a;->f(I)Z

    move-result p1

    return p1

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, La/i/a/a;->b(I)Z

    move-result p1

    return p1

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, La/i/a/a;->g(I)Z

    move-result p1

    return p1
.end method

.method public final d(I)La/g/h/n/c;
    .locals 7

    .line 5
    invoke-static {}, La/g/h/n/c;->z()La/g/h/n/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, La/g/h/n/c;->d(Z)V

    .line 7
    invoke-virtual {v0, v1}, La/g/h/n/c;->e(Z)V

    const-string v2, "android.view.View"

    .line 8
    invoke-virtual {v0, v2}, La/g/h/n/c;->a(Ljava/lang/CharSequence;)V

    .line 9
    sget-object v2, La/i/a/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, La/g/h/n/c;->c(Landroid/graphics/Rect;)V

    .line 10
    sget-object v2, La/i/a/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, La/g/h/n/c;->d(Landroid/graphics/Rect;)V

    .line 11
    iget-object v2, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, La/g/h/n/c;->e(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0, p1, v0}, La/i/a/a;->a(ILa/g/h/n/c;)V

    .line 13
    invoke-virtual {v0}, La/g/h/n/c;->i()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, La/g/h/n/c;->e()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, La/i/a/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, La/g/h/n/c;->a(Landroid/graphics/Rect;)V

    .line 16
    iget-object v2, p0, La/i/a/a;->e:Landroid/graphics/Rect;

    sget-object v3, La/i/a/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 17
    invoke-virtual {v0}, La/g/h/n/c;->b()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_b

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    .line 18
    iget-object v2, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, La/g/h/n/c;->c(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v2, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, La/g/h/n/c;->c(Landroid/view/View;I)V

    .line 20
    iget v2, p0, La/i/a/a;->k:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_2

    .line 21
    invoke-virtual {v0, v1}, La/g/h/n/c;->a(Z)V

    .line 22
    invoke-virtual {v0, v3}, La/g/h/n/c;->a(I)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v0, v4}, La/g/h/n/c;->a(Z)V

    const/16 v2, 0x40

    .line 24
    invoke-virtual {v0, v2}, La/g/h/n/c;->a(I)V

    .line 25
    :goto_1
    iget v2, p0, La/i/a/a;->l:I

    if-ne v2, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v2}, La/g/h/n/c;->a(I)V

    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual {v0}, La/g/h/n/c;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v0, v1}, La/g/h/n/c;->a(I)V

    .line 29
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, La/g/h/n/c;->f(Z)V

    .line 30
    iget-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    iget-object v2, p0, La/i/a/a;->g:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, La/g/h/n/c;->b(Landroid/graphics/Rect;)V

    .line 32
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    sget-object v2, La/i/a/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, La/g/h/n/c;->a(Landroid/graphics/Rect;)V

    .line 34
    iget p1, v0, La/g/h/n/c;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 35
    invoke-static {}, La/g/h/n/c;->z()La/g/h/n/c;

    move-result-object p1

    .line 36
    iget v3, v0, La/g/h/n/c;->b:I

    :goto_4
    if-eq v3, v2, :cond_6

    .line 37
    iget-object v5, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, La/g/h/n/c;->b(Landroid/view/View;I)V

    .line 38
    sget-object v5, La/i/a/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, La/g/h/n/c;->c(Landroid/graphics/Rect;)V

    .line 39
    invoke-virtual {p0, v3, p1}, La/i/a/a;->a(ILa/g/h/n/c;)V

    .line 40
    iget-object v3, p0, La/i/a/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, La/g/h/n/c;->a(Landroid/graphics/Rect;)V

    .line 41
    iget-object v3, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    iget-object v5, p0, La/i/a/a;->e:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 42
    iget v3, p1, La/g/h/n/c;->b:I

    goto :goto_4

    .line 43
    :cond_6
    invoke-virtual {p1}, La/g/h/n/c;->x()V

    .line 44
    :cond_7
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    iget-object v2, p0, La/i/a/a;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, La/i/a/a;->g:[I

    aget v3, v3, v1

    iget-object v5, p0, La/i/a/a;->i:Landroid/view/View;

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    .line 46
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 47
    :cond_8
    iget-object p1, p0, La/i/a/a;->i:Landroid/view/View;

    iget-object v2, p0, La/i/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 48
    iget-object p1, p0, La/i/a/a;->f:Landroid/graphics/Rect;

    iget-object v2, p0, La/i/a/a;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, La/i/a/a;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, La/i/a/a;->i:Landroid/view/View;

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 51
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    iget-object v2, p0, La/i/a/a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 52
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, La/g/h/n/c;->d(Landroid/graphics/Rect;)V

    .line 53
    iget-object p1, p0, La/i/a/a;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, La/i/a/a;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {v0, v1}, La/g/h/n/c;->l(Z)V

    :cond_9
    return-object v0

    .line 55
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 1
    iget-object v1, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, La/i/a/a;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 4
    iget-object p2, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-static {v1, p2, p1}, La/g/h/j;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public e(I)La/g/h/n/c;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, La/i/a/a;->b()La/g/h/n/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, La/i/a/a;->d(I)La/g/h/n/c;

    move-result-object p1

    return-object p1
.end method

.method public final f(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/i/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, La/i/a/a;->k:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, La/i/a/a;->a(I)Z

    .line 4
    :cond_1
    iput p1, p0, La/i/a/a;->k:I

    .line 5
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 6
    invoke-virtual {p0, p1, v0}, La/i/a/a;->d(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final g(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, La/i/a/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, La/i/a/a;->l:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0, v0}, La/i/a/a;->b(I)Z

    .line 4
    :cond_2
    iput p1, p0, La/i/a/a;->l:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, La/i/a/a;->a(IZ)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p0, p1, v1}, La/i/a/a;->d(II)Z

    return v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget v0, p0, La/i/a/a;->m:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, La/i/a/a;->m:I

    const/16 v1, 0x80

    .line 3
    invoke-virtual {p0, p1, v1}, La/i/a/a;->d(II)Z

    const/16 p1, 0x100

    .line 4
    invoke-virtual {p0, v0, p1}, La/i/a/a;->d(II)Z

    return-void
.end method
