.class final enum Lcom/google/common/reflect/Types$JavaVersion$1;
.super Lcom/google/common/reflect/Types$JavaVersion;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types$JavaVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V

    return-void
.end method


# virtual methods
.method newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 0

    .line 546
    new-instance p0, Lcom/google/common/reflect/Types$GenericArrayTypeImpl;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method bridge synthetic newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 543
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/Types$JavaVersion$1;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    return-object p0
.end method

.method usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 551
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 553
    move-object p0, p1

    check-cast p0, Ljava/lang/Class;

    .line 554
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance p1, Lcom/google/common/reflect/Types$GenericArrayTypeImpl;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/common/reflect/Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    :cond_0
    return-object p1
.end method
