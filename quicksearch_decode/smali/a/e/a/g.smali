.class public La/e/a/g;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e/a/g$a;
    }
.end annotation


# static fields
.field public static k:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:[F

.field public g:La/e/a/g$a;

.field public h:[La/e/a/b;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(La/e/a/g$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, La/e/a/g;->b:I

    .line 3
    iput p2, p0, La/e/a/g;->c:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, La/e/a/g;->d:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, La/e/a/g;->f:[F

    const/16 v0, 0x8

    new-array v0, v0, [La/e/a/b;

    .line 6
    iput-object v0, p0, La/e/a/g;->h:[La/e/a/b;

    .line 7
    iput p2, p0, La/e/a/g;->i:I

    .line 8
    iput p2, p0, La/e/a/g;->j:I

    .line 9
    iput-object p1, p0, La/e/a/g;->g:La/e/a/g$a;

    return-void
.end method

.method public static b()V
    .locals 1

    .line 1
    sget v0, La/e/a/g;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/e/a/g;->k:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, La/e/a/g;->a:Ljava/lang/String;

    .line 8
    sget-object v0, La/e/a/g$a;->e:La/e/a/g$a;

    iput-object v0, p0, La/e/a/g;->g:La/e/a/g$a;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, La/e/a/g;->d:I

    const/4 v1, -0x1

    .line 10
    iput v1, p0, La/e/a/g;->b:I

    .line 11
    iput v1, p0, La/e/a/g;->c:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, La/e/a/g;->e:F

    .line 13
    iput v0, p0, La/e/a/g;->i:I

    .line 14
    iput v0, p0, La/e/a/g;->j:I

    return-void
.end method

.method public final a(La/e/a/b;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, La/e/a/g;->i:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, La/e/a/g;->h:[La/e/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, La/e/a/g;->h:[La/e/a/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/e/a/b;

    iput-object v0, p0, La/e/a/g;->h:[La/e/a/b;

    .line 5
    :cond_2
    iget-object v0, p0, La/e/a/g;->h:[La/e/a/b;

    iget v1, p0, La/e/a/g;->i:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, La/e/a/g;->i:I

    return-void
.end method

.method public a(La/e/a/g$a;Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, La/e/a/g;->g:La/e/a/g$a;

    return-void
.end method

.method public final b(La/e/a/b;)V
    .locals 5

    .line 2
    iget v0, p0, La/e/a/g;->i:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, La/e/a/g;->h:[La/e/a/b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 4
    iget-object p1, p0, La/e/a/g;->h:[La/e/a/b;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget p1, p0, La/e/a/g;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/e/a/g;->i:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(La/e/a/b;)V
    .locals 5

    .line 1
    iget v0, p0, La/e/a/g;->i:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, La/e/a/g;->h:[La/e/a/b;

    aget-object v4, v3, v2

    iget-object v4, v4, La/e/a/b;->d:La/e/a/a;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, p1, v1}, La/e/a/a;->a(La/e/a/b;La/e/a/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, La/e/a/g;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/e/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
