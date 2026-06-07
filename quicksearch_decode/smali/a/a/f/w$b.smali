.class public La/a/f/w$b;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/f/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/f/w;


# direct methods
.method public constructor <init>(La/a/f/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/f/w$b;->a:La/a/f/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/w$b;->a:La/a/f/w;

    invoke-virtual {v0}, La/a/f/w;->c()V

    return-void
.end method
