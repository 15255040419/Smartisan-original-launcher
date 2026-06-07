.class public Lb/a/a/m1/c$a;
.super Ljava/lang/Object;
.source "AsyncDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/m1/c;


# direct methods
.method public constructor <init>(Lb/a/a/m1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/c$a;->a:Lb/a/a/m1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/c$a;->a:Lb/a/a/m1/c;

    invoke-static {v0}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/m1/c$a;->a:Lb/a/a/m1/c;

    invoke-static {v0}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
