.class public Lb/a/a/c1/b;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final a:Lb/a/a/c1/c;

.field public static final b:I

.field public static final c:Z

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static volatile h:Z

.field public static i:I

.field public static j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lb/a/a/c1/b;

    invoke-static {v0}, Lb/a/a/c1/c;->b(Ljava/lang/Class;)Lb/a/a/c1/c;

    move-result-object v0

    sput-object v0, Lb/a/a/c1/b;->a:Lb/a/a/c1/c;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lb/a/a/c1/b;->b:I

    .line 3
    sget v0, Lb/a/a/c1/b;->b:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lb/a/a/c1/b;->c:Z

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/16 v0, 0x6c

    .line 7
    sput v0, Lb/a/a/c1/b;->f:I

    .line 8
    sput-boolean v3, Lb/a/a/c1/b;->h:Z

    .line 9
    sput v3, Lb/a/a/c1/b;->i:I

    .line 10
    sput-boolean v3, Lb/a/a/c1/b;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)[I
    .locals 7

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/4 p0, 0x2

    new-array v1, p0, [I

    .line 5
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aput v0, v1, v4

    .line 6
    aget v5, v1, v3

    aget v6, v1, v4

    if-le v5, v6, :cond_0

    new-array v1, p0, [I

    aput v0, v1, v3

    aput v2, v1, v4

    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lb/a/a/c1/b;->a(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    sput v1, Lb/a/a/c1/b;->d:I

    const/4 v1, 0x1

    .line 3
    aget v0, v0, v1

    sput v0, Lb/a/a/c1/b;->e:I

    .line 4
    sget-object v0, Lb/a/a/c1/b;->a:Lb/a/a/c1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init window size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lb/a/a/c1/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lb/a/a/c1/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/c1/c;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lb/a/a/c1/g/c;->b(Landroid/content/Context;)I

    move-result v0

    sput v0, Lb/a/a/c1/b;->f:I

    .line 6
    sget-object v0, Lb/a/a/c1/b;->a:Lb/a/a/c1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS_BAR_HEIGHT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lb/a/a/c1/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/c1/c;->a(Ljava/lang/String;)V

    const/16 v0, 0x1f8

    .line 7
    sput v0, Lb/a/a/c1/b;->g:I

    .line 8
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 9
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 10
    invoke-static {p0}, Lb/a/a/c1/g/c;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lb/a/a/c1/b;->h:Z

    .line 11
    invoke-static {p0}, Lsmartisan/util/NavigationBarHelper;->a(Landroid/content/Context;)I

    move-result p0

    sput p0, Lb/a/a/c1/b;->i:I

    .line 12
    sget-object p0, Lb/a/a/c1/b;->a:Lb/a/a/c1/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATIONBAR showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lb/a/a/c1/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lb/a/a/c1/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/c1/c;->a(Ljava/lang/String;)V

    return-void
.end method
