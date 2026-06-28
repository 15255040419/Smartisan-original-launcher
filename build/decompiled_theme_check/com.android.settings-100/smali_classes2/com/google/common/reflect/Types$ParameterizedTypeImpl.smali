.class final Lcom/google/common/reflect/Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final argumentsList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final ownerType:Ljava/lang/reflect/Type;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1    # Ljava/lang/reflect/Type;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    array-length v0, p3

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-string v0, "type parameter"

    .line 270
    invoke-static {p3, v0}, Lcom/google/common/reflect/Types;->access$200([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 272
    iput-object p2, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    .line 273
    sget-object p1, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {p1, p3}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->argumentsList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 314
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 317
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 318
    invoke-virtual {p0}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->argumentsList:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/common/reflect/Types;->access$300(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->argumentsList:Lcom/google/common/collect/ImmutableList;

    .line 308
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v1}, Lcom/google/common/reflect/Types$JavaVersion;->jdkTypeDuplicatesOwnerName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    iget-object v2, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {}, Lcom/google/common/reflect/Types;->access$500()Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;->argumentsList:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/reflect/Types;->access$400()Lcom/google/common/base/Function;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    .line 301
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
