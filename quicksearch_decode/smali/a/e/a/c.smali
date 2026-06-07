.class public La/e/a/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:Landroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/solver/Pools$Pool<",
            "La/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/solver/Pools$Pool<",
            "La/e/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:[La/e/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/a/f;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, La/e/a/f;-><init>(I)V

    iput-object v0, p0, La/e/a/c;->a:Landroidx/constraintlayout/solver/Pools$Pool;

    .line 3
    new-instance v0, La/e/a/f;

    invoke-direct {v0, v1}, La/e/a/f;-><init>(I)V

    iput-object v0, p0, La/e/a/c;->b:Landroidx/constraintlayout/solver/Pools$Pool;

    const/16 v0, 0x20

    new-array v0, v0, [La/e/a/g;

    .line 4
    iput-object v0, p0, La/e/a/c;->c:[La/e/a/g;

    return-void
.end method
