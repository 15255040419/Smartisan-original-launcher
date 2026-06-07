.class public final Lb/d/a/a/a/a/c/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/a/a/a/c/a$c;,
        Lb/d/a/a/a/a/c/a$d;,
        Lb/d/a/a/a/a/c/a$e;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/io/OutputStream;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:I

.field public f:J

.field public g:I

.field public final h:I

.field public i:J

.field public j:I

.field public k:Ljava/io/Writer;

.field public final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lb/d/a/a/a/a/c/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:J

.field public final o:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/d/a/a/a/a/c/a;->q:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Lb/d/a/a/a/a/c/a$b;

    invoke-direct {v0}, Lb/d/a/a/a/a/c/a$b;-><init>()V

    sput-object v0, Lb/d/a/a/a/a/c/a;->r:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIJI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 2
    iput-wide v2, v0, Lb/d/a/a/a/a/c/a;->i:J

    const/4 v4, 0x0

    .line 3
    iput v4, v0, Lb/d/a/a/a/a/c/a;->j:I

    .line 4
    new-instance v5, Ljava/util/LinkedHashMap;

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v5, v0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    .line 5
    iput-wide v2, v0, Lb/d/a/a/a/a/c/a;->n:J

    .line 6
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lb/d/a/a/a/a/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    new-instance v2, Lb/d/a/a/a/a/c/a$a;

    invoke-direct {v2, p0}, Lb/d/a/a/a/a/c/a$a;-><init>(Lb/d/a/a/a/a/c/a;)V

    iput-object v2, v0, Lb/d/a/a/a/a/c/a;->p:Ljava/util/concurrent/Callable;

    .line 8
    iput-object v1, v0, Lb/d/a/a/a/a/c/a;->a:Ljava/io/File;

    move/from16 v2, p2

    .line 9
    iput v2, v0, Lb/d/a/a/a/a/c/a;->e:I

    .line 10
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    .line 11
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lb/d/a/a/a/a/c/a;->c:Ljava/io/File;

    .line 12
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lb/d/a/a/a/a/c/a;->d:Ljava/io/File;

    move/from16 v1, p3

    .line 13
    iput v1, v0, Lb/d/a/a/a/a/c/a;->h:I

    move-wide/from16 v1, p4

    .line 14
    iput-wide v1, v0, Lb/d/a/a/a/a/c/a;->f:J

    move/from16 v1, p6

    .line 15
    iput v1, v0, Lb/d/a/a/a/a/c/a;->g:I

    return-void
.end method

.method public static a(Ljava/io/File;IIJI)Lb/d/a/a/a/a/c/a;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    if-lez p5, :cond_4

    if-lez p2, :cond_3

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Lb/d/a/a/a/a/c/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lb/d/a/a/a/a/c/a;-><init>(Ljava/io/File;IIJI)V

    .line 10
    iget-object v1, v0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->h()V

    .line 12
    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->g()V

    .line 13
    new-instance v1, Ljava/io/BufferedWriter;

    .line 14
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lb/d/a/a/a/a/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    iput-object v1, v0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 16
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->b()V

    .line 24
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 25
    new-instance v0, Lb/d/a/a/a/a/c/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lb/d/a/a/a/a/c/a;-><init>(Ljava/io/File;IIJI)V

    .line 26
    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a;->i()V

    return-object v0

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxFileCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    return-object p0
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a;I)V
    .locals 0

    .line 2
    iput p1, p0, Lb/d/a/a/a/a/c/a;->m:I

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a;Lb/d/a/a/a/a/c/a$c;Z)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lb/d/a/a/a/a/c/a;->a(Lb/d/a/a/a/a/c/a$c;Z)V

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 32
    invoke-static {p1}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;)V

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lb/d/a/a/a/a/c/a;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->k()V

    return-void
.end method

.method public static synthetic c(Lb/d/a/a/a/a/c/a;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->j()V

    return-void
.end method

.method public static synthetic d(Lb/d/a/a/a/a/c/a;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->f()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lb/d/a/a/a/a/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->i()V

    return-void
.end method

.method public static synthetic f(Lb/d/a/a/a/a/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/a/a/a/c/a;->h:I

    return p0
.end method

.method public static synthetic g(Lb/d/a/a/a/a/c/a;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/a/a/a/c/a;->a:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic l()Ljava/io/OutputStream;
    .locals 1

    .line 1
    sget-object v0, Lb/d/a/a/a/a/c/a;->r:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/d/a/a/a/a/c/a$c;
    .locals 2

    const-wide/16 v0, -0x1

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lb/d/a/a/a/a/c/a;->a(Ljava/lang/String;J)Lb/d/a/a/a/a/c/a$c;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;J)Lb/d/a/a/a/a/c/a$c;
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->a()V

    .line 37
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a;->e(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/a/a/a/c/a$d;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->e(Lb/d/a/a/a/a/c/a$d;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    .line 40
    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    .line 41
    :try_start_1
    new-instance v0, Lb/d/a/a/a/a/c/a$d;

    invoke-direct {v0, p0, p1, v2}, Lb/d/a/a/a/a/c/a$d;-><init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;Lb/d/a/a/a/a/c/a$d;)V

    .line 42
    iget-object p2, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 44
    monitor-exit p0

    return-object v2

    .line 45
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lb/d/a/a/a/a/c/a$c;

    invoke-direct {p2, p0, v0, v2}, Lb/d/a/a/a/a/c/a$c;-><init>(Lb/d/a/a/a/a/c/a;Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    .line 46
    invoke-static {v0, p2}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    .line 47
    iget-object p3, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIRTY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 85
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized a(Lb/d/a/a/a/a/c/a$c;Z)V
    .locals 10

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-static {p1}, Lb/d/a/a/a/a/c/a$c;->a(Lb/d/a/a/a/a/c/a$c;)Lb/d/a/a/a/a/c/a$d;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v1

    if-ne v1, p1, :cond_b

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 53
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    .line 54
    :goto_0
    iget v3, p0, Lb/d/a/a/a/a/c/a;->h:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-static {p1}, Lb/d/a/a/a/a/c/a$c;->b(Lb/d/a/a/a/a/c/a$c;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v0, v2}, Lb/d/a/a/a/a/c/a$d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lb/d/a/a/a/a/c/a$c;->a()V

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    :goto_1
    iget p1, p0, Lb/d/a/a/a/a/c/a;->h:I

    const/4 v2, 0x1

    if-lt v1, p1, :cond_8

    .line 62
    iget p1, p0, Lb/d/a/a/a/a/c/a;->m:I

    add-int/2addr p1, v2

    iput p1, p0, Lb/d/a/a/a/a/c/a;->m:I

    const/4 p1, 0x0

    .line 63
    invoke-static {v0, p1}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    .line 64
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v1, 0xa

    if-eqz p1, :cond_4

    .line 65
    invoke-static {v0, v2}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Z)V

    .line 66
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/d/a/a/a/a/c/a$d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 67
    iget-wide p1, p0, Lb/d/a/a/a/a/c/a;->n:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lb/d/a/a/a/a/c/a;->n:J

    invoke-static {v0, p1, p2}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;J)V

    goto :goto_2

    .line 68
    :cond_4
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    :cond_5
    :goto_2
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 71
    iget-wide p1, p0, Lb/d/a/a/a/a/c/a;->i:J

    iget-wide v0, p0, Lb/d/a/a/a/a/c/a;->f:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_6

    iget p1, p0, Lb/d/a/a/a/a/c/a;->j:I

    iget p2, p0, Lb/d/a/a/a/a/c/a;->g:I

    if-gt p1, p2, :cond_6

    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 72
    :cond_6
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lb/d/a/a/a/a/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_7
    monitor-exit p0

    return-void

    .line 74
    :cond_8
    :try_start_2
    invoke-virtual {v0, v1}, Lb/d/a/a/a/a/c/a$d;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 76
    invoke-virtual {v0, v1}, Lb/d/a/a/a/a/c/a$d;->a(I)Ljava/io/File;

    move-result-object v3

    .line 77
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 78
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object p1

    aget-wide v4, p1, v1

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 80
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object p1

    aput-wide v6, p1, v1

    .line 81
    iget-wide v8, p0, Lb/d/a/a/a/a/c/a;->i:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lb/d/a/a/a/a/c/a;->i:J

    .line 82
    iget p1, p0, Lb/d/a/a/a/a/c/a;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lb/d/a/a/a/a/c/a;->j:I

    goto :goto_3

    .line 83
    :cond_9
    invoke-static {p1}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;)V

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 84
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lb/d/a/a/a/a/c/a$e;
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->a()V

    .line 2
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/a/a/a/c/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 6
    monitor-exit p0

    return-object v1

    .line 7
    :cond_1
    :try_start_2
    iget v2, p0, Lb/d/a/a/a/a/c/a;->h:I

    new-array v8, v2, [Ljava/io/File;

    .line 8
    iget v2, p0, Lb/d/a/a/a/a/c/a;->h:I

    new-array v9, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    .line 9
    :goto_0
    :try_start_3
    iget v4, p0, Lb/d/a/a/a/a/c/a;->h:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v3, v4, :cond_3

    .line 10
    :try_start_4
    iget v1, p0, Lb/d/a/a/a/a/c/a;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/d/a/a/a/a/c/a;->m:I

    .line 11
    iget-object v1, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 12
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lb/d/a/a/a/a/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lb/d/a/a/a/a/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 14
    :cond_2
    new-instance v1, Lb/d/a/a/a/a/c/a$e;

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->e(Lb/d/a/a/a/a/c/a$d;)J

    move-result-wide v6

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object v10

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lb/d/a/a/a/a/c/a$e;-><init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLb/d/a/a/a/a/c/a$e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 15
    :cond_3
    :try_start_5
    invoke-virtual {v0, v3}, Lb/d/a/a/a/a/c/a$d;->a(I)Ljava/io/File;

    move-result-object v4

    .line 16
    aput-object v4, v8, v3

    .line 17
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v9, v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :catch_0
    :goto_1
    :try_start_6
    iget p1, p0, Lb/d/a/a/a/a/c/a;->h:I

    if-lt v2, p1, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    aget-object p1, v9, v2

    if-eqz p1, :cond_5

    .line 20
    aget-object p1, v9, v2

    invoke-static {p1}, Lb/d/a/a/a/a/c/d;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->close()V

    .line 24
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->a:Ljava/io/File;

    invoke-static {v0}, Lb/d/a/a/a/a/c/d;->a(Ljava/io/File;)V

    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 20
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_1
    iget-object v5, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/d/a/a/a/a/c/a$d;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 8
    new-instance v5, Lb/d/a/a/a/a/c/a$d;

    invoke-direct {v5, p0, v4, v6}, Lb/d/a/a/a/a/c/a$d;-><init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;Lb/d/a/a/a/a/c/a$d;)V

    .line 9
    iget-object v7, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v5, v1}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Z)V

    .line 13
    invoke-static {v5, v6}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    .line 14
    invoke-static {v5, p1}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    new-instance p1, Lb/d/a/a/a/a/c/a$c;

    invoke-direct {p1, p0, v5, v6}, Lb/d/a/a/a/a/c/a$c;-><init>(Lb/d/a/a/a/a/c/a;Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    invoke-static {v5, p1}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->k()V

    .line 5
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->j()V

    .line 6
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/d/a/a/a/a/c/a$d;

    .line 10
    invoke-static {v1}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {v1}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v1

    invoke-virtual {v1}, Lb/d/a/a/a/a/c/a$c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/d/a/a/a/a/c/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->a()V

    .line 4
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a;->e(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/a/a/a/a/c/a$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 6
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    :goto_0
    iget v2, p0, Lb/d/a/a/a/a/c/a;->h:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 8
    iget v0, p0, Lb/d/a/a/a/a/c/a;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lb/d/a/a/a/a/c/a;->m:I

    .line 9
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 10
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lb/d/a/a/a/a/c/a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lb/d/a/a/a/a/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_1
    monitor-exit p0

    return v3

    .line 14
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lb/d/a/a/a/a/c/a$d;->a(I)Ljava/io/File;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    :goto_1
    iget-wide v4, p0, Lb/d/a/a/a/a/c/a;->i:J

    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object v2

    aget-wide v6, v2, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lb/d/a/a/a/a/c/a;->i:J

    .line 18
    iget v2, p0, Lb/d/a/a/a/a/c/a;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lb/d/a/a/a/a/c/a;->j:I

    .line 19
    invoke-static {v0}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()J
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lb/d/a/a/a/a/c/a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lb/d/a/a/a/a/c/a;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 2

    .line 2
    iget v0, p0, Lb/d/a/a/a/a/c/a;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 8

    .line 2
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->c:Ljava/io/File;

    invoke-static {v0}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;)V

    .line 3
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/d/a/a/a/a/c/a$d;

    .line 5
    invoke-static {v1}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 6
    :goto_1
    iget v2, p0, Lb/d/a/a/a/a/c/a;->h:I

    if-lt v3, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v4, p0, Lb/d/a/a/a/a/c/a;->i:J

    invoke-static {v1}, Lb/d/a/a/a/a/c/a$d;->d(Lb/d/a/a/a/a/c/a$d;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lb/d/a/a/a/a/c/a;->i:J

    .line 8
    iget v2, p0, Lb/d/a/a/a/a/c/a;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/d/a/a/a/a/c/a;->j:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lb/d/a/a/a/a/c/a$d;->a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V

    .line 10
    :goto_2
    iget v2, p0, Lb/d/a/a/a/a/c/a;->h:I

    if-lt v3, v2, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v1, v3}, Lb/d/a/a/a/a/c/a$d;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;)V

    .line 13
    invoke-virtual {v1, v3}, Lb/d/a/a/a/a/c/a$d;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public final h()V
    .locals 9

    const-string v0, ", "

    .line 1
    new-instance v1, Lb/d/a/a/a/a/c/c;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lb/d/a/a/a/a/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lb/d/a/a/a/a/c/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 8
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    iget v7, p0, Lb/d/a/a/a/a/c/a;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    iget v4, p0, Lb/d/a/a/a/a/c/a;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 12
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lb/d/a/a/a/a/c/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lb/d/a/a/a/a/c/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    iget-object v2, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lb/d/a/a/a/a/c/a;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {v1}, Lb/d/a/a/a/a/c/d;->a(Ljava/io/Closeable;)V

    return-void

    .line 15
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v1}, Lb/d/a/a/a/a/c/d;->a(Ljava/io/Closeable;)V

    .line 19
    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 3
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 4
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lb/d/a/a/a/a/c/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lb/d/a/a/a/a/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 5
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lb/d/a/a/a/a/c/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lb/d/a/a/a/a/c/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 17
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    iget-object v2, p0, Lb/d/a/a/a/a/c/a;->d:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 19
    :cond_1
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->c:Ljava/io/File;

    iget-object v2, p0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/d/a/a/a/a/c/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 20
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 21
    new-instance v0, Ljava/io/BufferedWriter;

    .line 22
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lb/d/a/a/a/a/c/a;->b:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lb/d/a/a/a/a/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    iput-object v0, p0, Lb/d/a/a/a/a/c/a;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/d/a/a/a/a/c/a$d;

    .line 26
    invoke-static {v2}, Lb/d/a/a/a/a/c/a$d;->b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_3

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lb/d/a/a/a/a/c/a$d;->c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lb/d/a/a/a/a/c/a$d;->c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lb/d/a/a/a/a/c/a$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 29
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 30
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lb/d/a/a/a/a/c/a;->j:I

    iget v1, p0, Lb/d/a/a/a/a/c/a;->g:I

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/d/a/a/a/a/c/a;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lb/d/a/a/a/a/c/a;->i:J

    iget-wide v2, p0, Lb/d/a/a/a/a/c/a;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/d/a/a/a/a/c/a;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method
