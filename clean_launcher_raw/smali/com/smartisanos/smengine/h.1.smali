.class public Lcom/smartisanos/smengine/h;
.super Laurelienribon/tweenengine/n;
.source "BezierEquation.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Nf:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/h;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/h;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/n;-><init>()V

    return-void
.end method

.method private a(FLjava/util/ArrayList;)F
    .locals 12

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/i;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/i;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/i;

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/smengine/a/i;

    .line 5
    iget v2, p0, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v5, 0x3ec00000    # 0.375f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, v1, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, p2, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v6, 0x3e8

    move v7, v3

    :goto_0
    sub-float v8, v2, p1

    .line 6
    invoke-static {v8}, Lcom/smartisanos/smengine/a/a;->abs(F)F

    move-result v8

    const v9, 0x3a83126f    # 0.001f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    if-lez v6, :cond_1

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    add-float v2, v4, v7

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float v2, v3, v5

    mul-float v8, v2, v2

    mul-float/2addr v8, v2

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v5

    mul-float v10, v9, v2

    mul-float/2addr v10, v2

    mul-float/2addr v9, v5

    mul-float/2addr v9, v2

    mul-float v2, v5, v5

    mul-float/2addr v2, v5

    .line 7
    iget v11, p0, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v11, v8

    iget v8, v0, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v8, v10

    add-float/2addr v11, v8

    iget v8, v1, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v8, v9

    add-float/2addr v11, v8

    iget v8, p2, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v8, v2

    add-float v2, v11, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    .line 8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/smengine/h;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "can not find most suitable t"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return v5
.end method


# virtual methods
.method public compute(F)F
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/h;->Nf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/a/i;

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/a/i;

    .line 4
    iget v4, v2, Lcom/smartisanos/smengine/a/i;->x:F

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, v3, Lcom/smartisanos/smengine/a/i;->x:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/i;

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/a/i;

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/smengine/h;->a(FLjava/util/ArrayList;)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p0

    mul-float v6, v5, p1

    mul-float/2addr v6, p1

    mul-float/2addr v5, p0

    mul-float/2addr v5, p1

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    .line 8
    iget p0, v2, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr p0, v1

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v0, v6

    add-float/2addr p0, v0

    iget v0, v4, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v0, v5

    add-float/2addr p0, v0

    iget v0, v3, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    return p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bezier curve has not result"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
