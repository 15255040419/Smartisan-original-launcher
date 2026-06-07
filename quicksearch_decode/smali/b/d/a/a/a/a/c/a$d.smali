.class public final Lb/d/a/a/a/a/c/a$d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/a/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public c:Z

.field public d:Lb/d/a/a/a/a/c/a$c;

.field public e:J

.field public final synthetic f:Lb/d/a/a/a/a/c/a;


# direct methods
.method public constructor <init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/a/a/a/c/a$d;->f:Lb/d/a/a/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/d/a/a/a/a/c/a$d;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lb/d/a/a/a/a/c/a;->f(Lb/d/a/a/a/a/c/a;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lb/d/a/a/a/a/c/a$d;->b:[J

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;Lb/d/a/a/a/a/c/a$d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lb/d/a/a/a/a/c/a$d;-><init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a$d;J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lb/d/a/a/a/a/c/a$d;->e:J

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a$d;Lb/d/a/a/a/a/c/a$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lb/d/a/a/a/a/c/a$d;->d:Lb/d/a/a/a/a/c/a$c;

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a$d;Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/d/a/a/a/a/c/a$d;->c:Z

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a$d;[Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a$d;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lb/d/a/a/a/a/c/a$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/a/a/a/c/a$d;->c:Z

    return p0
.end method

.method public static synthetic b(Lb/d/a/a/a/a/c/a$d;)Lb/d/a/a/a/a/c/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/a/a/a/c/a$d;->d:Lb/d/a/a/a/a/c/a$c;

    return-object p0
.end method

.method public static synthetic c(Lb/d/a/a/a/a/c/a$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/a/a/a/c/a$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lb/d/a/a/a/a/c/a$d;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/a/a/a/c/a$d;->b:[J

    return-object p0
.end method

.method public static synthetic e(Lb/d/a/a/a/a/c/a$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/d/a/a/a/a/c/a$d;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 4

    .line 12
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/d/a/a/a/a/c/a$d;->f:Lb/d/a/a/a/a/c/a;

    invoke-static {v1}, Lb/d/a/a/a/a/c/a;->g(Lb/d/a/a/a/a/c/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/d/a/a/a/a/c/a$d;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 7

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lb/d/a/a/a/a/c/a$d;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public b(I)Ljava/io/File;
    .locals 4

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/d/a/a/a/a/c/a$d;->f:Lb/d/a/a/a/a/c/a;

    invoke-static {v1}, Lb/d/a/a/a/a/c/a;->g(Lb/d/a/a/a/a/c/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/d/a/a/a/a/c/a$d;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b([Ljava/lang/String;)V
    .locals 5

    .line 2
    array-length v0, p1

    iget-object v1, p0, Lb/d/a/a/a/a/c/a$d;->f:Lb/d/a/a/a/a/c/a;

    invoke-static {v1}, Lb/d/a/a/a/a/c/a;->f(Lb/d/a/a/a/a/c/a;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lb/d/a/a/a/a/c/a$d;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lb/d/a/a/a/a/c/a$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v2
.end method
