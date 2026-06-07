.class public Lb/a/a/g1/a/f;
.super Lb/a/a/g1/a/g;
.source "MultiSdkAdapter.java"


# static fields
.field public static d:Lb/a/a/g1/a/f;


# instance fields
.field public a:Lb/a/a/g1/a/e;

.field public b:Lb/a/a/g1/a/c;

.field public c:Lb/a/a/g1/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/a/g1/a/g;-><init>()V

    .line 2
    new-instance v0, Lb/a/a/g1/a/e;

    invoke-direct {v0}, Lb/a/a/g1/a/e;-><init>()V

    iput-object v0, p0, Lb/a/a/g1/a/f;->a:Lb/a/a/g1/a/e;

    .line 3
    new-instance v0, Lb/a/a/g1/a/b;

    invoke-direct {v0}, Lb/a/a/g1/a/b;-><init>()V

    .line 4
    new-instance v0, Lb/a/a/g1/a/c;

    invoke-direct {v0}, Lb/a/a/g1/a/c;-><init>()V

    iput-object v0, p0, Lb/a/a/g1/a/f;->b:Lb/a/a/g1/a/c;

    .line 5
    new-instance v0, Lb/a/a/g1/a/a;

    invoke-direct {v0}, Lb/a/a/g1/a/a;-><init>()V

    .line 6
    new-instance v0, Lb/a/a/g1/a/d;

    invoke-direct {v0}, Lb/a/a/g1/a/d;-><init>()V

    iput-object v0, p0, Lb/a/a/g1/a/f;->c:Lb/a/a/g1/a/d;

    return-void
.end method

.method public static a()Lb/a/a/g1/a/f;
    .locals 2

    .line 1
    const-class v0, Lb/a/a/g1/a/f;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/a/a/g1/a/f;->d:Lb/a/a/g1/a/f;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lb/a/a/g1/a/f;

    invoke-direct {v1}, Lb/a/a/g1/a/f;-><init>()V

    sput-object v1, Lb/a/a/g1/a/f;->d:Lb/a/a/g1/a/f;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lb/a/a/g1/a/f;->d:Lb/a/a/g1/a/f;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lb/a/a/g1/a/f;->c:Lb/a/a/g1/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/g1/a/d;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lb/a/a/g1/a/f;->b:Lb/a/a/g1/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/g1/a/c;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Lb/a/a/g1/a/f;->a:Lb/a/a/g1/a/e;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/g1/a/e;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Z
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x3801

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
