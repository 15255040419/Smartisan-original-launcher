.class public final Lf/s;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/s$a;
    }
.end annotation


# instance fields
.field public final a:Lf/m;

.field public final b:Ljava/lang/String;

.field public final c:Lf/l;

.field public final d:Lf/t;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lf/c;


# direct methods
.method public constructor <init>(Lf/s$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lf/s$a;->a:Lf/m;

    iput-object v0, p0, Lf/s;->a:Lf/m;

    .line 3
    iget-object v0, p1, Lf/s$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lf/s;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lf/s$a;->c:Lf/l$a;

    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object v0

    iput-object v0, p0, Lf/s;->c:Lf/l;

    .line 5
    iget-object v0, p1, Lf/s$a;->d:Lf/t;

    iput-object v0, p0, Lf/s;->d:Lf/t;

    .line 6
    iget-object p1, p1, Lf/s$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lf/z/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf/s;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lf/t;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/s;->d:Lf/t;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->c:Lf/l;

    invoke-virtual {v0, p1}, Lf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lf/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->f:Lf/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/s;->c:Lf/l;

    invoke-static {v0}, Lf/c;->a(Lf/l;)Lf/c;

    move-result-object v0

    iput-object v0, p0, Lf/s;->f:Lf/c;

    :goto_0
    return-object v0
.end method

.method public c()Lf/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->c:Lf/l;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->a:Lf/m;

    invoke-virtual {v0}, Lf/m;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lf/s$a;
    .locals 1

    .line 1
    new-instance v0, Lf/s$a;

    invoke-direct {v0, p0}, Lf/s$a;-><init>(Lf/s;)V

    return-object v0
.end method

.method public g()Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s;->a:Lf/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/s;->a:Lf/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/s;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
