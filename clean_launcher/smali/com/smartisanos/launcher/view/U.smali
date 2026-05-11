.class public final Lcom/smartisanos/launcher/view/U;
.super Ljava/lang/Object;
.source "DockView.java"

# interfaces
.implements Lcom/smartisanos/smengine/ha;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/V;->p(FF)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/V;->p(FF)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eq v0, p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    :cond_3
    :goto_0
    return-void
.end method

.method public f(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/V;->p(FF)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/U;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    :cond_0
    return-void
.end method
