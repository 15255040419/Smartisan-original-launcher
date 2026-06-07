.class public Lb/a/a/l1/f/b;
.super Ljava/lang/Object;
.source "CalculatorHelper.java"


# static fields
.field public static a:Lb/a/a/l1/f/c;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lb/a/a/l1/f/c;

    invoke-direct {v0, p0}, Lb/a/a/l1/f/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/a/l1/f/b;->a:Lb/a/a/l1/f/c;

    .line 3
    sget-object p0, Lb/a/a/l1/f/b;->a:Lb/a/a/l1/f/c;

    invoke-virtual {p0}, Lb/a/a/l1/f/c;->a()Lb/a/a/l1/f/e;

    move-result-object p0

    .line 4
    sput-object v1, Lb/a/a/l1/f/b;->a:Lb/a/a/l1/f/c;

    .line 5
    invoke-virtual {p0}, Lb/a/a/l1/f/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget p0, p0, Lb/a/a/l1/f/e;->b:I

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    new-instance p0, Lb/a/a/l1/f/a;

    invoke-direct {p0}, Lb/a/a/l1/f/a;-><init>()V

    throw p0
    :try_end_0
    .catch Lb/a/a/l1/f/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v1
.end method
