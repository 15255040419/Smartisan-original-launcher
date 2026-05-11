.class Lcom/smartisanos/launcher/a/ga;
.super Lcom/smartisanos/smengine/n;
.source "UninstallApp.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/a/ha;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/ha;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ga;->this$2:Lcom/smartisanos/launcher/a/ha;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->kq()Lcom/smartisanos/launcher/view/ec;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/ec;->fm()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/ec;->pb(I)V

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v3

    .line 9
    new-instance v4, Lcom/smartisanos/launcher/a/fa;

    invoke-direct {v4, p0, v3, v2}, Lcom/smartisanos/launcher/a/fa;-><init>(Lcom/smartisanos/launcher/a/ga;Ljava/util/ArrayList;Lcom/smartisanos/launcher/view/ec;)V

    const/4 p0, 0x1

    invoke-virtual {v2, v4, p0}, Lcom/smartisanos/launcher/view/ec;->a(Ljava/lang/Runnable;Z)Lcom/smartisanos/smengine/g;

    move-result-object p0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x3e99999a    # 0.3f

    .line 12
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->mZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v4, v3, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1, v0, v3, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v1, v0, v3, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
