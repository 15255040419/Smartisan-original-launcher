.class public final Lb/c/a/a/i$b;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/i$b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb/c/a/a/i$b$a;

.field public c:Lb/c/a/a/i$b$a;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lb/c/a/a/i$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/c/a/a/i$b$a;-><init>(Lb/c/a/a/i$a;)V

    iput-object v0, p0, Lb/c/a/a/i$b;->b:Lb/c/a/a/i$b$a;

    .line 4
    iget-object v0, p0, Lb/c/a/a/i$b;->b:Lb/c/a/a/i$b$a;

    iput-object v0, p0, Lb/c/a/a/i$b;->c:Lb/c/a/a/i$b$a;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb/c/a/a/i$b;->d:Z

    .line 6
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lb/c/a/a/i$b;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lb/c/a/a/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/a/i$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/c/a/a/i$b$a;
    .locals 2

    .line 3
    new-instance v0, Lb/c/a/a/i$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/c/a/a/i$b$a;-><init>(Lb/c/a/a/i$a;)V

    .line 4
    iget-object v1, p0, Lb/c/a/a/i$b;->c:Lb/c/a/a/i$b$a;

    iput-object v0, v1, Lb/c/a/a/i$b$a;->c:Lb/c/a/a/i$b$a;

    iput-object v0, p0, Lb/c/a/a/i$b;->c:Lb/c/a/a/i$b$a;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lb/c/a/a/i$b;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lb/c/a/a/i$b;->a()Lb/c/a/a/i$b$a;

    move-result-object v0

    .line 6
    iput-object p1, v0, Lb/c/a/a/i$b$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lb/c/a/a/i$b;
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb/c/a/a/i$b;->b(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/c/a/a/i$b;->b(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lb/c/a/a/i$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/a/i$b;->a(Ljava/lang/Object;)Lb/c/a/a/i$b;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lb/c/a/a/i$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/c/a/a/i$b;->a()Lb/c/a/a/i$b$a;

    move-result-object v0

    .line 3
    iput-object p2, v0, Lb/c/a/a/i$b$a;->b:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lb/c/a/a/i$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lb/c/a/a/i$b;->d:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lb/c/a/a/i$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lb/c/a/a/i$b;->b:Lb/c/a/a/i$b$a;

    iget-object v2, v2, Lb/c/a/a/i$b$a;->c:Lb/c/a/a/i$b$a;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 4
    iget-object v4, v2, Lb/c/a/a/i$b$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 5
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, v2, Lb/c/a/a/i$b$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 9
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 12
    :cond_3
    iget-object v2, v2, Lb/c/a/a/i$b$a;->c:Lb/c/a/a/i$b$a;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
