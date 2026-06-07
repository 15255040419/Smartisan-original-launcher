.class public Lb/d/a/a/a/a/c/a$c$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/a/a/a/c/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a/a/a/a/c/a$c;


# direct methods
.method public constructor <init>(Lb/d/a/a/a/a/c/a$c;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/a/a/a/c/a$c$a;->a:Lb/d/a/a/a/a/c/a$c;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/a/a/a/c/a$c;Ljava/io/OutputStream;Lb/d/a/a/a/a/c/a$c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lb/d/a/a/a/a/c/a$c$a;-><init>(Lb/d/a/a/a/a/c/a$c;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a$c$a;->a:Lb/d/a/a/a/a/c/a$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/d/a/a/a/a/c/a$c;->a(Lb/d/a/a/a/a/c/a$c;Z)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lb/d/a/a/a/a/c/a$c$a;->a:Lb/d/a/a/a/a/c/a$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/d/a/a/a/a/c/a$c;->a(Lb/d/a/a/a/a/c/a$c;Z)V

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lb/d/a/a/a/a/c/a$c$a;->a:Lb/d/a/a/a/a/c/a$c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/d/a/a/a/a/c/a$c;->a(Lb/d/a/a/a/a/c/a$c;Z)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lb/d/a/a/a/a/c/a$c$a;->a:Lb/d/a/a/a/a/c/a$c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lb/d/a/a/a/a/c/a$c;->a(Lb/d/a/a/a/a/c/a$c;Z)V

    :goto_0
    return-void
.end method
