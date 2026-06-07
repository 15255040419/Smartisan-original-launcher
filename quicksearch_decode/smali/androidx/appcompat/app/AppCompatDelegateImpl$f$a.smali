.class public Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;
.super La/g/h/l;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-direct {p0}, La/g/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:La/g/h/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La/g/h/k;->a(Landroidx/core/view/ViewPropertyAnimatorListener;)La/g/h/k;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:La/g/h/k;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
