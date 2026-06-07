.class public abstract enum Lb/c/a/i/j$d;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/i/j$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/i/j$d;

.field public static final enum b:Lb/c/a/i/j$d;

.field public static final enum c:Lb/c/a/i/j$d;

.field public static final enum d:Lb/c/a/i/j$d;

.field public static final e:Lb/c/a/i/j$d;

.field public static final synthetic f:[Lb/c/a/i/j$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lb/c/a/i/j$d$a;

    const/4 v1, 0x0

    const-string v2, "JAVA6"

    invoke-direct {v0, v2, v1}, Lb/c/a/i/j$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$d;->a:Lb/c/a/i/j$d;

    .line 2
    new-instance v0, Lb/c/a/i/j$d$b;

    const/4 v2, 0x1

    const-string v3, "JAVA7"

    invoke-direct {v0, v3, v2}, Lb/c/a/i/j$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$d;->b:Lb/c/a/i/j$d;

    .line 3
    new-instance v0, Lb/c/a/i/j$d$c;

    const/4 v3, 0x2

    const-string v4, "JAVA8"

    invoke-direct {v0, v4, v3}, Lb/c/a/i/j$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$d;->c:Lb/c/a/i/j$d;

    .line 4
    new-instance v0, Lb/c/a/i/j$d$d;

    const/4 v4, 0x3

    const-string v5, "JAVA9"

    invoke-direct {v0, v5, v4}, Lb/c/a/i/j$d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/i/j$d;->d:Lb/c/a/i/j$d;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/c/a/i/j$d;

    .line 5
    sget-object v5, Lb/c/a/i/j$d;->a:Lb/c/a/i/j$d;

    aput-object v5, v0, v1

    sget-object v1, Lb/c/a/i/j$d;->b:Lb/c/a/i/j$d;

    aput-object v1, v0, v2

    sget-object v1, Lb/c/a/i/j$d;->c:Lb/c/a/i/j$d;

    aput-object v1, v0, v3

    sget-object v1, Lb/c/a/i/j$d;->d:Lb/c/a/i/j$d;

    aput-object v1, v0, v4

    sput-object v0, Lb/c/a/i/j$d;->f:[Lb/c/a/i/j$d;

    .line 6
    const-class v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lb/c/a/i/j$d$e;

    invoke-direct {v0}, Lb/c/a/i/j$d$e;-><init>()V

    invoke-virtual {v0}, Lb/c/a/i/d;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lb/c/a/i/j$d;->c:Lb/c/a/i/j$d;

    sput-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lb/c/a/i/j$d;->d:Lb/c/a/i/j$d;

    sput-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lb/c/a/i/j$d$f;

    invoke-direct {v0}, Lb/c/a/i/j$d$f;-><init>()V

    invoke-virtual {v0}, Lb/c/a/i/d;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lb/c/a/i/j$d;->b:Lb/c/a/i/j$d;

    sput-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Lb/c/a/i/j$d;->a:Lb/c/a/i/j$d;

    sput-object v0, Lb/c/a/i/j$d;->e:Lb/c/a/i/j$d;

    :goto_0
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
    invoke-direct {p0, p1, p2}, Lb/c/a/i/j$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/i/j$d;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/i/j$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/i/j$d;

    return-object p0
.end method

.method public static values()[Lb/c/a/i/j$d;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/i/j$d;->f:[Lb/c/a/i/j$d;

    invoke-virtual {v0}, [Lb/c/a/i/j$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/i/j$d;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/reflect/Type;)Lb/c/a/c/o0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lb/c/a/c/o0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb/c/a/c/o0;->e()Lb/c/a/c/o0$b;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lb/c/a/i/j$d;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/c/a/c/o0$b;->a(Ljava/lang/Object;)Lb/c/a/c/o0$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lb/c/a/c/o0$b;->a()Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lb/c/a/i/j;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
