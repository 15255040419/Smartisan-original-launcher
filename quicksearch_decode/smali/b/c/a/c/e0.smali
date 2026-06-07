.class public abstract Lb/c/a/c/e0;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/c/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/a/k<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb/c/a/a/k;->a()Lb/c/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/c/e0;->a:Lb/c/a/a/k;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/e0;->a:Lb/c/a/a/k;

    invoke-virtual {v0, p0}, Lb/c/a/a/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/e0;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lb/c/a/c/w0;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
