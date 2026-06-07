.class public final Lh/a;
.super Lretrofit2/Converter$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a$d;,
        Lh/a$a;,
        Lh/a$c;,
        Lh/a$b;,
        Lh/a$e;,
        Lh/a$f;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lretrofit2/Converter$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lh/o;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lh/o;",
            ")",
            "Lretrofit2/Converter<",
            "Lf/v;",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p3, Lf/v;

    if-ne p1, p3, :cond_1

    .line 2
    const-class p1, Lh/s/t;

    invoke-static {p2, p1}, Lh/q;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lh/a$c;->a:Lh/a$c;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lh/a$a;->a:Lh/a$a;

    :goto_0
    return-object p1

    .line 5
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 6
    sget-object p1, Lh/a$f;->a:Lh/a$f;

    return-object p1

    .line 7
    :cond_2
    iget-boolean p2, p0, Lh/a;->a:Z

    if-eqz p2, :cond_3

    .line 8
    :try_start_0
    const-class p2, Ld/j;

    if-ne p1, p2, :cond_3

    .line 9
    sget-object p1, Lh/a$e;->a:Lh/a$e;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lh/a;->a:Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lh/o;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lh/o;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lf/t;",
            ">;"
        }
    .end annotation

    .line 11
    const-class p2, Lf/t;

    invoke-static {p1}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lh/a$b;->a:Lh/a$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
