.class public Lcom/android/quicksearchbox/ui/SearchActivityView$c;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->i(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v1, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->i(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
