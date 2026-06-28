.class final Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypeVariableKey"
.end annotation


# instance fields
.field private final var:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method private equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)Z"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    .line 602
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
    .locals 1

    .line 581
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 566
    instance-of v0, p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    if-eqz v0, :cond_0

    .line 567
    check-cast p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    .line 568
    iget-object p1, p1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method equalsType(Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 593
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 594
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsTypeVariable(Ljava/lang/reflect/TypeVariable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->var:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
