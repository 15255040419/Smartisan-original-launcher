.class Lcom/smartisanos/launcher/view/r;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

# interfaces
.implements Lcom/smartisanos/smengine/V;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/l;Z)Lcom/smartisanos/launcher/view/a/g;
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    .line 111
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 113
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 114
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v1

    .line 115
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v2

    .line 116
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 117
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    const/4 v4, 0x1

    if-eqz p2, :cond_6

    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->xb(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_2

    .line 121
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Ua(Z)V

    :cond_2
    return-object v0

    :cond_3
    sub-int/2addr v1, v4

    if-ne v2, v1, :cond_4

    return-object p0

    :cond_4
    if-ge v2, v1, :cond_5

    .line 122
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0

    .line 123
    :cond_6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result p1

    if-eqz p1, :cond_7

    add-int/2addr v1, v4

    .line 124
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v3, :cond_9

    .line 125
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->yb(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 126
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_8

    .line 127
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Ua(Z)V

    :cond_8
    return-object v0

    :cond_9
    add-int/2addr v1, v4

    if-ne v2, v1, :cond_a

    return-object p0

    :cond_a
    if-le v2, v1, :cond_b

    .line 128
    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/r;Lcom/smartisanos/smengine/l;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;ZI)V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/l;I)V
    .locals 8

    .line 89
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->pp()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ql()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/v;->_g()V

    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/v;->e(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/n;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    new-instance v7, Lcom/smartisanos/launcher/view/q;

    const/16 v3, 0x64

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/launcher/view/q;-><init>(Lcom/smartisanos/launcher/view/r;ILcom/smartisanos/smengine/l;IZ)V

    invoke-static {v0, v7}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 96
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " collided = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",collidedPageIndex = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mDelaySendDoCollideEvent send"

    invoke-virtual {v0, p2, p1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/v;->e(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/l;IIZ)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/v;->_g()V

    .line 75
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->ak()Z

    move-result v0

    const-string v1, "cellCollideEnter"

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 78
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 80
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;I)I

    .line 81
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p0, p3}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;I)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/v;->c(Lcom/smartisanos/launcher/view/v;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/v;->d(Lcom/smartisanos/launcher/view/v;)I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 83
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 84
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 85
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 87
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;I)I

    .line 88
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p0, p3}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;I)I

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/smartisanos/smengine/l;ZI)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;Z)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/l;->h(Lcom/smartisanos/smengine/SceneNode;)V

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Zj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/l;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 103
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    .line 104
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Bl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    .line 106
    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/view/a/g;->Ua(Z)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, p1, v0, p3, v2}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance p1, Lcom/smartisanos/smengine/A;

    invoke-direct {p1}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 109
    new-instance p2, Lcom/smartisanos/smengine/l;

    invoke-direct {p2}, Lcom/smartisanos/smengine/l;-><init>()V

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 110
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string p2, "cellCollideExit"

    invoke-virtual {p0, p2, p1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/l;)I
    .locals 11

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v1, "#### mOnUpRunning = true, dead code run??"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/smengine/l;)V

    :cond_0
    return v4

    :cond_1
    if-eqz v2, :cond_14

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/d;->Mg()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/smengine/l;)V

    return v4

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v6

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v5

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/b/M;

    .line 13
    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v7

    .line 14
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-boolean v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    goto :goto_0

    :cond_3
    move v8, v4

    .line 17
    :goto_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 19
    iget-boolean v1, v1, Lcom/smartisanos/launcher/data/FolderInfo;->isGenIdInGL:Z

    .line 20
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v9

    const-string v10, "the collided cell\'s id is generated in gl."

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v1, v4

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Bl()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 22
    invoke-direct {p0, p1, v5, v7, v3}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    goto/16 :goto_4

    .line 23
    :cond_6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    iget-byte v9, v9, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v10, 0x2

    if-eq v9, v10, :cond_13

    .line 24
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v9, :cond_13

    if-nez v8, :cond_13

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    if-nez v8, :cond_13

    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v8, :cond_7

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Pl()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 27
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    iget-boolean v8, v8, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    if-nez v8, :cond_13

    .line 28
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Pl()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v8

    if-nez v8, :cond_13

    :cond_8
    if-eqz v1, :cond_9

    goto/16 :goto_3

    .line 29
    :cond_9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Pl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 30
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->Ya(Z)V

    if-eqz v6, :cond_b

    .line 31
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    :cond_a
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->Xa(Z)V

    .line 33
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "#### have to collide ...."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    :cond_b
    invoke-direct {p0, p1, v5, v7, v3}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    goto/16 :goto_4

    .line 35
    :cond_c
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Xl()Lcom/smartisanos/smengine/j;

    move-result-object v1

    .line 36
    iget-object v6, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Vl()Lcom/smartisanos/smengine/j;

    move-result-object v6

    .line 37
    iget-object v8, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v8, v8, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->im()Lcom/smartisanos/smengine/j;

    move-result-object v8

    if-eqz v1, :cond_12

    .line 38
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v5

    .line 39
    iget-object v9, v5, Lcom/smartisanos/smengine/d/f;->fY:Lcom/smartisanos/smengine/a/j;

    .line 40
    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 41
    iget-object v2, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 43
    iget-object v10, v5, Lcom/smartisanos/smengine/d/f;->gY:Lcom/smartisanos/smengine/a/j;

    .line 44
    invoke-virtual {v2, v9, v10}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/A;

    invoke-direct {v0}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object v1

    const-string v2, "cellIntoFolderArea"

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 52
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Z)Z

    .line 53
    :cond_d
    invoke-direct {p0, p1, v7}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;I)V

    goto :goto_2

    .line 54
    :cond_e
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/v;->_g()V

    .line 55
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 56
    new-instance v1, Lcom/smartisanos/smengine/A;

    invoke-direct {v1}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 57
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 58
    iget-object v9, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object v9

    const-string v10, "cellExitFolderArea"

    invoke-virtual {v9, v10, v1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 59
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Z)Z

    .line 60
    iget-object v1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/v;->ah()V

    .line 61
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->wd()V

    :cond_f
    if-eqz v6, :cond_10

    .line 62
    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    invoke-direct {p0, p1, v3, v7}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;ZI)V

    goto :goto_2

    :cond_10
    if-eqz v8, :cond_11

    .line 64
    invoke-virtual {v8, v2}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    invoke-direct {p0, p1, v4, v7}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;ZI)V

    goto :goto_2

    .line 66
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/db;->dh()V

    .line 67
    new-instance p1, Lcom/smartisanos/smengine/A;

    invoke-direct {p1}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 68
    new-instance v0, Lcom/smartisanos/smengine/l;

    invoke-direct {v0}, Lcom/smartisanos/smengine/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 69
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p0

    const-string v0, "cellCollideExit"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 70
    :goto_2
    invoke-virtual {v5}, Lcom/smartisanos/smengine/d/f;->release()V

    goto :goto_4

    .line 71
    :cond_12
    invoke-direct {p0, p1, v5, v7, v4}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    goto :goto_4

    .line 72
    :cond_13
    :goto_3
    invoke-direct {p0, p1, v5, v7, v4}, Lcom/smartisanos/launcher/view/r;->a(Lcom/smartisanos/smengine/l;IIZ)V

    :goto_4
    return v4

    .line 73
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### selected cell is null,collided is wrong"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/smartisanos/smengine/l;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/v;->_g()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->Yj()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/d;->Qj:Lcom/smartisanos/launcher/view/a/g;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/l;->_j()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/A;

    invoke-direct {v1}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 7
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p1

    const-string v2, "cellCollideExit"

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/v;->b(Lcom/smartisanos/launcher/view/v;)Lcom/smartisanos/smengine/C;

    move-result-object p1

    const-string v2, "cellExitFolderArea"

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/view/v;->a(Lcom/smartisanos/launcher/view/v;Z)Z

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/r;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/v;->ah()V

    :cond_0
    return v0
.end method
