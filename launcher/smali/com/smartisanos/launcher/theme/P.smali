.class Lcom/smartisanos/launcher/theme/P;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorDotOnClickListener ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/theme/V;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->h(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/theme/O;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/launcher/theme/O;-><init>(Lcom/smartisanos/launcher/theme/P;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/theme/V;

    .line 6
    iget-object p1, p1, Lcom/smartisanos/launcher/theme/V;->Vt:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->e(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/launcher/theme/v;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/v;Z)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->d(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    return-void

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick can\'t find theme by id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
