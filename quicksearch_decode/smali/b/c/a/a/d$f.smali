.class public Lb/c/a/a/d$f;
.super Lb/c/a/a/d;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lb/c/a/a/d;


# direct methods
.method public constructor <init>(Lb/c/a/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/a/d;-><init>()V

    .line 2
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lb/c/a/a/d;

    iput-object p1, p0, Lb/c/a/a/d$f;->a:Lb/c/a/a/d;

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a/d$f;->a:Lb/c/a/a/d;

    invoke-virtual {v0, p1}, Lb/c/a/a/d;->a(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lb/c/a/a/d;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public negate()Lb/c/a/a/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/c/a/a/d$f;->a:Lb/c/a/a/d;

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/a/d$f;->negate()Lb/c/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/c/a/a/d$f;->a:Lb/c/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
