.class Lcom/smartisanos/launcher/theme/L;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadThemeOnClickListener return by status err ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/theme/v;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    new-instance v1, Lcom/smartisanos/launcher/theme/I;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/I;-><init>(Lcom/smartisanos/launcher/theme/L;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Eg()Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/smartisanos/launcher/ob;->ensure_download_in_mobile:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 11
    sget v2, Lcom/smartisanos/launcher/ob;->data_use_tip:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 12
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    sget p1, Lcom/smartisanos/launcher/ob;->continue_download:I

    new-instance v2, Lcom/smartisanos/launcher/theme/J;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/theme/J;-><init>(Lcom/smartisanos/launcher/theme/L;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    sget p1, Lcom/smartisanos/launcher/ob;->cancel_download:I

    new-instance v2, Lcom/smartisanos/launcher/theme/K;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/theme/K;-><init>(Lcom/smartisanos/launcher/theme/L;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
