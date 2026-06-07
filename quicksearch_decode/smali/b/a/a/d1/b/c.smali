.class public Lb/a/a/d1/b/c;
.super Lb/a/a/d1/b/b;
.source "LinkedBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/a/d1/b/b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/a/d1/b/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/d1/b/b;->a:Ljava/util/Map;

    return-void
.end method
