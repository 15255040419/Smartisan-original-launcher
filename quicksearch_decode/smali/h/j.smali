.class public abstract Lh/j;
.super Ljava/lang/Object;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/j$c;,
        Lh/j$h;,
        Lh/j$m;,
        Lh/j$g;,
        Lh/j$e;,
        Lh/j$d;,
        Lh/j$k;,
        Lh/j$l;,
        Lh/j$j;,
        Lh/j$i;,
        Lh/j$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/j$b;

    invoke-direct {v0, p0}, Lh/j$b;-><init>(Lh/j;)V

    return-object v0
.end method

.method public abstract a(Lh/l;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/l;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final b()Lh/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/j<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/j$a;

    invoke-direct {v0, p0}, Lh/j$a;-><init>(Lh/j;)V

    return-object v0
.end method
