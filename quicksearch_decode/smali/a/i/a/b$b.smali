.class public La/i/a/b$b;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/i/a/b;


# direct methods
.method public constructor <init>(La/i/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/i/a/b$b;->a:La/i/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/i/a/b$b;->a:La/i/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/i/a/b;->f(I)V

    return-void
.end method
