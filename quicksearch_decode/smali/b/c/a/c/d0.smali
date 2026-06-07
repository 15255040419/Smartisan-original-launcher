.class public abstract Lb/c/a/c/d0;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/d0$a;,
        Lb/c/a/c/d0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/c/a/c/d0<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/d0;->a:Ljava/lang/Comparable;

    return-void
.end method

.method public static a()Lb/c/a/c/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lb/c/a/c/d0<",
            "TC;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lb/c/a/c/d0$a;->c()Lb/c/a/c/d0$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lb/c/a/c/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lb/c/a/c/d0<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb/c/a/c/d0$b;->c()Lb/c/a/c/d0$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lb/c/a/c/d0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/d0<",
            "TC;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb/c/a/c/d0;->b()Lb/c/a/c/d0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lb/c/a/c/d0;->a()Lb/c/a/c/d0;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lb/c/a/c/d0;->a:Ljava/lang/Comparable;

    iget-object p1, p1, Lb/c/a/c/d0;->a:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lb/c/a/c/i1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-static {p1, p1}, Lb/c/a/h/a;->a(ZZ)I

    move-result p1

    return p1
.end method

.method public abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public abstract a(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/StringBuilder;)V
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/c/a/c/d0;

    invoke-virtual {p0, p1}, Lb/c/a/c/d0;->a(Lb/c/a/c/d0;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lb/c/a/c/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb/c/a/c/d0;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lb/c/a/c/d0;->a(Lb/c/a/c/d0;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method
