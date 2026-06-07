.class public final Lb/a/a/n1/d$i;
.super Ljava/lang/Object;
.source "AgentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static a:Z = false


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lb/a/a/n1/d$i;->a:Z

    return-void
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 1
    sget-boolean v0, Lb/a/a/n1/d$i;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lb/a/a/n1/d$i;->a:Z

    .line 3
    new-instance v0, Lb/a/a/n1/d$i$a;

    invoke-direct {v0, p0}, Lb/a/a/n1/d$i$a;-><init>(I)V

    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
