.class public Lb/c/b/o/d$a;
.super Lb/c/b/m;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/d;->create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lb/c/b/c;

.field public final synthetic e:Lb/c/b/p/a;

.field public final synthetic f:Lb/c/b/o/d;


# direct methods
.method public constructor <init>(Lb/c/b/o/d;ZZLb/c/b/c;Lb/c/b/p/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/b/o/d$a;->f:Lb/c/b/o/d;

    iput-boolean p2, p0, Lb/c/b/o/d$a;->b:Z

    iput-boolean p3, p0, Lb/c/b/o/d$a;->c:Z

    iput-object p4, p0, Lb/c/b/o/d$a;->d:Lb/c/b/c;

    iput-object p5, p0, Lb/c/b/o/d$a;->e:Lb/c/b/p/a;

    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb/c/b/o/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/c/b/q/a;->z()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/c/b/o/d$a;->b()Lb/c/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "TT;)V"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lb/c/b/o/d$a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lb/c/b/o/d$a;->b()Lb/c/b/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lb/c/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/d$a;->a:Lb/c/b/m;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/c/b/o/d$a;->d:Lb/c/b/c;

    iget-object v1, p0, Lb/c/b/o/d$a;->f:Lb/c/b/o/d;

    iget-object v2, p0, Lb/c/b/o/d$a;->e:Lb/c/b/p/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Lb/c/b/c;->a(Lcom/google/gson/TypeAdapterFactory;Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v0

    iput-object v0, p0, Lb/c/b/o/d$a;->a:Lb/c/b/m;

    :goto_0
    return-object v0
.end method
