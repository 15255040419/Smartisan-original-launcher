.class public Lb/d/a/b/j/i/b$c;
.super Lb/d/a/b/j/i/b$a;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/b/j/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/d/a/b/j/i/b<",
        "TE;>.a;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lb/d/a/b/j/i/b;


# direct methods
.method public constructor <init>(Lb/d/a/b/j/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/b/j/i/b$c;->e:Lb/d/a/b/j/i/b;

    invoke-direct {p0, p1}, Lb/d/a/b/j/i/b$a;-><init>(Lb/d/a/b/j/i/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/b/j/i/b;Lb/d/a/b/j/i/b$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/d/a/b/j/i/b$c;-><init>(Lb/d/a/b/j/i/b;)V

    return-void
.end method


# virtual methods
.method public a(Lb/d/a/b/j/i/b$d;)Lb/d/a/b/j/i/b$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/d/a/b/j/i/b$d<",
            "TE;>;)",
            "Lb/d/a/b/j/i/b$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lb/d/a/b/j/i/b$d;->c:Lb/d/a/b/j/i/b$d;

    return-object p1
.end method

.method public b()Lb/d/a/b/j/i/b$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/d/a/b/j/i/b$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/d/a/b/j/i/b$c;->e:Lb/d/a/b/j/i/b;

    iget-object v0, v0, Lb/d/a/b/j/i/b;->a:Lb/d/a/b/j/i/b$d;

    return-object v0
.end method
