.class public La/q/a/a/d$a;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/q/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "La/g/c/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[La/g/c/b$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F[La/g/c/b$b;[La/g/c/b$b;)[La/g/c/b$b;
    .locals 4

    .line 1
    invoke-static {p2, p3}, La/g/c/b;->a([La/g/c/b$b;[La/g/c/b$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, La/q/a/a/d$a;->a:[La/g/c/b$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, La/g/c/b;->a([La/g/c/b$b;[La/g/c/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p2}, La/g/c/b;->a([La/g/c/b$b;)[La/g/c/b$b;

    move-result-object v0

    iput-object v0, p0, La/q/a/a/d$a;->a:[La/g/c/b$b;

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, La/q/a/a/d$a;->a:[La/g/c/b$b;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, La/g/c/b$b;->a(La/g/c/b$b;La/g/c/b$b;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, La/q/a/a/d$a;->a:[La/g/c/b$b;

    return-object p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, [La/g/c/b$b;

    check-cast p3, [La/g/c/b$b;

    invoke-virtual {p0, p1, p2, p3}, La/q/a/a/d$a;->a(F[La/g/c/b$b;[La/g/c/b$b;)[La/g/c/b$b;

    move-result-object p1

    return-object p1
.end method
