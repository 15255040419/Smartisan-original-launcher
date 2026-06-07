.class public final Lb/c/a/c/i1;
.super Lb/c/a/c/j1;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lb/c/a/c/j1;",
        "Lcom/google/common/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lb/c/a/c/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/i1<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final a:Lb/c/a/c/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/d0<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final b:Lb/c/a/c/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/d0<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/c/a/c/i1;

    invoke-static {}, Lb/c/a/c/d0;->b()Lb/c/a/c/d0;

    move-result-object v1

    invoke-static {}, Lb/c/a/c/d0;->a()Lb/c/a/c/d0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/c/a/c/i1;-><init>(Lb/c/a/c/d0;Lb/c/a/c/d0;)V

    sput-object v0, Lb/c/a/c/i1;->c:Lb/c/a/c/i1;

    return-void
.end method

.method public constructor <init>(Lb/c/a/c/d0;Lb/c/a/c/d0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/d0<",
            "TC;>;",
            "Lb/c/a/c/d0<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/j1;-><init>()V

    .line 2
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lb/c/a/c/d0;

    iput-object v0, p0, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    .line 3
    invoke-static {p2}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lb/c/a/c/d0;

    iput-object v0, p0, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    .line 4
    invoke-virtual {p1, p2}, Lb/c/a/c/d0;->a(Lb/c/a/c/d0;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-static {}, Lb/c/a/c/d0;->a()Lb/c/a/c/d0;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 6
    invoke-static {}, Lb/c/a/c/d0;->b()Lb/c/a/c/d0;

    move-result-object v0

    if-eq p2, v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lb/c/a/c/i1;->a(Lb/c/a/c/d0;Lb/c/a/c/d0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 8
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a()Lb/c/a/c/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lb/c/a/c/i1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/c/i1;->c:Lb/c/a/c/i1;

    return-object v0
.end method

.method public static a(Lb/c/a/c/d0;Lb/c/a/c/d0;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/d0<",
            "*>;",
            "Lb/c/a/c/d0<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    invoke-virtual {p0, v0}, Lb/c/a/c/d0;->a(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1, v0}, Lb/c/a/c/d0;->b(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lb/c/a/c/i1;->b(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lb/c/a/c/i1;->a(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    invoke-virtual {v0, p1}, Lb/c/a/c/d0;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    invoke-virtual {v0, p1}, Lb/c/a/c/d0;->a(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lb/c/a/c/i1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb/c/a/c/i1;

    .line 3
    iget-object v0, p0, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    iget-object v2, p1, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    invoke-virtual {v0, v2}, Lb/c/a/c/d0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    iget-object p1, p1, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    invoke-virtual {v0, p1}, Lb/c/a/c/d0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    invoke-virtual {v0}, Lb/c/a/c/d0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    invoke-virtual {v1}, Lb/c/a/c/d0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/c/i1;->c:Lb/c/a/c/i1;

    invoke-virtual {p0, v0}, Lb/c/a/c/i1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/c/a/c/i1;->a()Lb/c/a/c/i1;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/i1;->a:Lb/c/a/c/d0;

    iget-object v1, p0, Lb/c/a/c/i1;->b:Lb/c/a/c/d0;

    invoke-static {v0, v1}, Lb/c/a/c/i1;->a(Lb/c/a/c/d0;Lb/c/a/c/d0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
