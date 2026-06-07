.class public La/a/a/c$a;
.super Ljava/lang/Object;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/c;


# direct methods
.method public constructor <init>(La/a/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/c$a;->a:La/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/c$a;->a:La/a/a/c;

    invoke-virtual {v0, p1}, La/a/a/c;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
