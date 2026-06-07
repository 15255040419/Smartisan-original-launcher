.class public Lb/c/a/c/o0$a;
.super Lb/c/a/c/u;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/o0;->listIterator(I)Lb/c/a/c/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lb/c/a/c/o0;


# direct methods
.method public constructor <init>(Lb/c/a/c/o0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/o0$a;->c:Lb/c/a/c/o0;

    invoke-direct {p0, p2, p3}, Lb/c/a/c/u;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/o0$a;->c:Lb/c/a/c/o0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
