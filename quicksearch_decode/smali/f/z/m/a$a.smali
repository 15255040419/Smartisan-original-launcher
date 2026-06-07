.class public Lf/z/m/a$a;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/m/a;-><init>(Lf/s;Lf/y;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/z/m/a;


# direct methods
.method public constructor <init>(Lf/z/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/m/a$a;->a:Lf/z/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lf/z/m/a$a;->a:Lf/z/m/a;

    invoke-virtual {v0}, Lf/z/m/a;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lf/z/m/a$a;->a:Lf/z/m/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    :cond_0
    return-void
.end method
