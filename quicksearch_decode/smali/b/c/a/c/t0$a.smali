.class public Lb/c/a/c/t0$a;
.super Lb/c/a/c/u1;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/t0;->iterator()Lb/c/a/c/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/u1<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/c/a/c/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/u1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lb/c/a/c/t0;


# direct methods
.method public constructor <init>(Lb/c/a/c/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/t0$a;->b:Lb/c/a/c/t0;

    invoke-direct {p0}, Lb/c/a/c/u1;-><init>()V

    .line 2
    iget-object p1, p0, Lb/c/a/c/t0$a;->b:Lb/c/a/c/t0;

    invoke-static {p1}, Lb/c/a/c/t0;->a(Lb/c/a/c/t0;)Lb/c/a/c/p0;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/a/c/p0;->entrySet()Lb/c/a/c/u0;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/a/c/m0;->iterator()Lb/c/a/c/u1;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/c/t0$a;->a:Lb/c/a/c/u1;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0$a;->a:Lb/c/a/c/u1;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0$a;->a:Lb/c/a/c/u1;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
