.class public Lb/a/a/n1/d0$d;
.super Ljava/lang/Object;
.source "SidebarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static a:Lb/a/a/n1/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/n1/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/n1/d0;-><init>(Lb/a/a/n1/d0$a;)V

    sput-object v0, Lb/a/a/n1/d0$d;->a:Lb/a/a/n1/d0;

    return-void
.end method

.method public static synthetic a()Lb/a/a/n1/d0;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/d0$d;->a:Lb/a/a/n1/d0;

    return-object v0
.end method
