.class public Lb/c/a/c/t0$b;
.super Lb/c/a/c/j0;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/t0;->a()Lb/c/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/j0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/c/o0;

.field public final synthetic c:Lb/c/a/c/t0;


# direct methods
.method public constructor <init>(Lb/c/a/c/t0;Lb/c/a/c/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/t0$b;->c:Lb/c/a/c/t0;

    iput-object p2, p0, Lb/c/a/c/t0$b;->b:Lb/c/a/c/o0;

    invoke-direct {p0}, Lb/c/a/c/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lb/c/a/c/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/m0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0$b;->c:Lb/c/a/c/t0;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/t0$b;->b:Lb/c/a/c/o0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
