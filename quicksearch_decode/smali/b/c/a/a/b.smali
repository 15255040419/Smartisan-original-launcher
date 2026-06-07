.class public abstract Lb/c/a/a/b;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lb/c/a/a/b$b;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb/c/a/a/b$b;->b:Lb/c/a/a/b$b;

    iput-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/a/b$b;->c:Lb/c/a/a/b$b;

    iput-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget-object v0, Lb/c/a/a/b$b;->d:Lb/c/a/a/b$b;

    iput-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    .line 2
    invoke-virtual {p0}, Lb/c/a/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/a/b;->b:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    sget-object v1, Lb/c/a/a/b$b;->c:Lb/c/a/a/b$b;

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lb/c/a/a/b$b;->a:Lb/c/a/a/b$b;

    iput-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    sget-object v1, Lb/c/a/a/b$b;->d:Lb/c/a/a/b$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lb/c/a/a/l;->b(Z)V

    .line 2
    sget-object v0, Lb/c/a/a/b$a;->a:[I

    iget-object v1, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lb/c/a/a/b;->c()Z

    move-result v0

    return v0

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/c/a/a/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lb/c/a/a/b$b;->b:Lb/c/a/a/b$b;

    iput-object v0, p0, Lb/c/a/a/b;->a:Lb/c/a/a/b$b;

    .line 3
    iget-object v0, p0, Lb/c/a/a/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lb/c/a/a/b;->b:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
