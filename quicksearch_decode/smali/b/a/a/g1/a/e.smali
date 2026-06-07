.class public Lb/a/a/g1/a/e;
.super Lb/a/a/g1/a/g;
.source "CommonSDKAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/g1/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const/4 v7, 0x3

    aput-object v2, v1, v7

    const/4 v8, 0x4

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x5

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x6

    aput-object v2, v1, v10

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    aput-object v4, v0, v7

    const/16 p1, 0x7d00

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v9

    aput-object v4, v0, v10

    const-string p1, "android.view.SurfaceControl"

    const-string p2, "screenshot"

    .line 3
    invoke-static {p1, p2, v1, v0}, Lb/a/a/n1/y;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of p2, p1, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
