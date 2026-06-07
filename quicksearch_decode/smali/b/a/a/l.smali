.class public Lb/a/a/l;
.super Ljava/lang/Object;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l$b;,
        Lb/a/a/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/IconLoader;

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lb/a/a/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/IconLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/l;->a:Lcom/android/quicksearchbox/IconLoader;

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lb/a/a/l;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/util/NowOrLater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lb/a/a/l$a;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lb/a/a/l;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lb/a/a/l;->a(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v1, Lb/a/a/l$a;

    invoke-direct {v1}, Lb/a/a/l$a;-><init>()V

    .line 5
    invoke-virtual {p0, p1, v1}, Lb/a/a/l;->a(Ljava/lang/String;Lb/a/a/l$a;)V

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    new-instance p1, Lb/a/a/l$b;

    invoke-direct {p1, v0}, Lb/a/a/l$b;-><init>(Lcom/android/quicksearchbox/util/NowOrLater;)V

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lb/a/a/l;->a:Lcom/android/quicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lb/a/a/l$a;->a(Lcom/android/quicksearchbox/util/NowOrLater;)V

    .line 10
    invoke-virtual {p0, p1, v1}, Lb/a/a/l;->a(Ljava/lang/String;Lb/a/a/l$a;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_3
    :goto_0
    new-instance p1, Lb/a/a/n1/u;

    invoke-direct {p1, v1}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l;->a:Lcom/android/quicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
