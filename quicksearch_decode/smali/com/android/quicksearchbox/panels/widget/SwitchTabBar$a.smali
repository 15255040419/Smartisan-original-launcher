.class public Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;
.super Ljava/lang/Object;
.source "SwitchTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;->a:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;->a:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->a(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$a;->a:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->b(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
