.class public final Lcom/smartisanos/launcher/view/S;
.super Ljava/lang/Object;
.source "DockView.java"

# interfaces
.implements Lcom/smartisanos/smengine/Y;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/S;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lcom/smartisanos/smengine/Fa;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/S;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1, v0, p1}, Lcom/smartisanos/launcher/view/V;->p(FF)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/S;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/S;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->h(Lcom/smartisanos/launcher/view/V;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/S;->this$0:Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 6
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Fa;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/smengine/Fa;-><init>(IFFFF)V

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/a/g;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/V;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "Nothing is selected by long press !!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
