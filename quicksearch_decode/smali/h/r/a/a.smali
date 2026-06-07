.class public final Lh/r/a/a;
.super Lretrofit2/Converter$a;
.source "GsonConverterFactory.java"


# instance fields
.field public final a:Lb/c/b/c;


# direct methods
.method public constructor <init>(Lb/c/b/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lretrofit2/Converter$a;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lh/r/a/a;->a:Lb/c/b/c;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lh/r/a/a;
    .locals 1

    .line 1
    new-instance v0, Lb/c/b/c;

    invoke-direct {v0}, Lb/c/b/c;-><init>()V

    invoke-static {v0}, Lh/r/a/a;->a(Lb/c/b/c;)Lh/r/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lb/c/b/c;)Lh/r/a/a;
    .locals 1

    .line 2
    new-instance v0, Lh/r/a/a;

    invoke-direct {v0, p0}, Lh/r/a/a;-><init>(Lb/c/b/c;)V

    return-object v0
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

    .line 3
    iget-object p2, p0, Lh/r/a/a;->a:Lb/c/b/c;

    invoke-static {p1}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p1

    .line 4
    new-instance p2, Lh/r/a/c;

    iget-object p3, p0, Lh/r/a/a;->a:Lb/c/b/c;

    invoke-direct {p2, p3, p1}, Lh/r/a/c;-><init>(Lb/c/b/c;Lb/c/b/m;)V

    return-object p2
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

    .line 5
    iget-object p2, p0, Lh/r/a/a;->a:Lb/c/b/c;

    invoke-static {p1}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p1

    .line 6
    new-instance p2, Lh/r/a/b;

    iget-object p3, p0, Lh/r/a/a;->a:Lb/c/b/c;

    invoke-direct {p2, p3, p1}, Lh/r/a/b;-><init>(Lb/c/b/c;Lb/c/b/m;)V

    return-object p2
.end method
