.class public Lcom/amap/api/mapcore2d/dq;
.super Ljava/lang/Object;
.source "BasicLogHandler.java"


# static fields
.field protected static a:Lcom/amap/api/mapcore2d/dq;


# instance fields
.field protected b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/dq;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    sget-object v0, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
