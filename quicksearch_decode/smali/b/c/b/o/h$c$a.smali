.class public Lb/c/b/o/h$c$a;
.super Lb/c/b/o/h$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/h$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/o/h<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/c/b/o/h$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lb/c/b/o/h$c;->a:Lb/c/b/o/h;

    invoke-direct {p0, p1}, Lb/c/b/o/h$d;-><init>(Lb/c/b/o/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/h$d;->a()Lb/c/b/o/h$e;

    move-result-object v0

    iget-object v0, v0, Lb/c/b/o/h$e;->f:Ljava/lang/Object;

    return-object v0
.end method
