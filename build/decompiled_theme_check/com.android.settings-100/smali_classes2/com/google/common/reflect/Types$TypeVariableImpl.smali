.class final Lcom/google/common/reflect/Types$TypeVariableImpl;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeVariableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final bounds:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bound for type variable"

    .line 405
    invoke-static {p3, v0}, Lcom/google/common/reflect/Types;->access$200([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 406
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/GenericDeclaration;

    iput-object p1, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 407
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    .line 408
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->bounds:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 439
    sget-boolean v0, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;

    if-eqz v0, :cond_1

    .line 445
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    check-cast p1, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;

    .line 446
    invoke-static {p1}, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;->access$600(Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;)Lcom/google/common/reflect/Types$TypeVariableImpl;

    move-result-object p1

    .line 447
    iget-object v0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/reflect/Types$TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 448
    invoke-virtual {p1}, Lcom/google/common/reflect/Types$TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->bounds:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/common/reflect/Types$TypeVariableImpl;->bounds:Lcom/google/common/collect/ImmutableList;

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    .line 454
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 455
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 456
    iget-object v0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 457
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->bounds:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/common/reflect/Types;->access$300(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 416
    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/google/common/reflect/Types$TypeVariableImpl;->name:Ljava/lang/String;

    return-object p0
.end method
