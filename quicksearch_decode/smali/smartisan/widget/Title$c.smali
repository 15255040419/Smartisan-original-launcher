.class public Lsmartisan/widget/Title$c;
.super Ljava/lang/Object;
.source "Title.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/Title;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/Title;


# direct methods
.method public constructor <init>(Lsmartisan/widget/Title;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->e(Lsmartisan/widget/Title;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->f(Lsmartisan/widget/Title;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    iget-object v1, v1, Lsmartisan/widget/Title;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/Title$c;->a:Lsmartisan/widget/Title;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsmartisan/widget/Title;->a(Lsmartisan/widget/Title;Z)Z

    :cond_0
    return-void
.end method
