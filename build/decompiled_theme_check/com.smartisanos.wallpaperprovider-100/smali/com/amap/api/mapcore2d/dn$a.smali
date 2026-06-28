.class Lcom/amap/api/mapcore2d/dn$a;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ez;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dn$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 251
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dn$a;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/dv;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "LogNetListener"

    const-string v1, "onNetCompleted"

    .line 254
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
