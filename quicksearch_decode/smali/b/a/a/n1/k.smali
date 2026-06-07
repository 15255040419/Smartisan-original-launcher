.class public Lb/a/a/n1/k;
.super Ljava/lang/Object;
.source "Consumers.java"


# static fields
.field public static a:Lcom/android/quicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/Consumer<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic a()Lcom/android/quicksearchbox/util/Consumer;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/k;->a:Lcom/android/quicksearchbox/util/Consumer;

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;)",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lb/a/a/n1/k$c;

    invoke-direct {v0, p0, p1}, Lb/a/a/n1/k$c;-><init>(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method public static a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/android/quicksearchbox/util/QuietlyCloseable;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;TA;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 7
    invoke-static {p1, p2}, Lb/a/a/n1/k;->a(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lb/a/a/n1/k$b;

    invoke-direct {v0, p1, p2}, Lb/a/a/n1/k$b;-><init>(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;TA;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 5
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lb/a/a/n1/k$a;

    invoke-direct {v0, p1, p2}, Lb/a/a/n1/k$a;-><init>(Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lb/a/a/n1/k$d;

    invoke-direct {v0, p1}, Lb/a/a/n1/k$d;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    sput-object p0, Lb/a/a/n1/k;->a:Lcom/android/quicksearchbox/util/Consumer;

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/android/quicksearchbox/util/QuietlyCloseable;",
            ">(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/util/QuietlyCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/util/QuietlyCloseable;->close()V

    .line 4
    :cond_1
    throw p0
.end method
