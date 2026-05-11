.class Lcom/smartisanos/launcher/theme/H;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "backButtonOnClickListener begin !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mIsBackClicked true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/theme/U;->updateBackButtonEnableState(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/H;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->b(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    return-void
.end method
