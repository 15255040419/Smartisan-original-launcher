.class public Lb/a/a/o1/c/c;
.super Ljava/lang/Object;
.source "IconImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/o1/c/c$a;
    }
.end annotation


# static fields
.field public static volatile b:Lb/a/a/o1/c/c;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/c/c;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lb/a/a/o1/c/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/a/a/o1/c/c;
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/o1/c/c;->b:Lb/a/a/o1/c/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb/a/a/o1/c/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/a/a/o1/c/c;->b:Lb/a/a/o1/c/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/a/a/o1/c/c;

    invoke-direct {v1, p0}, Lb/a/a/o1/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/a/a/o1/c/c;->b:Lb/a/a/o1/c/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lb/a/a/o1/c/c;->b:Lb/a/a/o1/c/c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 7
    iget-object v0, p0, Lb/a/a/o1/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lb/a/a/o1/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 9
    new-instance v2, Lb/d/a/b/c$a;

    invoke-direct {v2}, Lb/d/a/b/c$a;-><init>()V

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Lb/d/a/b/c$a;->a(Z)Lb/d/a/b/c$a;

    invoke-virtual {v2, v3}, Lb/d/a/b/c$a;->b(Z)Lb/d/a/b/c$a;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-virtual {v2, v3}, Lb/d/a/b/c$a;->a(Landroid/graphics/Bitmap$Config;)Lb/d/a/b/c$a;

    sget-object v3, Lb/d/a/b/j/d;->d:Lb/d/a/b/j/d;

    .line 12
    invoke-virtual {v2, v3}, Lb/d/a/b/c$a;->a(Lb/d/a/b/j/d;)Lb/d/a/b/c$a;

    .line 13
    invoke-virtual {v2, v1}, Lb/d/a/b/c$a;->a(Landroid/graphics/drawable/Drawable;)Lb/d/a/b/c$a;

    new-instance v1, Lb/a/a/o1/c/c$a;

    invoke-direct {v1, v0}, Lb/a/a/o1/c/c$a;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v2, v1}, Lb/d/a/b/c$a;->a(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lb/d/a/b/c$a;

    .line 14
    new-instance v0, Lb/d/a/b/e$a;

    iget-object v1, p0, Lb/a/a/o1/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/d/a/b/e$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v2, v1}, Lb/d/a/b/c$a;->c(Z)Lb/d/a/b/c$a;

    invoke-virtual {v2}, Lb/d/a/b/c$a;->a()Lb/d/a/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/d/a/b/e$a;->a(Lb/d/a/b/c;)Lb/d/a/b/e$a;

    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Lb/d/a/b/e$a;->a(I)Lb/d/a/b/e$a;

    .line 17
    invoke-virtual {v0}, Lb/d/a/b/e$a;->b()Lb/d/a/b/e$a;

    new-instance v1, Lb/d/a/a/a/b/b;

    invoke-direct {v1}, Lb/d/a/a/a/b/b;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lb/d/a/b/e$a;->a(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lb/d/a/b/e$a;

    sget-object v1, Lb/d/a/b/j/g;->b:Lb/d/a/b/j/g;

    .line 19
    invoke-virtual {v0, v1}, Lb/d/a/b/e$a;->a(Lb/d/a/b/j/g;)Lb/d/a/b/e$a;

    invoke-virtual {v0}, Lb/d/a/b/e$a;->a()Lb/d/a/b/e;

    move-result-object v0

    .line 20
    invoke-static {}, Lb/d/a/b/d;->c()Lb/d/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/d/a/b/d;->a(Lb/d/a/b/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 21
    invoke-static {}, Lb/d/a/b/d;->c()Lb/d/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/d/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
