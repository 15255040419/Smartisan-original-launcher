.class public final Lb/c/a/c/d0$a;
.super Lb/c/a/c/d0;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/d0<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lb/c/a/c/d0$a;

.field public static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/c/d0$a;

    invoke-direct {v0}, Lb/c/a/c/d0$a;-><init>()V

    sput-object v0, Lb/c/a/c/d0$a;->b:Lb/c/a/c/d0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/c/a/c/d0;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method public static synthetic c()Lb/c/a/c/d0$a;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/c/d0$a;->b:Lb/c/a/c/d0$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/c/d0$a;->b:Lb/c/a/c/d0$a;

    return-object v0
.end method


# virtual methods
.method public a(Lb/c/a/c/d0;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/d0<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "+\u221e)"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/c/a/c/d0;

    invoke-virtual {p0, p1}, Lb/c/a/c/d0$a;->a(Lb/c/a/c/d0;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "+\u221e"

    return-object v0
.end method
