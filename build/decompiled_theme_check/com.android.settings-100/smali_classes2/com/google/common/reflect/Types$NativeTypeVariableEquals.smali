.class final Lcom/google/common/reflect/Types$NativeTypeVariableEquals;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeTypeVariableEquals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NATIVE_TYPE_VARIABLE_ONLY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 671
    const-class v0, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;

    .line 672
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-string v3, "X"

    .line 673
    invoke-static {v0, v3, v2}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 672
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
