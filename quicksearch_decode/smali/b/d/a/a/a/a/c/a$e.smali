.class public final Lb/d/a/a/a/a/c/a$e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/a/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public a:[Ljava/io/File;

.field public final b:[Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lb/d/a/a/a/a/c/a$e;->a:[Ljava/io/File;

    .line 3
    iput-object p6, p0, Lb/d/a/a/a/a/c/a$e;->b:[Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLb/d/a/a/a/a/c/a$e;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p7}, Lb/d/a/a/a/a/c/a$e;-><init>(Lb/d/a/a/a/a/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/a/a/a/c/a$e;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/d/a/a/a/a/c/a$e;->b:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lb/d/a/a/a/a/c/d;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
