.class public final Lb/c/a/i/f;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/i/f$b;,
        Lb/c/a/i/f$a;
    }
.end annotation


# instance fields
.field public final a:Lb/c/a/i/f$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lb/c/a/i/f$a;

    invoke-direct {v0}, Lb/c/a/i/f$a;-><init>()V

    iput-object v0, p0, Lb/c/a/i/f;->a:Lb/c/a/i/f$a;

    return-void
.end method

.method public constructor <init>(Lb/c/a/i/f$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lb/c/a/i/f;->a:Lb/c/a/i/f$a;

    return-void
.end method

.method public synthetic constructor <init>(Lb/c/a/i/f$a;Lb/c/a/i/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/i/f;-><init>(Lb/c/a/i/f$a;)V

    return-void
.end method

.method public static synthetic a(Lb/c/a/i/f;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .line 20
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lb/c/a/i/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 23
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 25
    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lb/c/a/i/j;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 0

    .line 17
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lb/c/a/i/j;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 2
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/c/a/i/f;->a:Lb/c/a/i/f$a;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lb/c/a/i/f$a;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 2

    .line 14
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 16
    new-instance v1, Lb/c/a/i/j$i;

    invoke-virtual {p0, v0}, Lb/c/a/i/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1}, Lb/c/a/i/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lb/c/a/i/j$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 11
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 13
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lb/c/a/i/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
