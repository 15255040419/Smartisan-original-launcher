.class public Lcom/android/quicksearchbox/util/FuzzyTonesHelper;
.super Ljava/lang/Object;
.source "FuzzyTonesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/FuzzyTonesHelper$FuzzyTonesQuery;
    }
.end annotation


# static fields
.field public static final e:Z

.field public static volatile f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lb/a/a/d1/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/d1/b/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ro.debuggable"

    .line 1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/a/a/d1/b/c;

    invoke-direct {v0}, Lb/a/a/d1/b/c;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/util/FuzzyTonesHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b()V

    return-void
.end method

.method public static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    return v0
.end method

.method public static d()Lcom/android/quicksearchbox/util/FuzzyTonesHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    invoke-direct {v1}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;-><init>()V

    .line 5
    sput-object v1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    .line 6
    :cond_0
    sget-object v1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    sget-object v0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->f:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v1}, Lb/a/a/d1/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v2}, Lb/a/a/d1/b/b;->c()Ljava/util/Set;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 16
    sget-boolean v3, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    const-string v4, "FuzzyTonesHelper"

    if-eqz v3, :cond_2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pattern:: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 19
    sget-boolean v3, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    if-eqz v3, :cond_3

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remainSegments:: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_4

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 24
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_5
    sget-boolean v2, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    if-eqz v2, :cond_6

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "matchedSegents:: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_7

    .line 30
    array-length v5, v1

    if-nez v5, :cond_8

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_8
    const/4 p1, 0x0

    .line 32
    :goto_1
    array-length v5, v1

    if-ge p1, v5, :cond_d

    if-nez p1, :cond_9

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 35
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 36
    aget-object v8, v1, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge p1, v8, :cond_a

    .line 38
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 39
    iget-object v9, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v9, v8}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 42
    :cond_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 43
    :cond_c
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 44
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    array-length v5, v1

    if-le p1, v5, :cond_11

    .line 45
    array-length p1, v1

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_11

    if-nez p1, :cond_e

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 50
    iget-object v8, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v8, v7}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 53
    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 54
    :cond_10
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 55
    :cond_11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 57
    :cond_12
    sget-boolean p1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->e:Z

    if-eqz p1, :cond_13

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "results:: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v0
.end method

.method public synthetic a()V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FuzzyTonesHelper_Worker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->c:Landroid/os/HandlerThread;

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->d:Landroid/os/Handler;

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->d:Landroid/os/Handler;

    new-instance v0, Lb/a/a/n1/a;

    invoke-direct {v0, p0}, Lb/a/a/n1/a;-><init>(Lcom/android/quicksearchbox/util/FuzzyTonesHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lb/a/a/t;->a:Landroid/net/Uri;

    new-instance v1, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$a;

    iget-object v2, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->d:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$a;-><init>(Lcom/android/quicksearchbox/util/FuzzyTonesHelper;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lb/a/a/t;->a:Landroid/net/Uri;

    sget-object v3, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$FuzzyTonesQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v1}, Lb/a/a/d1/b/b;->a()V

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v3, v1, v2}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v3, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v3, v2, v1}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v3, v2, v1}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->b:Lb/a/a/d1/b/c;

    invoke-virtual {v3, v1, v2}, Lb/a/a/d1/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    throw v1

    :cond_3
    :goto_1
    return-void
.end method
