.class public Lcom/smartisanos/launcher/a/w;
.super Ljava/lang/Object;
.source "DragToSidebar.java"


# static fields
.field private static Aj:Lcom/smartisanos/smengine/a/i;

.field private static Bj:[I

.field private static Cj:Lcom/smartisanos/smengine/a/j;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

.field private static vj:Landroid/graphics/Point;

.field private static xj:Lcom/smartisanos/smengine/a/j;

.field private static yj:Lcom/smartisanos/smengine/a/i;

.field private static zj:Lcom/smartisanos/smengine/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/w;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->vj:Landroid/graphics/Point;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->xj:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->yj:Lcom/smartisanos/smengine/a/i;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->zj:Lcom/smartisanos/smengine/a/i;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->Aj:Lcom/smartisanos/smengine/a/i;

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/smartisanos/launcher/a/w;->Bj:[I

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/a/v;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/v;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/w;->mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Db(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/xa;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static X(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->pp()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    .line 2
    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/a/w;->xj:Lcom/smartisanos/smengine/a/j;

    sget-object v3, Lcom/smartisanos/launcher/a/w;->yj:Lcom/smartisanos/smengine/a/i;

    sget-object v4, Lcom/smartisanos/launcher/a/w;->zj:Lcom/smartisanos/smengine/a/i;

    sget-object v5, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    sget-object v6, Lcom/smartisanos/launcher/a/w;->Bj:[I

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/launcher/view/a/aa;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/j;[I)V

    const/16 v1, 0xa

    new-array v1, v1, [F

    .line 4
    sget-object v2, Lcom/smartisanos/launcher/a/w;->xj:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aput v3, v1, v7

    .line 5
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    .line 6
    sget-object v4, Lcom/smartisanos/launcher/a/w;->vj:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aput v5, v1, v2

    .line 7
    iget v2, v4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/4 v4, 0x3

    aput v2, v1, v4

    const/4 v2, 0x4

    .line 8
    sget-object v5, Lcom/smartisanos/launcher/a/w;->yj:Lcom/smartisanos/smengine/a/i;

    iget v6, v5, Lcom/smartisanos/smengine/a/i;->x:F

    aput v6, v1, v2

    const/4 v2, 0x5

    .line 9
    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    aput v5, v1, v2

    const/4 v2, 0x6

    .line 10
    sget-object v5, Lcom/smartisanos/launcher/a/w;->zj:Lcom/smartisanos/smengine/a/i;

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v2

    const/4 v2, 0x7

    .line 11
    sget-object v5, Lcom/smartisanos/launcher/a/w;->zj:Lcom/smartisanos/smengine/a/i;

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v2

    const/16 v2, 0x8

    .line 12
    sget-object v5, Lcom/smartisanos/launcher/a/w;->yj:Lcom/smartisanos/smengine/a/i;

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    sget-object v6, Lcom/smartisanos/launcher/a/w;->Aj:Lcom/smartisanos/smengine/a/i;

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v2

    const/16 v2, 0x9

    .line 13
    sget-object v5, Lcom/smartisanos/launcher/a/w;->yj:Lcom/smartisanos/smengine/a/i;

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->y:F

    sget-object v6, Lcom/smartisanos/launcher/a/w;->Aj:Lcom/smartisanos/smengine/a/i;

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v2

    .line 14
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/ua;->dispatchTouchEventToSidebar(I[F)V

    if-eq p0, v4, :cond_1

    if-ne p0, v3, :cond_4

    .line 15
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent cause ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] cell to visible true"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "set cell visible ==> true"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_4
    return-void

    .line 18
    :cond_5
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "postTouchPoint err, drag cell is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static ad()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/w;->vj:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->getLastTouchPointForDrag(Landroid/graphics/Point;)V

    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/view/a/g;FF)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    if-nez p0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return by cell is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4
    iget-byte v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return by activity instance is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return v0

    .line 7
    :cond_4
    iget-boolean v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v2, :cond_6

    .line 8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return by app is downloading"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return v0

    .line 9
    :cond_6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return folder is long press"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return v0

    .line 11
    :cond_8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v2

    if-nez v2, :cond_a

    .line 12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar item.iconData == null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_9
    return v0

    .line 13
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/smartisanos/launcher/ua;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return isInSidebarMode is false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    return v0

    .line 16
    :cond_c
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ua;->f(II)[I

    move-result-object v2

    sput-object v2, Lcom/smartisanos/launcher/a/w;->Bj:[I

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v2

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v3, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    .line 19
    sget-object v3, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 20
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    if-nez v2, :cond_d

    .line 23
    iget v2, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v2, v5

    iput v2, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 24
    iget v2, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, v4

    iput v2, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 25
    :cond_d
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 26
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {p1, p2, v4, v5, v2}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p1

    .line 28
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result p2

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result p0

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 32
    sget-object p0, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    iget p2, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iput p2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 33
    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iput p1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    move p0, v0

    move p2, p0

    .line 34
    :cond_e
    invoke-static {p2, p0}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/smartisanos/launcher/a/w;->Db(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_f

    .line 36
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->g(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 37
    :cond_f
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object p0

    .line 38
    sget-object p2, Lcom/smartisanos/launcher/a/w;->Aj:Lcom/smartisanos/smengine/a/i;

    iget v0, v3, Lcom/smartisanos/smengine/a/j;->x:F

    sget-object v2, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v0, v4

    iput v0, p2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 39
    iget v0, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v0, v2

    iput v0, p2, Lcom/smartisanos/smengine/a/i;->y:F

    .line 40
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "launcher"

    const-string v4, "com.smartisanos.launcher"

    .line 42
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v2

    .line 44
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    float-to-int v2, v2

    const-string v4, "dock_height"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "show_bg"

    .line 45
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const-string v2, "transparent_theme"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    sget-object p2, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    const-string v2, "cell_w"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 48
    sget-object p2, Lcom/smartisanos/launcher/a/w;->Cj:Lcom/smartisanos/smengine/a/j;

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    const-string v2, "cell_h"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 49
    iget p2, v3, Lcom/smartisanos/smengine/a/j;->x:F

    const-string v2, "icon_w"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 50
    iget p2, v3, Lcom/smartisanos/smengine/a/j;->y:F

    const-string v2, "icon_h"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    iget-object p2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const-string v2, "cmp"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget p2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const-string v2, "user_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "icon"

    .line 54
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "cell"

    .line 55
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 56
    iget-wide p0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-object p0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string p1, "item_name"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    sget-object p0, Lcom/smartisanos/launcher/a/w;->mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/ua;->iconFloatUpNoticeSidebar(Lcom/android/internal/sidebar/ILauncher;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_10

    const-string p1, "IS_SIDEBAR_ENABLE"

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    .line 60
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    if-eqz p1, :cond_10

    const-string p1, "IS_LEFT_MODE"

    .line 61
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isSidebarLeftMode:Z

    .line 62
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    sput-object p0, Lcom/smartisanos/launcher/a/w;->vj:Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_10
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_11

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Constants.isSidebarEnable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 65
    :cond_11
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    return p0

    .line 66
    :cond_12
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_13

    sget-object p0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeLongPressToSidebar return by item is null or type not match"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    return v0
.end method

.method public static bd()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/a/w;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "noticeSidebarCellUp, set isSidebarEnable to false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    const/16 v0, 0xa

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    const/4 v1, 0x3

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/ua;->dispatchTouchEventToSidebar(I[F)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method
