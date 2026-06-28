.class final enum Lcom/google/common/reflect/Types$JavaVersion$4;
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

    .line 599
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V

    return-void
.end method


# virtual methods
.method jdkTypeDuplicatesOwnerName()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 602
    sget-object p0, Lcom/google/common/reflect/Types$JavaVersion$4;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 612
    sget-object p0, Lcom/google/common/reflect/Types$JavaVersion$4;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 607
    sget-object p0, Lcom/google/common/reflect/Types$JavaVersion$4;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
