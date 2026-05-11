.class public Lcom/smartisanos/launcher/animations/s;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# instance fields
.field Dl:Z

.field El:Z

.field Fl:Z

.field Gl:Z

.field Hl:F

.field Il:F

.field Jl:F

.field Kl:F

.field Ll:F

.field Ml:F

.field Nl:I

.field Ol:F

.field Pl:Z

.field Ql:F

.field Rl:F

.field Sl:F

.field Tl:F

.field Ul:F

.field Vl:F

.field Wl:F

.field Xl:F

.field Yl:I

.field Zl:F

.field _l:Z

.field am:F

.field bm:F

.field cm:F

.field dm:F

.field em:F

.field fm:F

.field gm:I

.field hm:F

.field im:Z

.field jm:Lcom/smartisanos/smengine/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Dl:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->El:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Fl:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Gl:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Hl:F

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Il:F

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Jl:F

    .line 9
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Kl:F

    .line 10
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Ll:F

    .line 11
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Ml:F

    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lcom/smartisanos/launcher/animations/s;->Nl:I

    .line 13
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Ol:F

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Pl:Z

    .line 15
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Ql:F

    .line 16
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Rl:F

    .line 17
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Sl:F

    .line 18
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Tl:F

    .line 19
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Ul:F

    .line 20
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Vl:F

    .line 21
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Wl:F

    .line 22
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Xl:F

    .line 23
    iput v2, p0, Lcom/smartisanos/launcher/animations/s;->Yl:I

    .line 24
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->Zl:F

    .line 25
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->_l:Z

    .line 26
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->am:F

    .line 27
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->bm:F

    .line 28
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->cm:F

    .line 29
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->dm:F

    .line 30
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->em:F

    .line 31
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->fm:F

    .line 32
    iput v2, p0, Lcom/smartisanos/launcher/animations/s;->gm:I

    .line 33
    iput v1, p0, Lcom/smartisanos/launcher/animations/s;->hm:F

    .line 34
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->im:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/s;->jm:Lcom/smartisanos/smengine/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->_l:Z

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->am:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->bm:F

    .line 4
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->cm:F

    .line 5
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->dm:F

    .line 6
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->em:F

    .line 7
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->fm:F

    .line 8
    iput p3, p0, Lcom/smartisanos/launcher/animations/s;->gm:I

    .line 9
    iput p4, p0, Lcom/smartisanos/launcher/animations/s;->hm:F

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Pl:Z

    .line 11
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->Ql:F

    .line 12
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->Rl:F

    .line 13
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->Sl:F

    .line 14
    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Tl:F

    .line 15
    iget p1, p2, Lcom/smartisanos/smengine/a/k;->x:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Ul:F

    .line 16
    iget p1, p2, Lcom/smartisanos/smengine/a/k;->y:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Vl:F

    .line 17
    iget p1, p2, Lcom/smartisanos/smengine/a/k;->z:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Wl:F

    .line 18
    iget p1, p2, Lcom/smartisanos/smengine/a/k;->w:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Xl:F

    .line 19
    iput p3, p0, Lcom/smartisanos/launcher/animations/s;->Yl:I

    .line 20
    iput p4, p0, Lcom/smartisanos/launcher/animations/s;->Zl:F

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->im:Z

    .line 22
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/s;->jm:Lcom/smartisanos/smengine/a;

    :cond_0
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/s;->Dl:Z

    .line 2
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->Hl:F

    .line 3
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/s;->Il:F

    .line 4
    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Jl:F

    .line 5
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Kl:F

    .line 6
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Ll:F

    .line 7
    iget p1, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iput p1, p0, Lcom/smartisanos/launcher/animations/s;->Ml:F

    .line 8
    iput p3, p0, Lcom/smartisanos/launcher/animations/s;->Nl:I

    .line 9
    iput p4, p0, Lcom/smartisanos/launcher/animations/s;->Ol:F

    return-void
.end method
