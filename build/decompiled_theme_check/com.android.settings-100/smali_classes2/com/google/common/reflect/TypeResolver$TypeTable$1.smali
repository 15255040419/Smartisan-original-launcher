.class Lcom/google/common/reflect/TypeResolver$TypeTable$1;
.super Lcom/google/common/reflect/TypeResolver$TypeTable;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver$TypeTable;->resolve(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeResolver$TypeTable;

.field final synthetic val$unguarded:Lcom/google/common/reflect/TypeResolver$TypeTable;

.field final synthetic val$var:Ljava/lang/reflect/TypeVariable;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;->this$0:Lcom/google/common/reflect/TypeResolver$TypeTable;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;->val$var:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;->val$unguarded:Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$TypeTable;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/TypeResolver$TypeTable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 308
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;->val$var:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;->val$unguarded:Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/reflect/TypeResolver$TypeTable;->resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
