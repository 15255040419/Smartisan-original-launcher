.class public Lcom/smartisanos/smengine/mymaterial/o;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "SimpleTextureWithDirLightMaterial.java"


# static fields
.field private static final pW:[F


# instance fields
.field private oW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/o;->pW:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/o;->oW:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/o;->oW:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const-string v3, "uLightDir"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/sa;->Wa(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/smartisanos/smengine/mymaterial/o;->oW:I

    .line 7
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/mymaterial/o;->oW:I

    sget-object v3, Lcom/smartisanos/smengine/mymaterial/o;->pW:[F

    invoke-static {v2, v0, v3, v1}, Lcom/smartisanos/smengine/P;->glUniform3fv(II[FI)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
