.class public La/o/a/b$a;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/o/a/b;


# direct methods
.method public constructor <init>(La/o/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/o/a/b$a;->a:La/o/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/o/a/b$a;->a:La/o/a/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, La/o/a/b;->a(I)V

    return-void
.end method
