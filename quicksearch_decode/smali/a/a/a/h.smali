.class public La/a/a/h;
.super Landroidx/appcompat/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/h$d;
    }
.end annotation


# static fields
.field public static final B:Landroid/view/animation/Interpolator;

.field public static final C:Landroid/view/animation/Interpolator;


# instance fields
.field public final A:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Landroidx/appcompat/widget/DecorToolbar;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field public i:Z

.field public j:La/a/a/h$d;

.field public k:Landroidx/appcompat/view/ActionMode;

.field public l:Landroidx/appcompat/view/ActionMode$Callback;

.field public m:Z

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:La/a/e/f;

.field public w:Z

.field public x:Z

.field public final y:Landroidx/core/view/ViewPropertyAnimatorListener;

.field public final z:Landroidx/core/view/ViewPropertyAnimatorListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, La/a/a/h;->B:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, La/a/a/h;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/a/a/h;->p:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La/a/a/h;->q:Z

    .line 6
    iput-boolean v0, p0, La/a/a/h;->u:Z

    .line 7
    new-instance v0, La/a/a/h$a;

    invoke-direct {v0, p0}, La/a/a/h$a;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->y:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 8
    new-instance v0, La/a/a/h$b;

    invoke-direct {v0, p0}, La/a/a/h$b;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->z:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 9
    new-instance v0, La/a/a/h$c;

    invoke-direct {v0, p0}, La/a/a/h$c;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->A:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, La/a/a/h;->b(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La/a/a/h;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, La/a/a/h;->p:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, La/a/a/h;->q:Z

    .line 19
    iput-boolean v0, p0, La/a/a/h;->u:Z

    .line 20
    new-instance v0, La/a/a/h$a;

    invoke-direct {v0, p0}, La/a/a/h$a;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->y:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 21
    new-instance v0, La/a/a/h$b;

    invoke-direct {v0, p0}, La/a/a/h$b;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->z:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 22
    new-instance v0, La/a/a/h$c;

    invoke-direct {v0, p0}, La/a/a/h$c;-><init>(La/a/a/h;)V

    iput-object v0, p0, La/a/a/h;->A:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, La/a/a/h;->b(Landroid/view/View;)V

    return-void
.end method

.method public static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 2

    .line 17
    iget-object v0, p0, La/a/a/h;->j:La/a/a/h$d;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, La/a/a/h$d;->a()V

    .line 19
    :cond_0
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 20
    iget-object v0, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    .line 21
    new-instance v0, La/a/a/h$d;

    iget-object v1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, La/a/a/h$d;-><init>(La/a/a/h;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V

    .line 22
    invoke-virtual {v0}, La/a/a/h$d;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    iput-object v0, p0, La/a/a/h;->j:La/a/a/h$d;

    .line 24
    invoke-virtual {v0}, La/a/a/h$d;->i()V

    .line 25
    iget-object p1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/ActionMode;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, La/a/a/h;->d(Z)V

    .line 27
    iget-object p1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/appcompat/widget/DecorToolbar;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(F)V
    .locals 1

    .line 7
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 29
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 14
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, La/a/a/h;->i:Z

    .line 16
    :cond_0
    iget-object v1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 8
    iget-object p1, p0, La/a/a/h;->a:Landroid/content/Context;

    invoke-static {p1}, La/a/e/a;->a(Landroid/content/Context;)La/a/e/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/e/a;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, La/a/a/h;->h(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 28
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 13
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 9
    iget-boolean v0, p0, La/a/a/h;->m:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, La/a/a/h;->m:Z

    .line 11
    iget-object v0, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    iget-object v2, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 30
    iget-object v0, p0, La/a/a/h;->j:La/a/a/h$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    invoke-virtual {v0}, La/a/a/h$d;->c()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 33
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 35
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 4
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/h;->a(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 7
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz p1, :cond_7

    iget-object v0, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La/a/a/h;->a:Landroid/content/Context;

    .line 9
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iput-boolean v0, p0, La/a/a/h;->i:Z

    .line 11
    :cond_2
    iget-object v2, p0, La/a/a/h;->a:Landroid/content/Context;

    invoke-static {v2}, La/a/e/a;->a(Landroid/content/Context;)La/a/e/a;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, La/a/e/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, La/a/a/h;->j(Z)V

    .line 13
    invoke-virtual {v2}, La/a/e/a;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, La/a/a/h;->h(Z)V

    .line 14
    iget-object p1, p0, La/a/a/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0, v0}, La/a/a/h;->i(Z)V

    .line 17
    :cond_5
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    .line 18
    invoke-virtual {p0, v0}, La/a/a/h;->a(F)V

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, La/a/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)V
    .locals 1

    .line 23
    iget-boolean v0, p0, La/a/a/h;->i:Z

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, La/a/a/h;->g(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 21
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 4
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La/a/a/h;->w:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, La/a/a/h;->v:La/a/e/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, La/a/e/f;->a()V

    :cond_0
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 4

    .line 15
    iget-object v0, p0, La/a/a/h;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 17
    iget-object v1, p0, La/a/a/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 18
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, La/a/a/h;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, La/a/a/h;->b:Landroid/content/Context;

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, La/a/a/h;->a:Landroid/content/Context;

    iput-object v0, p0, La/a/a/h;->b:Landroid/content/Context;

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, La/a/a/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, La/a/a/h;->l()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, La/a/a/h;->j()V

    .line 3
    :goto_0
    invoke-virtual {p0}, La/a/a/h;->k()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)La/g/h/k;

    move-result-object p1

    .line 5
    iget-object v0, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, La/a/f/a;->a(IJ)La/g/h/k;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)La/g/h/k;

    move-result-object v0

    .line 7
    iget-object p1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, La/a/f/a;->a(IJ)La/g/h/k;

    move-result-object p1

    .line 8
    :goto_1
    new-instance v1, La/a/e/f;

    invoke-direct {v1}, La/a/e/f;-><init>()V

    .line 9
    invoke-virtual {v1, p1, v0}, La/a/e/f;->a(La/g/h/k;La/g/h/k;)La/a/e/f;

    .line 10
    invoke-virtual {v1}, La/a/e/f;->c()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 12
    iget-object p1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 14
    iget-object p1, p0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public e(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La/a/a/h;->v:La/a/e/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/e/f;->a()V

    .line 3
    :cond_0
    iget v0, p0, La/a/a/h;->p:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, La/a/a/h;->w:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    new-instance v0, La/a/e/f;

    invoke-direct {v0}, La/a/e/f;-><init>()V

    .line 7
    iget-object v2, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 8
    fill-array-data p1, :array_0

    .line 9
    iget-object v3, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 10
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 11
    :cond_2
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)La/g/h/k;

    move-result-object p1

    invoke-virtual {p1, v2}, La/g/h/k;->b(F)La/g/h/k;

    .line 12
    iget-object v1, p0, La/a/a/h;->A:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {p1, v1}, La/g/h/k;->a(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)La/g/h/k;

    .line 13
    invoke-virtual {v0, p1}, La/a/e/f;->a(La/g/h/k;)La/a/e/f;

    .line 14
    iget-boolean p1, p0, La/a/a/h;->q:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, La/a/a/h;->g:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 15
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)La/g/h/k;

    move-result-object p1

    invoke-virtual {p1, v2}, La/g/h/k;->b(F)La/g/h/k;

    invoke-virtual {v0, p1}, La/a/e/f;->a(La/g/h/k;)La/a/e/f;

    .line 16
    :cond_3
    sget-object p1, La/a/a/h;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, La/a/e/f;->a(Landroid/view/animation/Interpolator;)La/a/e/f;

    const-wide/16 v1, 0xfa

    .line 17
    invoke-virtual {v0, v1, v2}, La/a/e/f;->a(J)La/a/e/f;

    .line 18
    iget-object p1, p0, La/a/a/h;->y:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, p1}, La/a/e/f;->a(Landroidx/core/view/ViewPropertyAnimatorListener;)La/a/e/f;

    .line 19
    iput-object v0, p0, La/a/a/h;->v:La/a/e/f;

    .line 20
    invoke-virtual {v0}, La/a/e/f;->c()V

    goto :goto_0

    .line 21
    :cond_4
    iget-object p1, p0, La/a/a/h;->y:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La/a/a/h;->q:Z

    return-void
.end method

.method public f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, La/a/a/h;->v:La/a/e/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/e/f;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 4
    iget v0, p0, La/a/a/h;->p:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, La/a/a/h;->w:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 5
    :cond_1
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 7
    fill-array-data p1, :array_0

    .line 8
    iget-object v2, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 9
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 10
    :cond_2
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 11
    new-instance p1, La/a/e/f;

    invoke-direct {p1}, La/a/e/f;-><init>()V

    .line 12
    iget-object v2, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)La/g/h/k;

    move-result-object v2

    invoke-virtual {v2, v1}, La/g/h/k;->b(F)La/g/h/k;

    .line 13
    iget-object v3, p0, La/a/a/h;->A:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v2, v3}, La/g/h/k;->a(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)La/g/h/k;

    .line 14
    invoke-virtual {p1, v2}, La/a/e/f;->a(La/g/h/k;)La/a/e/f;

    .line 15
    iget-boolean v2, p0, La/a/a/h;->q:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/a/h;->g:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    iget-object v0, p0, La/a/a/h;->g:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;)La/g/h/k;

    move-result-object v0

    invoke-virtual {v0, v1}, La/g/h/k;->b(F)La/g/h/k;

    invoke-virtual {p1, v0}, La/a/e/f;->a(La/g/h/k;)La/a/e/f;

    .line 18
    :cond_3
    sget-object v0, La/a/a/h;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, La/a/e/f;->a(Landroid/view/animation/Interpolator;)La/a/e/f;

    const-wide/16 v0, 0xfa

    .line 19
    invoke-virtual {p1, v0, v1}, La/a/e/f;->a(J)La/a/e/f;

    .line 20
    iget-object v0, p0, La/a/a/h;->z:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {p1, v0}, La/a/e/f;->a(Landroidx/core/view/ViewPropertyAnimatorListener;)La/a/e/f;

    .line 21
    iput-object p1, p0, La/a/a/h;->v:La/a/e/f;

    .line 22
    invoke-virtual {p1}, La/a/e/f;->c()V

    goto :goto_0

    .line 23
    :cond_4
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 24
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 25
    iget-boolean p1, p0, La/a/a/h;->q:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, La/a/a/h;->g:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    :cond_5
    iget-object p1, p0, La/a/a/h;->z:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 28
    :goto_0
    iget-object p1, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 29
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public g(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, La/a/a/h;->a(II)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 15
    iget-object v0, p0, La/a/a/h;->l:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, La/a/a/h;->k:Landroidx/appcompat/view/ActionMode;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, La/a/a/h;->k:Landroidx/appcompat/view/ActionMode;

    .line 18
    iput-object v0, p0, La/a/a/h;->l:Landroidx/appcompat/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, La/a/a/h;->o:Z

    .line 2
    iget-boolean p1, p0, La/a/a/h;->o:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 4
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, La/a/a/h;->h:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 6
    iget-object p1, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    iget-object v0, p0, La/a/a/h;->h:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, La/a/a/h;->i()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 8
    :goto_1
    iget-object v0, p0, La/a/a/h;->h:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->C(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    iget-boolean v3, p0, La/a/a/h;->o:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 14
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, La/a/a/h;->o:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public hideForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La/a/a/h;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/a/a/h;->s:Z

    .line 3
    invoke-virtual {p0, v0}, La/a/a/h;->k(Z)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-boolean p1, p0, La/a/a/h;->x:Z

    .line 5
    iget-object v0, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 2
    iget-boolean v0, p0, La/a/a/h;->t:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La/a/a/h;->t:Z

    .line 4
    iget-object v1, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, La/a/a/h;->k(Z)V

    :cond_1
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, La/a/a/h;->r:Z

    iget-boolean v1, p0, La/a/a/h;->s:Z

    iget-boolean v2, p0, La/a/a/h;->t:Z

    invoke-static {v0, v1, v2}, La/a/a/h;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, La/a/a/h;->u:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/a/a/h;->u:Z

    .line 4
    invoke-virtual {p0, p1}, La/a/a/h;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, La/a/a/h;->u:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, La/a/a/h;->u:Z

    .line 7
    invoke-virtual {p0, p1}, La/a/a/h;->e(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 8
    iget-object v0, p0, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, La/a/a/h;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/a/a/h;->t:Z

    .line 3
    iget-object v1, p0, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, La/a/a/h;->k(Z)V

    :cond_1
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h;->v:La/a/e/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/e/f;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/a/a/h;->v:La/a/e/f;

    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, La/a/a/h;->p:I

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public showForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La/a/a/h;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La/a/a/h;->s:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, La/a/a/h;->k(Z)V

    :cond_0
    return-void
.end method
