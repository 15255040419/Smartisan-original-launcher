.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .locals 4

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    .line 66
    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    :try_start_0
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_1

    .line 74
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_2

    .line 75
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 76
    :cond_2
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 77
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_1

    .line 78
    :cond_3
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 79
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    goto :goto_1

    .line 80
    :cond_4
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_5

    .line 81
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V

    goto :goto_1

    .line 83
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 88
    iget-object p0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method visitClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0

    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0

    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    return-void
.end method
