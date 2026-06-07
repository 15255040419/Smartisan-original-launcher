.class public Lb/c/a/c/v0$a;
.super Lb/c/a/c/j0;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/v0;->e()Lb/c/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/j0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/c/v0;


# direct methods
.method public constructor <init>(Lb/c/a/c/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/v0$a;->b:Lb/c/a/c/v0;

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
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/v0$a;->b:Lb/c/a/c/v0;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/v0$a;->b:Lb/c/a/c/v0;

    invoke-virtual {v0, p1}, Lb/c/a/c/v0;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/v0$a;->b:Lb/c/a/c/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
