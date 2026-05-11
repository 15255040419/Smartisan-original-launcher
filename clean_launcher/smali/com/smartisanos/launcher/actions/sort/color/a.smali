.class Lcom/smartisanos/launcher/actions/sort/color/a;
.super Ljava/lang/Object;
.source "IconColor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/actions/sort/color/b;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/actions/sort/color/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/h;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/color/f;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcherError iconColor is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    iget-object v2, v2, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/actions/sort/color/a;->this$0:Lcom/smartisanos/launcher/actions/sort/color/b;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/vb;->releaseLock()V

    return-void
.end method
