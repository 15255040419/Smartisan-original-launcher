.class public final Lb/c/a/i/j$i;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final a:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb/c/a/c/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lower bound for wildcard"

    .line 2
    invoke-static {p1, v0}, Lb/c/a/i/j;->a([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    const-string v0, "upper bound for wildcard"

    .line 3
    invoke-static {p2, v0}, Lb/c/a/i/j;->a([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    invoke-virtual {v0, p1}, Lb/c/a/i/j$d;->a([Ljava/lang/reflect/Type;)Lb/c/a/c/o0;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/i/j$i;->a:Lb/c/a/c/o0;

    .line 5
    sget-object p1, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    invoke-virtual {p1, p2}, Lb/c/a/i/j$d;->a([Ljava/lang/reflect/Type;)Lb/c/a/c/o0;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/i/j$i;->b:Lb/c/a/c/o0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 3
    iget-object v0, p0, Lb/c/a/i/j$i;->a:Lb/c/a/c/o0;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/c/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/i/j$i;->b:Lb/c/a/c/o0;

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/j$i;->a:Lb/c/a/c/o0;

    invoke-static {v0}, Lb/c/a/i/j;->a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/i/j$i;->b:Lb/c/a/c/o0;

    invoke-static {v0}, Lb/c/a/i/j;->a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/i/j$i;->a:Lb/c/a/c/o0;

    invoke-virtual {v0}, Lb/c/a/c/o0;->hashCode()I

    move-result v0

    iget-object v1, p0, Lb/c/a/i/j$i;->b:Lb/c/a/c/o0;

    invoke-virtual {v1}, Lb/c/a/c/o0;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lb/c/a/i/j$i;->a:Lb/c/a/c/o0;

    invoke-virtual {v1}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    const-string v3, " super "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    invoke-virtual {v3, v2}, Lb/c/a/i/j$d;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lb/c/a/i/j$i;->b:Lb/c/a/c/o0;

    invoke-static {v1}, Lb/c/a/i/j;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    const-string v3, " extends "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    invoke-virtual {v3, v2}, Lb/c/a/i/j$d;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
