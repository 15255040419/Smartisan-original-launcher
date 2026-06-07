.class public final enum Lb/c/a/i/j$d$a;
.super Lb/c/a/i/j$d;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lb/c/a/i/j$d;-><init>(Ljava/lang/String;ILb/c/a/i/j$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1

    .line 2
    new-instance v0, Lb/c/a/i/j$c;

    invoke-direct {v0, p1}, Lb/c/a/i/j$c;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/i/j$d$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p1, Lb/c/a/i/j$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/c/a/i/j$c;-><init>(Ljava/lang/reflect/Type;)V

    :cond_0
    return-object p1
.end method
