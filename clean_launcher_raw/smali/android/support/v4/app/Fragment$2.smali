.class Landroid/support/v4/app/Fragment$2;
.super Landroid/support/v4/app/FragmentContainer;
.source "Fragment.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment does not have a view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHasView()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Fragment$2;->this$0:Landroid/support/v4/app/Fragment;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
