.class Lcom/smartisanos/launcher/theme/b;
.super Lcom/smartisanos/smengine/a;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->hg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/t;->rt:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->c(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/q;->start()V

    .line 9
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/b;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    if-eqz p0, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_2
    return-void
.end method
