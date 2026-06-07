.class public Lb/a/a/l1/f/e;
.super Ljava/lang/Object;
.source "Val.java"


# instance fields
.field public a:D

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/l1/f/e;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/l1/f/e;->b:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4
    iput-wide v0, p0, Lb/a/a/l1/f/e;->a:D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lb/a/a/l1/f/e;->b:I

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    .line 8
    iput-wide p1, p0, Lb/a/a/l1/f/e;->a:D

    return-void
.end method

.method public static a(Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;
    .locals 3

    .line 6
    new-instance v0, Lb/a/a/l1/f/e;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v0
.end method

.method public static a(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;
    .locals 3

    .line 5
    new-instance v0, Lb/a/a/l1/f/e;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    iget-wide p0, p1, Lb/a/a/l1/f/e;->a:D

    add-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v0
.end method

.method public static b(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/l1/f/e;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    iget-wide p0, p1, Lb/a/a/l1/f/e;->a:D

    div-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v0
.end method

.method public static c(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/l1/f/e;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    iget-wide p0, p1, Lb/a/a/l1/f/e;->a:D

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v0
.end method

.method public static d(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/l1/f/e;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    iget-wide p0, p1, Lb/a/a/l1/f/e;->a:D

    sub-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/l1/f/e;->a:D

    return-wide v0
.end method

.method public a(I)Lb/a/a/l1/f/e;
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/l1/f/e;->b:I

    .line 3
    iget p1, p0, Lb/a/a/l1/f/e;->b:I

    if-lez p1, :cond_0

    const-string p1, "..."

    .line 4
    iput-object p1, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final a(D)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0xa

    .line 9
    invoke-static {p1, p2, v0, v0}, Lb/a/a/l1/f/d;->a(DII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 2
    iget v0, p0, Lb/a/a/l1/f/e;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lb/a/a/l1/f/e;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "..."

    .line 5
    iput-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v2, p0, Lb/a/a/l1/f/e;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lb/a/a/l1/f/e;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-wide v0, p0, Lb/a/a/l1/f/e;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "0"

    return-object v0

    .line 8
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/l1/f/e;->a:D

    invoke-virtual {p0, v1, v2}, Lb/a/a/l1/f/e;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lb/a/a/l1/f/e;->c:Ljava/lang/String;

    return-object v0
.end method
