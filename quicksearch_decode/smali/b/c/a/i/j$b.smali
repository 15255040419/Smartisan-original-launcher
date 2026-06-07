.class public abstract enum Lb/c/a/i/j$b;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/i/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/i/j$b;

.field public static final enum b:Lb/c/a/i/j$b;

.field public static final c:Lb/c/a/i/j$b;

.field public static final synthetic d:[Lb/c/a/i/j$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/c/a/i/j$b$a;

    const/4 v1, 0x0

    const-string v2, "OWNED_BY_ENCLOSING_CLASS"

    invoke-direct {v0, v2, v1}, Lb/c/a/i/j$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$b;->a:Lb/c/a/i/j$b;

    .line 2
    new-instance v0, Lb/c/a/i/j$b$c;

    const/4 v2, 0x1

    const-string v3, "LOCAL_CLASS_HAS_NO_OWNER"

    invoke-direct {v0, v3, v2}, Lb/c/a/i/j$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$b;->b:Lb/c/a/i/j$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/c/a/i/j$b;

    .line 3
    sget-object v3, Lb/c/a/i/j$b;->a:Lb/c/a/i/j$b;

    aput-object v3, v0, v1

    sget-object v1, Lb/c/a/i/j$b;->b:Lb/c/a/i/j$b;

    aput-object v1, v0, v2

    sput-object v0, Lb/c/a/i/j$b;->d:[Lb/c/a/i/j$b;

    .line 4
    invoke-static {}, Lb/c/a/i/j$b;->a()Lb/c/a/i/j$b;

    move-result-object v0

    sput-object v0, Lb/c/a/i/j$b;->c:Lb/c/a/i/j$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILb/c/a/i/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lb/c/a/i/j$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lb/c/a/i/j$b;
    .locals 7

    .line 1
    new-instance v0, Lb/c/a/i/j$b$d;

    invoke-direct {v0}, Lb/c/a/i/j$b$d;-><init>()V

    const-class v0, Lb/c/a/i/j$b$d;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-static {}, Lb/c/a/i/j$b;->values()[Lb/c/a/i/j$b;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    const-class v5, Lb/c/a/i/j$b$b;

    invoke-virtual {v4, v5}, Lb/c/a/i/j$b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/i/j$b;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/i/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/i/j$b;

    return-object p0
.end method

.method public static values()[Lb/c/a/i/j$b;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/i/j$b;->d:[Lb/c/a/i/j$b;

    invoke-virtual {v0}, [Lb/c/a/i/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/i/j$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
