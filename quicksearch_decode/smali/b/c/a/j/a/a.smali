.class public final Lb/c/a/j/a/a;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/c/a/j/a/a;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lb/c/a/j/a/a;->b:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lb/c/a/j/a/a;->c:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lb/c/a/j/a/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    iput-object v0, p0, Lb/c/a/j/a/a;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb/c/a/j/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/c/a/j/a/a;)Ljava/util/concurrent/ThreadFactory;
    .locals 9

    .line 6
    iget-object v2, p0, Lb/c/a/j/a/a;->a:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lb/c/a/j/a/a;->b:Ljava/lang/Boolean;

    .line 8
    iget-object v5, p0, Lb/c/a/j/a/a;->c:Ljava/lang/Integer;

    .line 9
    iget-object v6, p0, Lb/c/a/j/a/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    iget-object p0, p0, Lb/c/a/j/a/a;->e:Ljava/util/concurrent/ThreadFactory;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    :goto_0
    move-object v1, p0

    if-eqz v2, :cond_1

    .line 12
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move-object v3, p0

    .line 13
    new-instance p0, Lb/c/a/j/a/a$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lb/c/a/j/a/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/c/a/j/a/a;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lb/c/a/j/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lb/c/a/j/a/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/ThreadFactory;)Lb/c/a/j/a/a;
    .locals 0

    .line 4
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ThreadFactory;

    iput-object p1, p0, Lb/c/a/j/a/a;->e:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 5
    invoke-static {p0}, Lb/c/a/j/a/a;->a(Lb/c/a/j/a/a;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method
