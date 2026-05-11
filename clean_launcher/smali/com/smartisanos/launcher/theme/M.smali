.class Lcom/smartisanos/launcher/theme/M;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    sget p0, Lcom/smartisanos/launcher/ob;->theme_error_status:I

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v1, 0x100000

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-nez p1, :cond_9

    if-nez v1, :cond_9

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "setupThemeOnClickListener return by mIsBackClicked"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    if-nez p1, :cond_5

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "setupThemeOnClickListener return by mDisplayedTheme is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v1, :cond_6

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup theme failed. can\'t find theme by pkg ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 16
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "setupThemeOnClickListener error"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/theme/U;->updateBackButtonEnableState(Z)V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/M;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    return-void

    .line 21
    :cond_9
    :goto_3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconIsSorting="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", iconIsPreview="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", unLock="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/smartisanos/launcher/J;->c(Landroid/content/Context;)V

    return-void
.end method
