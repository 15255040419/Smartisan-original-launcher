.class public La/a/f/l$b;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:La/a/f/l;


# direct methods
.method public constructor <init>(La/a/f/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/f/l$b;->a:La/a/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/l$b;->a:La/a/f/l;

    invoke-virtual {v0}, La/a/f/l;->e()V

    return-void
.end method
