.class public Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;
.super Lsmartisan/widget/SmartisanBottomBar;
.source "SwitchTabBar.java"

# interfaces
.implements Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;
    }
.end annotation


# instance fields
.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:I

.field public m:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->j:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->k:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public b(IZ)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->m:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1, v0, p2}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;->onTabSwitch(IIZ)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    new-instance v0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;-><init>(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanBottomBar;->b(I)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->k:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->k:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100190

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanBottomBar;->b(I)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->j:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->j:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, p0}, Lsmartisan/widget/SmartisanBottomBar;->setBottomInnerClickListener(Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    invoke-static {v0, v1}, Lb/a/a/j1/a/a;->a(Landroid/content/Context;I)Z

    return-void
.end method

.method public getCurrTabIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    return v0
.end method

.method public onClick(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->c()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->m:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;

    if-eqz p1, :cond_3

    .line 5
    iget p2, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    invoke-interface {p1, p2, v0, v1}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;->onTabSwitch(IIZ)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->c()V

    .line 7
    iput v1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->m:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;

    if-eqz p1, :cond_2

    .line 9
    iget v2, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->l:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;->onTabSwitch(IIZ)V

    .line 10
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setListener(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->m:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;

    return-void
.end method
