.class final enum Lcom/google/common/reflect/TypeToken$TypeFilter$1;
.super Lcom/google/common/reflect/TypeToken$TypeFilter;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$TypeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 804
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/TypeToken$TypeFilter;-><init>(Ljava/lang/String;ILcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/reflect/TypeToken;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 807
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->access$500(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez p0, :cond_0

    .line 808
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->access$500(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/reflect/WildcardType;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 804
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeFilter$1;->apply(Lcom/google/common/reflect/TypeToken;)Z

    move-result p0

    return p0
.end method
