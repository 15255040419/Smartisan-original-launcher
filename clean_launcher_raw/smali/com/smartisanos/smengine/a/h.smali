.class public final Lcom/smartisanos/smengine/a/h;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/smartisanos/smengine/a/h;


# instance fields
.field private GV:Lcom/smartisanos/smengine/a/g;

.field private HV:Lcom/smartisanos/smengine/a/j;

.field private IV:Lcom/smartisanos/smengine/a/j;

.field private KV:Lcom/smartisanos/smengine/a/e;

.field private mWorldMatrix:Lcom/smartisanos/smengine/a/f;

.field private scale:Lcom/smartisanos/smengine/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/h;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/h;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/a/h;->IDENTITY:Lcom/smartisanos/smengine/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    sget-object v0, Lcom/smartisanos/smengine/a/j;->ZERO:Lcom/smartisanos/smengine/a/j;

    sget-object v1, Lcom/smartisanos/smengine/a/g;->IDENTITY:Lcom/smartisanos/smengine/a/g;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/a/h;-><init>(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/e;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->KV:Lcom/smartisanos/smengine/a/e;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/g;

    return-void
.end method


# virtual methods
.method public Bt()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public Ct()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->isIdentity()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public Dt()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public Et()Lcom/smartisanos/smengine/a/f;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->Dt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/g;->At()Lcom/smartisanos/smengine/a/e;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2, p0, v1}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/g;->At()Lcom/smartisanos/smengine/a/e;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object v3, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;Lcom/smartisanos/smengine/a/j;)V

    return-object v0
.end method

.method public a(Lcom/smartisanos/smengine/a/h;)Lcom/smartisanos/smengine/a/h;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->Dt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/g;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p1, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object v0, p1, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/g;Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/g;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p1, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 6
    iget-object v0, p1, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/g;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget-object p1, p1, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    .line 8
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/j;->n(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p1, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p1, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object p1, p1, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->n(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 15
    iget-object v0, p1, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/h;->Et()Lcom/smartisanos/smengine/a/f;

    move-result-object v0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/h;->g(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/f;->c(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/smengine/a/h;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/g;

    return-object p0
.end method

.method public clone()Lcom/smartisanos/smengine/a/h;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/h;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/g;->clone()Lcom/smartisanos/smengine/a/g;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->clone()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/a/j;->g(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/g;->inverse()Lcom/smartisanos/smengine/a/g;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lcom/smartisanos/smengine/a/g;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/a/j;->r(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object p2
.end method

.method public f(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 4

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/d/f;->get()Lcom/smartisanos/smengine/d/f;

    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/smartisanos/smengine/d/f;->vY:Lcom/smartisanos/smengine/a/e;

    .line 13
    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/e;)Lcom/smartisanos/smengine/a/e;

    .line 14
    iget-object v2, v0, Lcom/smartisanos/smengine/d/f;->hY:Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    .line 15
    iput v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 16
    iput v3, v2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 17
    iput v3, v2, Lcom/smartisanos/smengine/a/j;->z:F

    .line 18
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v2, p0, v1}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;)V

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/smengine/d/f;->release()V

    return-object p1
.end method

.method public f(FFF)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    if-nez p2, :cond_0

    .line 21
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget-object p1, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/a/j;->l(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/a/g;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a/j;->n(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public f([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 2
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 3
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v2, 0x3

    aput v1, p1, v2

    .line 5
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v2, 0x4

    aput v1, p1, v2

    .line 6
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget v0, p0, Lcom/smartisanos/smengine/a/g;->x:F

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->y:F

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 9
    iget v0, p0, Lcom/smartisanos/smengine/a/g;->z:F

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 10
    iget p0, p0, Lcom/smartisanos/smengine/a/g;->w:F

    const/16 v0, 0x9

    aput p0, p1, v0

    return-void
.end method

.method public g(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->Dt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->KV:Lcom/smartisanos/smengine/a/e;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/e;)Lcom/smartisanos/smengine/a/e;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->KV:Lcom/smartisanos/smengine/a/e;

    invoke-virtual {p1, v0, v1, p0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->KV:Lcom/smartisanos/smengine/a/e;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/g;->a(Lcom/smartisanos/smengine/a/e;)Lcom/smartisanos/smengine/a/e;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->KV:Lcom/smartisanos/smengine/a/e;

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/e;Lcom/smartisanos/smengine/a/j;)V

    return-object p1
.end method

.method public getRotation()Lcom/smartisanos/smengine/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    return-object p0
.end method

.method public getScale()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public h(FFFF)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/g;->set(FFFF)Lcom/smartisanos/smengine/a/g;

    return-object p0
.end method

.method public inverse()Lcom/smartisanos/smengine/a/h;
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/smengine/a/h;->e(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/h;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/h;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float v5, v4, v5

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    div-float/2addr v4, v2

    invoke-virtual {v1, v3, v5, v4}, Lcom/smartisanos/smengine/a/h;->setScale(FFF)Lcom/smartisanos/smengine/a/h;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/g;->inverse()Lcom/smartisanos/smengine/a/g;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/a/h;->b(Lcom/smartisanos/smengine/a/g;)Lcom/smartisanos/smengine/a/h;

    .line 6
    iget p0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, p0, v2, v0}, Lcom/smartisanos/smengine/a/h;->f(FFF)Lcom/smartisanos/smengine/a/h;

    return-object v1
.end method

.method public setScale(FFF)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public setSkewX(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->x:F

    return-void
.end method

.method public setSkewY(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->IV:Lcom/smartisanos/smengine/a/j;

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    return-void
.end method

.method public setTranslationX(F)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->setX(F)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public setTranslationY(F)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->setY(F)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public setTranslationZ(F)Lcom/smartisanos/smengine/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->setZ(F)Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/smartisanos/smengine/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->HV:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")  ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget v3, v3, Lcom/smartisanos/smengine/a/g;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget v3, v3, Lcom/smartisanos/smengine/a/g;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget v3, v3, Lcom/smartisanos/smengine/a/g;->z:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/smengine/a/h;->GV:Lcom/smartisanos/smengine/a/g;

    iget v3, v3, Lcom/smartisanos/smengine/a/g;->w:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/a/h;->scale:Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ") }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
