.class public Le/a/x1/a;
.super Ljava/lang/Object;
.source "ArrayQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Le/a/x1/a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Le/a/x1/a;->a:[Ljava/lang/Object;

    array-length v8, v1

    shl-int/lit8 v2, v8, 0x1

    .line 5
    new-array v15, v2, [Ljava/lang/Object;

    .line 6
    iget v4, v0, Le/a/x1/a;->b:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v2, v15

    .line 7
    invoke-static/range {v1 .. v7}, Ld/k/c;->a([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 8
    iget-object v9, v0, Le/a/x1/a;->a:[Ljava/lang/Object;

    .line 9
    array-length v1, v9

    iget v13, v0, Le/a/x1/a;->b:I

    sub-int v11, v1, v13

    const/4 v12, 0x0

    const/4 v14, 0x4

    const/4 v1, 0x0

    move-object v10, v15

    move-object v15, v1

    .line 10
    invoke-static/range {v9 .. v15}, Ld/k/c;->a([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 11
    iput-object v2, v0, Le/a/x1/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    iput v1, v0, Le/a/x1/a;->b:I

    .line 13
    iput v8, v0, Le/a/x1/a;->c:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x1/a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/a/x1/a;->c:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Le/a/x1/a;->c:I

    .line 3
    iget p1, p0, Le/a/x1/a;->c:I

    iget v0, p0, Le/a/x1/a;->b:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Le/a/x1/a;->a()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/x1/a;->b:I

    iget v1, p0, Le/a/x1/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/x1/a;->b:I

    iget v1, p0, Le/a/x1/a;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/x1/a;->a:[Ljava/lang/Object;

    aget-object v3, v1, v0

    .line 3
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Le/a/x1/a;->b:I

    if-eqz v3, :cond_1

    return-object v3

    .line 5
    :cond_1
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method
