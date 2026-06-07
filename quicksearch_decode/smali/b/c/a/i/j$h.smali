.class public final Lb/c/a/i/j$h;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final b:Lb/c/a/c/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/p0<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb/c/a/i/j$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/i/j$g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lb/c/a/i/j$g;

    invoke-static {}, Lb/c/a/c/p0;->g()Lb/c/a/c/p0$b;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lb/c/a/c/p0$b;->a()Lb/c/a/c/p0;

    move-result-object v0

    sput-object v0, Lb/c/a/i/j$h;->b:Lb/c/a/c/p0;

    return-void
.end method

.method public constructor <init>(Lb/c/a/i/j$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/i/j$g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/i/j$h;->a:Lb/c/a/i/j$g;

    return-void
.end method

.method public static synthetic a(Lb/c/a/i/j$h;)Lb/c/a/i/j$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/i/j$h;->a:Lb/c/a/i/j$g;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object p2, Lb/c/a/i/j$h;->b:Lb/c/a/c/p0;

    invoke-virtual {p2, p1}, Lb/c/a/c/p0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lb/c/a/i/j$h;->a:Lb/c/a/i/j$g;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
