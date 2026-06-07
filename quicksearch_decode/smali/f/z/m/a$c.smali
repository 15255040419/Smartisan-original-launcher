.class public final Lf/z/m/a$c;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/z/m/a;


# direct methods
.method public constructor <init>(Lf/z/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/m/a$c;->a:Lf/z/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/m/a$c;->a:Lf/z/m/a;

    invoke-virtual {v0}, Lf/z/m/a;->cancel()V

    return-void
.end method
