.class public Lf/s$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lf/m;

.field public b:Ljava/lang/String;

.field public c:Lf/l$a;

.field public d:Lf/t;

.field public e:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lf/s$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    iput-object v0, p0, Lf/s$a;->c:Lf/l$a;

    return-void
.end method

.method public constructor <init>(Lf/s;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lf/s;->a:Lf/m;

    iput-object v0, p0, Lf/s$a;->a:Lf/m;

    .line 8
    iget-object v0, p1, Lf/s;->b:Ljava/lang/String;

    iput-object v0, p0, Lf/s$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lf/s;->d:Lf/t;

    iput-object v0, p0, Lf/s$a;->d:Lf/t;

    .line 10
    iget-object v0, p1, Lf/s;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lf/s;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Lf/s;->c:Lf/l;

    invoke-virtual {p1}, Lf/l;->a()Lf/l$a;

    move-result-object p1

    iput-object p1, p0, Lf/s$a;->c:Lf/l$a;

    return-void
.end method


# virtual methods
.method public a(Lf/l;)Lf/s$a;
    .locals 0

    .line 5
    invoke-virtual {p1}, Lf/l;->a()Lf/l$a;

    move-result-object p1

    iput-object p1, p0, Lf/s$a;->c:Lf/l$a;

    return-object p0
.end method

.method public a(Lf/m;)Lf/s$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lf/s$a;->a:Lf/m;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lf/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lf/s$a;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p0, Lf/s$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    .line 17
    :cond_1
    iget-object v0, p0, Lf/s$a;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lf/s$a;
    .locals 1

    .line 4
    iget-object v0, p0, Lf/s$a;->c:Lf/l$a;

    invoke-virtual {v0, p1}, Lf/l$a;->b(Ljava/lang/String;)Lf/l$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lf/t;)Lf/s$a;
    .locals 2

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 7
    invoke-static {p1}, Lf/z/g/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 9
    invoke-static {p1}, Lf/z/g/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_3
    :goto_1
    iput-object p1, p0, Lf/s$a;->b:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lf/s$a;->d:Lf/t;

    return-object p0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;
    .locals 1

    .line 3
    iget-object v0, p0, Lf/s$a;->c:Lf/l$a;

    invoke-virtual {v0, p1, p2}, Lf/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    return-object p0
.end method

.method public a()Lf/s;
    .locals 2

    .line 19
    iget-object v0, p0, Lf/s$a;->a:Lf/m;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lf/s;

    invoke-direct {v0, p0}, Lf/s;-><init>(Lf/s$a;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/s$a;->c:Lf/l$a;

    invoke-virtual {v0, p1, p2}, Lf/l$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    return-object p0
.end method
