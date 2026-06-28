.class public Lcom/amap/api/location/CoordinateConverter;
.super Ljava/lang/Object;
.source "CoordinateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/CoordinateConverter$CoordType;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/DPoint;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/location/CoordinateConverter$CoordType;

.field private d:Lcom/amap/api/location/DPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    .line 59
    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    .line 60
    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    .line 67
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized convert()Lcom/amap/api/location/DPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 116
    sget-object v0, Lcom/amap/api/location/a;->a:[I

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v1}, Lcom/amap/api/location/CoordinateConverter$CoordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0, v1}, Lcom/loc/j;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0, v1}, Lcom/loc/j;->b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;

    invoke-static {v0}, Lcom/loc/j;->a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/CoordinateConverter;->a:Lcom/amap/api/location/DPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u6e90\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u6362\u5750\u6807\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->d:Lcom/amap/api/location/DPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object p0

    .line 93
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u4f20\u5165\u5408\u7406\u7eac\u5ea6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bf7\u4f20\u5165\u5408\u7406\u7ecf\u5ea6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4f20\u5165\u7ecf\u7eac\u5ea6\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;
    .locals 0

    monitor-enter p0

    .line 76
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/CoordinateConverter;->c:Lcom/amap/api/location/CoordinateConverter$CoordType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAMapDataAvailable(DD)Z
    .locals 0

    .line 145
    invoke-static {p1, p2, p3, p4}, Lcom/loc/e;->a(DD)Z

    move-result p0

    return p0
.end method
