.class public Lcom/smartisanos/launcher/animations/t;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/t;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v10, Lcom/smartisanos/smengine/oa;

    invoke-direct {v10, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2
    iget-boolean p0, p1, Lcom/smartisanos/launcher/animations/s;->im:Z

    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p1, Lcom/smartisanos/launcher/animations/s;->jm:Lcom/smartisanos/smengine/a;

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 4
    :cond_1
    iget-boolean p0, p1, Lcom/smartisanos/launcher/animations/s;->Dl:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 5
    iget v2, p1, Lcom/smartisanos/launcher/animations/s;->Hl:F

    iget v3, p1, Lcom/smartisanos/launcher/animations/s;->Il:F

    iget v4, p1, Lcom/smartisanos/launcher/animations/s;->Jl:F

    iget v5, p1, Lcom/smartisanos/launcher/animations/s;->Kl:F

    iget v6, p1, Lcom/smartisanos/launcher/animations/s;->Ll:F

    iget v7, p1, Lcom/smartisanos/launcher/animations/s;->Ml:F

    move-object v0, v10

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 6
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->Nl:I

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 7
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->Ol:F

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->p(F)V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean p0, p1, Lcom/smartisanos/launcher/animations/s;->Pl:Z

    if-eqz p0, :cond_3

    const/4 v1, 0x3

    .line 9
    iget v2, p1, Lcom/smartisanos/launcher/animations/s;->Ql:F

    iget v3, p1, Lcom/smartisanos/launcher/animations/s;->Rl:F

    iget v4, p1, Lcom/smartisanos/launcher/animations/s;->Sl:F

    iget v5, p1, Lcom/smartisanos/launcher/animations/s;->Tl:F

    iget v6, p1, Lcom/smartisanos/launcher/animations/s;->Ul:F

    iget v7, p1, Lcom/smartisanos/launcher/animations/s;->Vl:F

    iget v8, p1, Lcom/smartisanos/launcher/animations/s;->Wl:F

    iget v9, p1, Lcom/smartisanos/launcher/animations/s;->Xl:F

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 10
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->Yl:I

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 11
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->Zl:F

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->p(F)V

    goto :goto_0

    .line 12
    :cond_3
    iget-boolean p0, p1, Lcom/smartisanos/launcher/animations/s;->_l:Z

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    .line 13
    iget v2, p1, Lcom/smartisanos/launcher/animations/s;->am:F

    iget v3, p1, Lcom/smartisanos/launcher/animations/s;->bm:F

    iget v4, p1, Lcom/smartisanos/launcher/animations/s;->cm:F

    iget v5, p1, Lcom/smartisanos/launcher/animations/s;->dm:F

    iget v6, p1, Lcom/smartisanos/launcher/animations/s;->em:F

    iget v7, p1, Lcom/smartisanos/launcher/animations/s;->fm:F

    move-object v0, v10

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 14
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->gm:I

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 15
    iget p0, p1, Lcom/smartisanos/launcher/animations/s;->hm:F

    invoke-virtual {v10, p0}, Lcom/smartisanos/smengine/c;->p(F)V

    goto :goto_0

    .line 16
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/animations/t;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "createSceneNodeAnimation ap is error"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v10
.end method
